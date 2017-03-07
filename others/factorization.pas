program Factorization;
var n, remainder, divisor: integer;
begin
      writeln('Let''s do some factorization!');
      writeln('-------------------------------');
      writeln;
      write('Enter integer n: ');
      readln(n);
      divisor := 2;
      writeln(n, ' = ');
      repeat
            remainder := n mod divisor;
        if (remainder = 0)
         then begin
         write(divisor, ' x ');
         n := n div divisor;
         divisor := 2;
         end
        else divisor := divisor + 1;
       until (divisor >= n);
       writeln(n);
       readln;
end.

