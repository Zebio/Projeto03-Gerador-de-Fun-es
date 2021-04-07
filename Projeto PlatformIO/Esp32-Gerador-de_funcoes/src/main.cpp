#include <Arduino.h>
#include <math.h>
#include <LiquidCrystal.h>


/*-----------Mapeamento de Hardware---------------*/
#define dac1    26
#define dac2    25
#define t_volta 27
#define t_enter 13
#define t_mais  14
#define t_menos 12
#define lcd_rs  19
#define lcd_en  23
#define lcd_d4  18
#define lcd_d5  17
#define lcd_d6  16
#define lcd_d7  15

#define seno    1
#define dente   2
#define clock   3


/*------Inicialização da biblioteca do display----*/
LiquidCrystal lcd(lcd_rs, lcd_en, lcd_d4, lcd_d5, lcd_d6, lcd_d7);

      
/*---------------Constantes Globais----------------*/
const long double constante_DAC = 255/3.3;
const int tempo_ms=500;
const int teclado_touch[4]= {t_volta,t_enter,t_mais,t_menos};
const int canal1=0;
const int canal2=1;


/*---------------Variáveis Globais----------------*/
double  canal[2],
        amplitude[2]  ={1,   1},
        offset[2]     ={1.65,1.65},
        frequencia[2] ={1,   1},
        radianos[2]   ={0,   0};
int     onda[2]       ={seno,seno};

bool flag_touch;
int tempo_touch;
bool canal_out[2]={0,0};
int botao_pressionado=0;
int estado_menu_principal=canal1;


/*-----------Declaração de Funções---------------*/
void ajuste_canal(int);
void lcd_imprime_canal_parametro(int,int);
void lcd_print_main();
bool le_touch();
long double senoide(int);
long double dente_de_serra(int);


/*------------Configurações Iniciais-------------*/
void setup() {
  //Serial.begin(115200);
  lcd.begin(16, 4);
  lcd.setBacklight(HIGH);
  lcd_print_main();
}


/*-----------------Loop Infinito------------------*/
void loop() {
  /*
  dacWrite(dac1,canal[1]);
  dacWrite(dac1,canal[2]);
  canal[1]=dente_de_serra(canal1)*(constante_DAC);
  canal[2]=senoide(canal2)*(constante_DAC);
  
  delay(1);
  */
  if (le_touch())
  {
    if (botao_pressionado==t_mais||botao_pressionado==t_menos)
      estado_menu_principal=!estado_menu_principal;
    if (botao_pressionado==t_enter)
      ajuste_canal(estado_menu_principal);
    lcd_print_main();
  }
}

/*-----------Implementação das Funções-------------*/
void ajuste_canal (int canal)
{
  int parametro=0;
  lcd_imprime_canal_parametro(canal,parametro);
  while(botao_pressionado!=t_volta)
  {
    if (le_touch())
    {
      if (botao_pressionado==t_mais)
     {
        parametro--;
        if (parametro<0)
          parametro=4;
      }
      if (botao_pressionado==t_menos)
      {
        parametro++;
        if (parametro>4)
          parametro=0;
      }
      lcd_imprime_canal_parametro(canal,parametro);
    }    
  }
}

void lcd_imprime_canal_parametro(int canal,int parametro)

{
  lcd.clear();
  lcd.print("CANAL");
  lcd.setCursor(5,0);
  if (canal==canal1)
    lcd.print("1:");
  else 
    lcd.print("2:");
  lcd.setCursor(0,1);
  switch (parametro)
  {
    case 0:
    lcd.print("Output:");
    lcd.setCursor(7,1);
    if (canal_out[canal])
      lcd.print(" ON");
    else
      lcd.print(" OFF");
    break;
    case 1:
    lcd.print("Onda: ");
    lcd.setCursor(5,1);
    if (onda[canal]==seno)
      lcd.print("    senoide");
    else if (onda[canal]==dente)
      lcd.print("      dente");
    else if (onda[canal]==clock)
      lcd.print("      clock");
    break;
    case 2:
      lcd.print("Offset:        V");
      lcd.setCursor(11,1);
      lcd.print(offset[canal]);
    break;
    case 3:
      lcd.print("Amplitude:     V");
      lcd.setCursor(11,1);
      lcd.print(amplitude[canal]);
    break;
    case 4:
      lcd.print("Freq:         Hz");
      lcd.setCursor(10,1);
      lcd.print(frequencia[canal]);
    break;
  }
}

void lcd_print_main()
{
  lcd.clear();
  lcd.print(" CANAL 1: ");
  lcd.setCursor(11,0);
  if (canal_out[canal1])
    lcd.print("ON");
  else
    lcd.print("OFF");
  
  lcd.setCursor(0,1);
  lcd.print(" CANAL 2: ");
  lcd.setCursor(11,1);
  if (canal_out[canal2])
    lcd.print("ON");
  else
    lcd.print("OFF");
  lcd.setCursor(0,estado_menu_principal);
  lcd.print(">");
}

bool le_touch(){
  if ((millis()-tempo_touch)>=tempo_ms)
  {
    for (int botao=0;botao<4;botao++)
    {
      if ((touchRead(teclado_touch[botao])<35)&&(touchRead(teclado_touch[botao])<35))
      {
        flag_touch=true;
        tempo_touch=millis();
        botao_pressionado=teclado_touch[botao];
        return true;
      }
    }
    return false;
  }
  else if (flag_touch)
  {
    flag_touch=false;
    tempo_touch=millis();
  }
  return false;
}

long double senoide(int canal)
{
  radianos[canal] = radianos[canal] + frequencia[canal]/1000;
  return (offset[canal] + (amplitude[canal] * sin(radianos[canal]*2*PI)));
}

long double dente_de_serra(int canal)
{
  radianos[canal] = radianos[canal] + frequencia[canal]/1000;
  if (radianos[canal]>1000)
    radianos[canal] =0;

  return offset[canal] - amplitude[canal] + 2*amplitude[canal]*radianos[canal]/1000;
}
