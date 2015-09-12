with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Deci_Bin is
   i:Integer;
   numero:Integer;

    dig_binario:array(1..20) of Integer;

begin

   Put_Line(" Convertidor de Decimal a Binario");
   Put_Line("");
   Put_Line("Numero a Convertir: ");
   Get(numero);
   i:=1;
   for i in 1..20 loop
      dig_binario(i):=2;
   end loop;

   while numero/=0 loop
      dig_binario(i):=numero mod 2;
      numero:=numero/2;
      i:=i+1;
   end loop;

   for i in reverse 0..15 loop
      if dig_binario(i)/=2 then
         Put_Line("");
         Put(dig_binario(i));
      end if;
   end loop;


end Deci_Bin;
