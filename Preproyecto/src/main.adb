with Ada.Text_IO,Ada.Integer_Wide_Text_IO,Ada.Numerics.Discrete_Random;
use Ada.Text_IO,Ada.Integer_Wide_Text_IO;

procedure Main is

   subtype rango is Integer range 35..39;
   package randomTemperatura is new Ada.Numerics.Discrete_Random (rango);
   use randomTemperatura;
   Tm: randomTemperatura.Generator;
   ele : Integer;

   subtype rango1 is Integer range 69..76;
   package randomFrecuenciaCardiaca is new Ada.Numerics.Discrete_Random (rango1);
   use randomFrecuenciaCardiaca;
   Fc: randomFrecuenciaCardiaca.Generator;
   ele1 : Integer;

   subtype rango2 is Integer range 11..21;
   package randomFrecuenciaRespiratoria is new Ada.Numerics.Discrete_Random (rango2);
   use randomFrecuenciaRespiratoria;
   Fr: randomFrecuenciaCardiaca.Generator;
   ele2 : Integer;

   subtype rango3 is Integer range 79..91;
   package randomPresionArterialSistolica is new Ada.Numerics.Discrete_Random (rango3);
   use randomPresionArterialSistolica;
   pas: randomPresionArterialSistolica.Generator;
   ele3 : Integer;

   subtype rango4 is Integer range 119..141;
   package randomPresionArterialAsistolica is new Ada.Numerics.Discrete_Random (rango4);
   use randomPresionArterialAsistolica;
   paa: randomPresionArterialAsistolica.Generator;
   ele4 : Integer;


   task Temperatura is
      entry continuar;
   end Temperatura;

   task FrecuenciaCardiaca is
      entry continuar1;
   end FrecuenciaCardiaca;

   task FrecuenciaRespiratoria is
      entry continuar2;
   end FrecuenciaRespiratoria;

   task PresionArterialSistolica is
      entry continuar3;
   end PresionArterialSistolica;

   task PresionArterialAsistolica is
      entry continuar4;
      end PresionArterialAsistolica;

   temp:Integer:=37;

   task body Temperatura is
   begin
   accept continuar do
      Reset(Tm);
      for i in 1..5 loop
         ele:=temp+1;
         temp := Random(Tm);
         if (temp < 36  or temp >38) then
         Put_Line("Temperatura Buena: 37");
         else
            Put_Line("Temperatura Mala: 40");
         end if;
      end loop;
      end continuar;
   end Temperatura;

   frecC:Integer:=73;

   task body FrecuenciaCardiaca  is
   begin
      accept continuar1 do
      Reset(Fc);
      for i in 1..5 loop
         ele1:=frecC+1;
         frecC := Random(Fc);
         if (frecC < 70  or frecC >75) then
         Put_Line("Frecuencia Cardiaca Buena: 73");
         else
            Put_Line("Frecuencia Cardiaca  Mala: 77");
         end if;
         end loop;
      end continuar1;
      Temperatura.continuar;
   end FrecuenciaCardiaca;

   frecR:Integer:=16;

   task body FrecuenciaRespiratoria is
   begin
      accept continuar2 do
      Reset(Fr);
      for i in 1..5 loop
         ele2:= frecR+1;
          frecR:= Random(Fr);
         if ( frecR < 12  or  frecR >20) then
         Put_Line("Frecuencia Respiratoria Buena: 15");
         else
            Put_Line("Frecuencia Respiratoria Mala: 22");
         end if;
      end loop;
      end continuar2;
      FrecuenciaCardiaca.continuar1;
   end FrecuenciaRespiratoria;

   presAs:Integer:=130;

   task body PresionArterialSistolica is
   begin
      accept continuar3 do
      Reset(pas);
      for i in 1..5 loop
         ele3:= presAs+1;
          presAs:= Random(pas);
         if ( presAs < 120 or  presAs >140) then
         Put_Line("Presion Arterial Sistolica Buena: 130");
         else
            Put_Line("Presion Arterial Sistolica Mala: 142");
         end if;
         end loop;
      end continuar3;
      FrecuenciaRespiratoria.continuar2;
   end PresionArterialSistolica;


    presAa:Integer:=85;

   task body PresionArterialAsistolica is
      begin
         accept continuar4 do
      Reset(pas);
      for i in 1..5 loop
         ele4:= presAa+1;
          presAa:= Random(pas);
         if ( presAa < 80 or  presAa >90) then
         Put_Line("Presion Arterial Asistolica Buena: 81");
         else
            Put_Line("Presion Arterial Asistolica Mala: 91");
         end if;
         end loop;
      end continuar4;
      PresionArterialSistolica.continuar3;
   end PresionArterialAsistolica;




begin
   Put_Line("Soy el procedimikento principal");
   PresionArterialAsistolica.continuar4;
end Main;
