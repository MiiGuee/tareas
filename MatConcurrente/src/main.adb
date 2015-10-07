with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   MatA:array(1..4,1..4) of Integer;
   MatB:array(1..4,1..4) of Integer;
   MatC:array(1..4,1..4) of Integer;
  i,j,k: Integer:=0;

   task type Multi is
      entry iniciar(inicioR,finR:Integer);
   end Multi;

   task llenarMat;

   task MultiT is
      entry valor(a,b,val:Integer);
   end MultiT;

   task body llenarMat is
    begin
     for i in 1..4 loop
      for j in 1..4 loop
         MatA(i,j):= 1;
         MatB(i,j):= 1;
         end loop;
     end loop;
   end llenarMat;

   task body Multi is
      sumaRango: Integer:=0;
   begin
      accept iniciar(inicioR:in Integer;finR:in Integer)do
         for i in inicioR..finR loop
            for j in inicioR..finR loop
                for k in inicioR..finR loop
             MatC(i,j) := MatC(i,j) +  MatA(i,k) * MatB(k,j);
                end loop;
         Put_Line("Termino Multi");
            end loop;
         end loop;
      end iniciar;
   end Multi;
   --t1,t2,t3,t4,t5:suma;
   MulIndividuales:array(1..5) of Multi;

   task body MultiT is
      resultado:Integer:=0;
     -- i:Integer:=0;
   begin
      for i in 1..5 loop
         accept valor(a,b,val:Integer) do
            Put_Line("LLego valor");
            MatC(k,i):=val;
         end valor;
      end loop;
      Put_Line("La Matriz total es: ");
      Put_Line("MatC");
      for i in 1..500 loop
         for j in 1..500 loop
            Put(MatC(i,j));
         end loop;
         Put_Line("");
      end loop;
   end MultiT;

begin
   null;
end Main;
