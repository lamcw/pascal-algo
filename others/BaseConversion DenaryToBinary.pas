program BaseConversion_DenaryToBinary;
var
  base2: array[1..16] of integer;
  i, quotient, divisor: integer;
  n, count: integer;
begin
   writeln('Base Conversion');
   writeln('=================================');
   writeln;
   write('Enter n:');
   readln(n);
   write('Enter base:');
   readln(divisor);
   count := 0;  quotient := n;
  repeat
    base2[count+1] := quotient mod divisor;
    quotient := quotient div divisor;
    count := count + 1;
  until ( quotient < 1 );
  for i := count downto 1 do
      write(base2[i]);
      writeln;
  readln;
end.





