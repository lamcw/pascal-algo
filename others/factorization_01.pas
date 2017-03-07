program Factorization;
var n, factor, quotient, remainder, divisor: integer;
begin
      writeln('Let''''s do some factorization!');
      writeln('-------------------------------');
      writeln;
      write('Enter integer n: ');
      readln(n);
      divisor := 2;
      writeln(n, ' = ');
      repeat
            quotient := n div divisor;
            remainder := n mod divisor;
        if (remainder = 0)
         then begin
         write(divisor, ' x ');
         divisor := 2;
         n := n div divisor;
         end
        else divisor := divisor + 1;
       until (divisor >= quotient);
       readln;
end.

