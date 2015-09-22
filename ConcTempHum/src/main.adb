with Ada.Text_IO,Ada.Integer_Wide_Text_IO;
use Ada.Text_IO,Ada.Integer_Wide_Text_IO;

procedure Main is

   task Temperatura;
   task Humedad;
   i:Integer;
   hum:Integer := 30;
   temp:Integer:= 30;

   task body Temperatura is

   begin
      i:=0;
      loop
         i:=i+1;
          Put_Line("Temperatura");
      if (temp < 20 and temp >37) then
      Put_Line("Activar el riego");
         Put_Line("");
         else
            Put_Line("Desactivar el riego");
            Put_Line("");
             exit when i=100;
         end if;
         end loop;



   end Temperatura;

   task body Humedad is

    begin
      i:=0;
      loop
         i:=i+1;
          Put_Line("Humedad");
      if (hum < 20 and hum >40) then
      Put_Line("Activar el riego");
         Put_Line("");
            else
            Put_Line("Desactivar el riego");
            Put_Line("");
            exit when i=100;
         end if;
         end loop;


   end Humedad;

begin
   Put_Line("Este es el procedimiento principal");

end Main;
