 with Ada.Integer_Text_IO, Ada.Text_Io;
use Ada.Integer_Text_IO, Ada.Text_IO;

procedure Deci_Hexa is
   decimal:Integer;
   i,m,cont:Integer;


    dec_hexa: array(0..15) of Character;

begin

   dec_hexa(0..15):=('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   Put(dec_hexa(15));

     Put_Line(" Convertidor de Decimal a Hexadecimal");
   Put_Line("");
   Put_Line("Numero a Convertir: ");
   Get(numero);
   i:=0;
   cont:=0;


   if (numero<=15) then
      Put(dec_hexa(numero));
   else

      if ((m+1) mod 2) = 0 then
         s:=m;
      else
         i:=0;
         s:=m*2;
         s:=s-1;

         for i in reverse 0..s loop
            if dec_hexa(i) = 1 then
               i:=binario(i);
            else
               dec_hexa(i):=0;
            end if;

         end loop;
      end if;

      i:=0;
      cont:=0;
   end if;

end Deci_Hexa;
