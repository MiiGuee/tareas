with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

procedure Main is

    i:Integer:=0;
   numero:Integer:=0;
   arreglo:array(1..1000) of Integer;


   task type tarea;



   task body tarea is
   begin

      numero:=numero+1;
      Put(numero);
   end tarea;


   task primero is
      entry valor(id:Integer);
   end primero;


   task segundo is
       entry valor1(id:Integer);
   end segundo;

    task tercero is
       entry valor2(id:Integer);
   end tercero;

    task cuarto is
       entry valor3(id:Integer);
   end cuarto;

    task quinto is
       entry valor4(id:Integer);
   end quinto;

   task sexto is
       entry valor5(id:Integer);
   end sexto;



   task body primero is
      i:Integer:=0;
   begin
         accept valor(id:Integer) do
         Put("Ya entraron los primeros mil");
         Put(id);
         Put_Line("");
         end valor;
         for i in 1..1000 loop
         arreglo(i):=1;
      end loop;
      primero.valor(1);
   end primero;


   task body segundo is
   begin
      accept valor1(id:Integer) do
         Put("Ya entraron los segundos mil");
         Put(id);
         Put_Line("");
         end valor1;
      for i in 1..1000 loop
         arreglo(i):=1;
      end loop;
      segundo.valor1(1);
   end segundo;

   task body tercero is
   begin
      accept valor2(id:Integer) do
         Put("Ya entraron los terceros mil");
         Put(id);
         Put_Line("");
         end valor2;
       for i in 1..1000 loop
         arreglo(i):=1;
      end loop;
      tercero.valor2(2);
   end tercero;

   task body cuarto is
   begin
      accept valor3(id:Integer) do
         Put("Ya entraron los cuartos mil");
         Put(id);
         Put_Line("");
         end valor3;
      for i in 1..1000 loop
         arreglo(i):=1;
      end loop;
      cuarto.valor3(3);
   end cuarto;

   task body quinto is
   begin
      accept valor4(id:Integer) do
         Put("Ya entraron los quintos mil");
         Put(id);
         Put_Line("");
         end valor4;
      for i in 1..1000 loop
         arreglo(i):=1;
      end loop;
      quinto.valor4(4);
   end quinto;

   task body sexto is
   begin
      accept valor5(id:Integer) do
          Put("El resultado es: ");
         Put(id);
         Put_Line("");
         end valor5;
           for i in 1..1000 loop
         arreglo(i):=1;
      end loop;
         sexto.valor5(5);
      end sexto;




begin
   Put_Line("Soy el procedimiento principal");
   sexto.valor5(1+2+3+4+5);
end Main;
