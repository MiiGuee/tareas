 with Ada.Integer_Text_IO, Ada.Text_Io;
use Ada.Integer_Text_IO, Ada.Text_IO;

procedure Deci_Hexa is

   b,i,j,numero:Integer;

    arreglo:array(0..19) of integer;
    dec_hexa: array(0..15) of Character;

begin

   dec_hexa(0..15):=('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
  -- Put(dec_hexa(15));

   Put_Line(" Convertidor de Decimal a Hexadecimal");
   Put_Line("");
   Put_Line("Numero a Convertir: ");
   Get(numero);
   i:=0;
   j:=0;
   if (numero<=15) then
      Put(dec_hexa(numero));
   else
      while(numero/=0) loop
        arreglo(i):=numero mod 16;
        numero:=numero/16;
        i:=i+1;
      end loop;
      b:=i;
      for i in reverse 0..b-1 loop
         j:=arreglo(i);
         put(dec_hexa(j));
      end loop;
   end if;


end Deci_Hexa;
