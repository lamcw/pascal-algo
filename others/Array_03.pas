program Array_01;
const N = 5;
var a: array[1..N] of integer;
    i, sum, max, min: integer;
    average: real;
begin
    for i := 1 to N do begin
       write('a[',i,']=');
       readln(a[i]);
    end;
    sum := 0;
    for i := 1 to N do
        sum := sum + a[i];
    average := sum / N;
    max := a[1];
    for i := 1 to N do
        if (max < a[i])
        then max:= a[i];
    min := a[1];
    for i := 2 to N do
        if (min > a[i])
        then min:= a[i];
    writeln('Sum of ',N,' integers = ',sum);
    writeln('Average of ',N,' intergers = ',average:0:2);
    writeln('Max. no. of ',N,' integers = ',max);
    writeln('Min. no. of ',N,' integers = ',min);
    readln;
end.
