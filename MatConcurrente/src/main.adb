with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   MatA:array(1..500,1..500) of Integer;
   MatB:array(1..500,1..500) of Integer;
   MatC:array(1..500,1..500) of Integer;
   mul,i,j,k: Integer:=0;

   task type Multi is
      entry iniciar(inicioR,finR:Integer);
   end Multi;

   task llenarMat;

   task MatL is
      entry valor(val:Integer);
   end MatL;

   task body llenarMat is
    begin
     for i in 1..500,1..500 loop
      for j in 1..500,1..500 loop
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
               mul:=0;
                for k in inicioR..finR loop
            mul:=MatA(k,j) + MatB(j,i)+ mul;
                end loop;
         Put_Line("Termino Multi");
               MatL.valor(k,i,mul);
            end loop;
         end loop;
      end iniciar;
   end Multi;
   --t1,t2,t3,t4,t5:suma;
   MulIndividuales:array(1..5) of Multi;

   task body MatL is
      resultado:Integer:=0;
   begin
      for i in 1..5 loop
         accept valor(val:Integer) do
            Put_Line("LLego valor");
            MatC(val):=val;
         end valor;
      end loop;
      Put_Line("La Matriz total es: ");
      for i in 1..5 loop
         for j in 1..5 loop
            Put(MatC(i,j));
         end loop;
         Put_Line("");
      end loop;
   end MatL;

begin
   Put_Line("Multiplicaciòn de Matrices");
   for i in 1..5 loop
         MulIndividuales(i).iniciar(i,5);
      end loop;
   null;
end Main;
