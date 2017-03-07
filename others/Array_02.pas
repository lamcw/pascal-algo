program Array_02;
const
   N = 10;
var
   i: integer;
   a: array[1..N] of integer;
   sum: integer;
   average: real;
begin
    for i := 1 to N do begin
      write('a[',i,'] = ');
      readln(a[i]);
    end;
    sum := 0;
    for i :=1 to N do
        sum := sum + a[i];
    average := sum DIV N;
    writeln('Sum = ', sum);
    writeln('Average = ',average:0:2);
    readln;
end.
