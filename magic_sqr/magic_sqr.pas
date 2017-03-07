program Magic_Square;

const SIZE = 17;                   {for optimal viewing experience, rows and}
                                   {columns cannot be larger than 17}
var n: integer;
    magic: array[1..SIZE,1..SIZE] of integer;
    row_sum, col_sum: array[1..SIZE] of integer;
    diag_sum: array[1..2] of integer;
    option: char;

procedure Initialisation;
var i, j: integer;
begin
   for i := 1 to SIZE do           {set all 'slots' in table to be 0}
      for j := 1 to SIZE do
         magic[i, j] := 0;

   for i := 1 to SIZE do           {reset all sum to 0}
      row_sum[i] := 0;             {otherwise there is increment in every 'run'}
                                   {   <--------------|   }
   for j := 1 to SIZE do           {                  |   }
      col_sum[j] := 0;             {                  |   }
                                   {                  |   }
   diag_sum[1] := 0;               {                  |   }
   diag_sum[2] := 0;               {   <--------------    }

   writeln('Magic Square Program');
   writeln('====================='); writeln;
end;

procedure Input_Parameter;
begin
   repeat
      write('Enter row and columns(odd number) : ');readln(n);
   until (n >= 0) and odd(n);      {Check if the input number is positive and odd}
end;

procedure Construct_Magic_Square(x: integer);
var i, j, value: integer;
begin
   i := 1;                         {set i to 1st row}
   j := (n + 1) div 2;             {set j to middle of table}
   value := 0;
      repeat
         value := value + 1;       {counter increment}
            begin
               magic[i, j] := value;
               i := i - 1;
               j := j - 1;
            end;
            begin
               if (i = 0) and (j <> 0) then     {if in zone 3}
                  i := x
               else
               if (j = 0) and (i <> 0) then     {if in zone 2}
                  j := x
               else
               if (i = 0) and (j = 0) then      {if in zone 1}
                  begin
                     i := 2;
                     j := 1;
                  end;
               if magic[i,j] <> 0  then         {if in zone 4}
                  begin
                  i := i + 2;
                  j := j + 1;
                  end;
            end;
until value > sqr(x);
end;

procedure Find_All_Sum(x: integer);                  {addition process of every}
var i, j: integer;                                   {sum}
begin
   for i := 1 to x do
      begin
         for j := 1 to x do
            row_sum[i] := row_sum[i] + magic[i,j];
      end;

   for j := 1 to x do
      begin
         for i := 1 to x do
            col_sum[j] := col_sum[j] + magic[i,j];
      end;

   for i := 1 to x do
      diag_sum[1] := diag_sum[1] + magic[i, j - 1];

   for j := 1 to x do
      diag_sum[2] := diag_sum[2] + magic[i - 1, j];
end;

procedure Display_Magic_Square(x: integer);
var i, j: integer;
begin
   writeln;
   for j := 1 to x do      {Display a continuous set ofhorizontal line above}
      begin                {the table}
         write('-----');
      end;
   writeln('   ',diag_sum[2]); {Display diag_sum---summing up from lower left hand}
                               {to higher right hand corner number}
   for i :=  1 to x do
      begin
         for j := 1 to x do
            begin
               write('|',magic[i,j]:4); {Occupy 4 space for each number}
            end;
         writeln('|  ', col_sum[x]);    {Display sum of whole column}
      end;

   for j:= 1 to x do
      begin
         write('-----');   {Display horizontal line under the table}
      end;
   writeln;
   write(diag_sum[1]:5);   {Lower right hand corner diag_sum}

   for j := 1 to x do
      begin
         write(row_sum[x]:5);
      end;

   writeln;
   write('Continue or not? ( Y or N ) ==> '); readln(option);
end;

begin
   repeat
      Initialisation;
      Input_Parameter;
      Construct_Magic_Square(n);
      Find_All_Sum(n);
      Display_Magic_Square(n);
   until option in ['N', 'n'];
end.
