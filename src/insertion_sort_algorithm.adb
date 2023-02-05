with Ada.Text_IO; use Ada.Text_IO;

package body Insertion_Sort_Algorithm is

   procedure Sort (Arr : in out Sort_Array) is
      Temp_Index : Index;
      Value : Elements;

   begin
      for I in Index'First .. Index'Last loop
         Value := Arr (I);
         Temp_Index := I;
         while Temp_Index > Index'First and
            then Value < Arr (Temp_Index - 1) loop
               Arr (Temp_Index) := Arr (Temp_Index - 1);
               Temp_Index := Temp_Index - 1;
         end loop;
         Arr (Temp_Index) := Value;
      end loop;
   end Sort;

   procedure Print_Array (Arr : Sort_Array) is
   begin
      for I in Index loop
         Put (Elements'Image (Arr (I)));
      end loop;
      New_Line;
   end Print_Array;

end Insertion_Sort_Algorithm;