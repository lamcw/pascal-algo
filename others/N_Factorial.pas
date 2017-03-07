program N_Factorial;
var n, r, row, i, j: integer;

function factorial(x:integer): real;
var i :integer;
     temp:real;
begin
   temp := 1;
   for i := x downto 1 do
      temp := temp * i;
   factorial := temp;
end;

function xCy(x,y: integer): real;
var x_fact, y_fact, xy_fact: real;
begin
    x_fact := factorial(x);
    y_fact := factorial(y);
    xy_fact := factorial(x-y);
    xCy := x_fact / ( y_fact * xy_fact);
end;

begin
  write('No of rows: '); readln(row);
  for i := 0 to row do begin
      n := i;
      write(' ':(row + 1 - i) * 3);
      for j := 0 to i do begin
          r := j;
          write(xCy( n , r ):6:0);
      end;
      writeln;
  end;
  readln;
end.

