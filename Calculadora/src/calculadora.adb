with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Integer_Text_IO;
use Ada.Text_IO;

procedure Calculadora is

   opc,numero,numero2,Suma,Resta,Multi,Div:Integer;
begin
   Get(opc);
   if opc = 1 then
      Put("SELECCIONASTE SUMA");
      Put_Line("");
   Put_Line("Da el valor del primer numero:");
   Get(numero);
      numero := numero;
      Put_Line("Da el valor del segundo numero:");
   Get(numero2);
   Suma:= numero + numero2;
      Put("La Suma es:");
      Put(Suma);

   end if;

   if opc= 2 then
      Put("SELECCIONASTE RESTA");
      Put_Line("");
   Put_Line("Da el valor del primer numero:");
   Get(numero);
      numero := numero;
      Put_Line("Da el valor del primer numero:");
   Get(numero2);
   Resta:= numero - numero2;
      Put("La Resta es:");
      Put(Resta);
   end if;

   if opc= 3 then
      Put("SELECCIONASTE MULTIPLICACION");
      Put_Line("");
   Put_Line("Da el valor del primer numero:");
   Get(numero);
      numero := numero;
      Put_Line("Da el valor del segundo numero:");
   Get(numero2);
   Multi:= numero * numero2;
      Put("La Multiplicacion es:");
      Put(Multi);
   end if;

   if opc= 4 then
      Put("SELECCIONASTE DIVISIÓN");
      Put_Line("");
   Put_Line("Da el valor del primer numero:");
   Get(numero);
      numero := numero;
      Put_Line("Da el valor del segundo numero:");
   Get(numero2);
      Div:= numero / numero2;
      if numero = 0 then
         Put("No hay división entre 0");
      else
         Put("La Div es:");
         Put(Div);
         end if;


   end if;



end Calculadora;
