program Summation;
var n: integer;
function sum(x: integer): integer;
var i, temp: integer;
begin
   temp := 0;
   for i := 1 to x do
      temp := temp + sqr(i);
   sum := temp;
   end;
begin
   write('Write n: ');
   readln(n);
   writeln('Sum of ',n,' Squares is ', sum(n));
   readln;
end.
