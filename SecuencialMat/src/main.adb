with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

procedure Main is

   MatA:array(1..500,1..500) of Integer;
   MatB:array(1..500,1..500) of Integer;
   MatC:array(1..500,1..500) of Integer;

   i,j,k,multiplicacion:Integer:=1;

begin

   for i in 1..500 loop
     for j in 1..500  loop
         MatA(i,j):= 1;
          MatB(i,j):= 1;
     end loop;
   end loop;

   for i in 1..500 loop
      for j in 1..500  loop
      MatC(i,j):= 0;
      end loop;
   end loop;

   for i in 1..500 loop
     for j in 1..500  loop
         Put(MatA(i,j));
     end loop;
      Put_Line("");
   end loop;

   Put_Line("Mat B");
   for i in 1..500 loop
     for j in 1..500  loop
         Put(MatB(i,j));
     end loop;
      Put_Line("");
   end loop;

   for i in 1..500 loop
     for j in 1..500 loop
         for k in 1..500  loop
            MatC(i,j):= MatC(i,j) + MatA(i,j) * MatB(i,j);
         end loop;
     end loop;
   end loop;

   Put_Line("Mat C");
   for i in 1..500 loop
      for j in 1..500 loop
        Put(MatC(i,j));
      end loop;
      Put_Line("");
   end loop;


end Main;
