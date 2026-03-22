#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
#include <Keypad.h>


#define relay_delay 80
#define relay_pause 500
#define SPLASH_DELAY 2000
#define maxA 16
#define maxB 8

#define UART_RATE 57600

const byte ROWS = 4;
const byte COLS = 4;

int line;
int symbol;
char state;
int stateN;
int VorstateN;
bool mayBlink;
bool mayWrite;

int pressed;
int state10;
int state01;
int Pr;
int Pot;
int OK;
int OKbefore;

char hexaKeys[ROWS][COLS] = 
{
  {'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};

byte rowPins[ROWS] = {6, 7, 8, 9};
byte colPins[COLS] = {2, 3, 4, 5};

Keypad customKeypad = Keypad(makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS);

LiquidCrystal_I2C lcd(0x27, 16, 2);  


//arrays store information about relays states
  int myCase[16][14] =
  {
    
//   P1  P2  Sh  1   21  22  31  32  41  42  51  52  6   Cc
    {1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0},
    {1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1},
    {1,  0,  0,  0,  1,  0,  1,  1,  1,  1,  1,  1,  1,  1},
    {1,  0,  1,  0,  1,  0,  1,  0,  1,  1,  1,  1,  1,  0},
    {1,  0,  1,  0,  1,  1,  1,  0,  1,  0,  1,  1,  1,  1},
    {1,  0,  1,  0,  0,  1,  1,  0,  1,  1,  1,  0,  1,  1},
    {1,  0,  1,  0,  1,  0,  0,  1,  1,  1,  1,  1,  1,  0},
    {1,  0,  1,  0,  1,  1,  0,  1,  0,  1,  1,  1,  1,  1},
    {1,  0,  1,  0,  0,  1,  0,  1,  1,  1,  0,  1,  1,  1},
    {1,  0,  1,  0,  1,  0,  1,  1,  1,  1,  1,  1,  1,  0},
    {1,  0,  1,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1},
    {1,  0,  1,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1},
    {1,  0,  1,  0,  1,  1,  1,  0,  1,  1,  1,  1,  0,  1},
    {1,  0,  1,  0,  1,  1,  1,  0,  1,  1,  1,  1,  0,  1},
    {1,  0,  1,  0,  1,  1,  1,  0,  1,  1,  1,  1,  0,  1},
    {1,  0,  1,  0,  1,  1,  1,  0,  1,  1,  1,  1,  0,  1}
  };

//                     p1  p2  Sh  1   21  22  31  32  41  42  51  52  6   Cc
  int relaypins[14] = {40, 38, 34, 37, 35, 33, 41, 39, 27, 25, 31, 29, 23, 36};

//B-modul              S3  K1  K2  K3  K4  K5
  int relaypinsB[6] = {32, 30, 28, 26, 24, 22};

  int relaystatesB[6][8] = 
  {
    {1, 0, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1, 1, 0},
    {1, 1, 1, 1, 1, 1, 0, 1},
    {1, 1, 1, 1, 1, 0, 1, 1},
    {1, 1, 1, 1, 0, 1, 1, 1},
    {1, 1, 1, 0, 1, 1, 1, 1}
  };

// ==================================================================================================================
// Setup funtion
void setup()
{
  // Serial debug
  Serial.begin(UART_RATE);
  // Variables init
  symbol = 11;
  state = 'A';
  VorstateN = 0;
  stateN = VorstateN;
  mayBlink = true;
  mayWrite = false;
  OK = true;
  //
  // LCD init
  lcd.init(); 
  lcd.init(); 
  lcd.backlight();
  //
  lcd.clear();
  lcd.setCursor(0, 0); 
  lcd.print("EN61851-1 Tester");
  lcd.setCursor(0, 1); 
  lcd.print("for CP & PP v1.0");
  delay(SPLASH_DELAY);
  //
  lcd.clear();
  lcd.setCursor(0, 0); 
  lcd.print("Test case: ");  
  lcd.setCursor(11, 0); 
  //
  // Relays setup
  for(int i=22; i<=41; i++)
  {
    digitalWrite(i, HIGH);
    pinMode(i,OUTPUT);
  }

  // poti setup
  for(int i=11; i<=13; i++)
  {  
    pinMode(i,OUTPUT);
    digitalWrite(i, LOW);
  }

  digitalWrite(13, HIGH);
  delay(20);
  digitalWrite(13, LOW);
  digitalWrite(11, HIGH);
/*
  for(int i=0; i<=120; i++)
  {
    digitalWrite(12, HIGH);
    delay(500);
    digitalWrite(12, LOW);
  }
*/

  //Switch M - swiches between B1,B2 and B3..B8
  pinMode(A1,INPUT);
}

//=============================================================================================================================
//turns relays on and off
//=============================================================================================================================
void relay()
{
  screenclean();
  lcd.print(">");
  
  // State A  
  if(state == 'A' && stateN >= 1 && stateN <= 16)
  { 
    for(int i=22; i<=32; i = i+2)
    {
      digitalWrite(i, 1);
      delay(relay_delay);
    }
     
    for(int i=0; i<14; i++)
    {
      digitalWrite(relaypins[i], myCase[stateN-1][i]);
      delay(relay_delay);
      lcd.setCursor(symbol, 1);
      lcd.print("=>");
      symbol++;
    }
    
    // Poti reset    
    Pot = 1300;
    if (stateN == 16)
    {
      Pot = 200;
    }
    
    Pr = 2;
    screenclean();
    lcd.print("*OK*");
    if (stateN >= 13)
    {
      delay(relay_pause);
    }
  }
  //==================================================
  // State B  
  else if (state == 'B' && stateN >= 1 && stateN <= 8)
  {
    for(int i=0; i<14; i++)
    {
      digitalWrite(relaypins[i], 1);
      delay(relay_delay);
    }
    for(int i=0; i<8; i++)
    {
      digitalWrite(relaypinsB[i], relaystatesB[i][stateN-1]);
      delay(relay_delay);
      lcd.setCursor(symbol, 1);
      lcd.print("=>");
      symbol++;
    }  
    screenclean();
    lcd.print("*OK*");
    OKbefore = 0;
  }
  else
  { 
    screenclean();
    lcd.print("*Wrong number*");
  }
}


//=============================================================================================================================
//=============================================================================================================================
void screenclean()
{
  lcd.setCursor(0, 1);
  lcd.print("                ");
  lcd.setCursor(0, 1); 
}


// ============================================================================================================================
// Loop funtion
void loop()
{
  //debug settings
  /*
  Serial.print(state10);
  Serial.print(".");
  Serial.print(state01);
  Serial.print("_");
  Serial.print(symbol);  
  Serial.print("_");
  Serial.print(pressed);
  Serial.print("_");
  Serial.print(state);
  Serial.println(stateN); 
  Serial.print(digitalRead(52));
  Serial.print("_");
  Serial.println(analogRead(A1));
  */

  char customKey = customKeypad.getKey();

  switch(symbol)
  {
    case 13:
      mayWrite = true;
      break;
    case 12:
      mayWrite = true;
      break;   
    case 11:
      mayBlink = true;
      mayWrite = false;
      break;
    default:
      mayWrite = false;
      mayBlink = false;
      break;
  }


  if(mayWrite == true || mayBlink == true)
  {
    lcd.blink();
  }
  else
  {
    lcd.noBlink();
  }
  

  //==================================
  // different cases when a key is pressed
  if (customKey)
  {  
    //screen cleaning options
    if(customKey == '*' || customKey == 'A' || customKey == 'B') 
    {
      if(customKey == 'A')
      {
        state = 'A';
      }
      else if(customKey == 'B')
      {
        state = 'B';  
      }

      lcd.clear();
      lcd.setCursor(0, 0); 
      lcd.print("Test case: ");
      lcd.print(state);
      lcd.setCursor(12, 0); 
      symbol = 12;
      state10 = 0;
      state01 = 0;
      stateN = 0;
    }
    
    // Enter options
    else if (customKey == '#' || customKey == 'C' || customKey == 'D')
    { 
   
      symbol = 0;

      // defines int VorstateN and understends what value the digits have
      if(pressed > 0 && state01 == 0)
      {
        VorstateN = state10;     
      }
      else
      {
        VorstateN = state10 * 10 + state01;
      }

    
      if(customKey == '#')
      {
        stateN = VorstateN;
      }
    
      else if(customKey == 'C' && stateN > 1)
      {
        stateN = stateN - 1;  
      }
    
      else if(customKey == 'D')
      {
        if (state == 'A' && stateN < maxA || state == 'B' && stateN < maxB )
        {
          stateN = stateN + 1;
        }
      }
      
      else
      {
        stateN = 1;  
      }
      
      
      Serial.println(stateN);
      
      lcd.setCursor(11, 0); 
      lcd.print("   ");
      lcd.setCursor(11, 0); 
      lcd.print(state);
      lcd.print(stateN);
      relay();
    }

  //Char into int 
  else if(mayWrite == true)
    {
      switch(customKey)
      {
        case '0':
          pressed = 0;
          break; 
        case '1':
          pressed = 1;
          break;
        case '2':
          pressed = 2;
          break;   
        case '3':
          pressed = 3;
          break;
        case '4':
          pressed = 4;
          break; 
        case '5':
          pressed = 5;
          break; 
        case '6':
          pressed = 6;
          break; 
        case '7':
          pressed = 7;
          break; 
        case '8':
          pressed = 8;
          break; 
        case '9':
          pressed = 9;
          break; 
      }

      //defines first and second digits of case nummber
      switch(symbol)
      {
        case 12:
          state10 = pressed;
          break;
        case 13:
          state01 = pressed;
          break;
      }

      //prints symbol and moves the cursor
      lcd.setCursor(symbol, 0); 
      lcd.print(customKey);          
      symbol = symbol + 1;
    }
    
    else if (state == 'A' && stateN >= 3 && stateN <= 16)
    {
      if (customKey == '0' && Pr != 2)
      {
        digitalWrite(relaypins[0], 1);
        delay(relay_delay);
        digitalWrite(relaypins[1], 0);
        delay(relay_delay);
        Pr = 2;
      }
      else if (customKey == '0' && Pr != 3)
      {
        digitalWrite(relaypins[0], 0);
        delay(relay_delay);
        digitalWrite(relaypins[1], 1);
        delay(relay_delay);
        Pr = 3;
      }
      else if (customKey == '1' && stateN >= 13)
      {
        digitalWrite(11, HIGH);
        digitalWrite(12, HIGH);
        delay(20);
        digitalWrite(12, LOW);
        Pot = Pot - 100;
      }
      else if (customKey == '2' && stateN >= 13)
      {
        digitalWrite(11, LOW);
        digitalWrite(12, HIGH);
        delay(20);
        digitalWrite(12, LOW); 
        Pot = Pot + 100;
      }
    }
  }

  
  if (state == 'A' && stateN >= 3 && stateN <= 16)
  {
    if (stateN <= 12)
    {
      lcd.setCursor(5, 1); 
      lcd.print("Pr=");
      lcd.print(Pr);
    }
    if(stateN >= 13)
    {
      lcd.setCursor(0,1); 
      lcd.print("** Pr=");
      lcd.print(Pr);
      lcd.print(" P1=");
      lcd.print(Pot);
      lcd.print("      ");
    }
  }
  
  if(state == 'B' && stateN >= 1 && stateN <= 8)
  {
    if (stateN <= 2)
    {
      if (analogRead(A1) <= 60)
      {
        OK = 1;
      }
      else
      {
        OK = 2;
      }
    }
    else if (stateN >= 3)
    {
      if (analogRead(A1) >= 60)
      {
        OK = 1;
      }
      else
      {
        OK = 2;
      }
    }
    if (OKbefore != OK)
    {
      screenclean();
      if (OK == 1)
      {
        lcd.print("*OK*");
      }
      else
      {
        lcd.print("Switch is Wrong");
      }
    }
    OKbefore = OK;
  }
}
