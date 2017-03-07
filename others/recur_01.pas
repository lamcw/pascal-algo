program Find_Factorial_01;
var n : integer;

function factorial(x: integer):integer;
begin
  if ( x > 0 )
  then factorial := x * factorial(x-1)
  else factorial := 1;
end;

begin
  write('n: ');
  readln(n);
  writeln(n,'! = ', factorial(n));
  readln;
end.

