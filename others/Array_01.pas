program Array_01;
const
     PI = 3.14159;
var
     i: integer;
     a: array[1..10] of integer;
     sum: integer;
     average: real;
begin
     a[1] := 100;
     a[2] := 90;
     a[3] := 80;
     a[4] := 70;
     a[5] := 60;
     a[6] := 50;
     a[7] := 40;
     a[8] := 30;
     a[9] := 20;
     a[10] := 10;
     sum := a[1] + a[2] + a[3] + a[4] + a[5];
     sum := sum + a[6] + a[7] + a[8] + a[9] + a[10];
     average := sum / 10;
     writeln('a[1] = ', a[1]);
     writeln('a[2] = ', a[2]);
     writeln('a[3] = ', a[3]);
     writeln('a[4] = ', a[4]);
     writeln('a[5] = ', a[5]);
     writeln('a[6] = ', a[6]);
     writeln('a[7] = ', a[7]);
     writeln('a[8] = ', a[8]);
     writeln('a[9] = ', a[9]);
     writeln('a[10] = ', a[10]);
     writeln('sum = ',sum);
     writeln('Average = ', average:0:2);
     writeln('PI = ', pi:0:2);
     readln;
end.
