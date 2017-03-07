program Heron;
var
  a, b, c: real;
  s: real;
  area: real;


begin
    writeln('Heron Formula');
    writeln('-------------');
    writeln;
    writeln('Enter a: '); readln(a);
    writeln('Enter b: '); readln(b);
    writeln('Enter c: '); readln(c);
    s := (a + b + c)/2;
    area := sqrt( s * ( s - a ) * ( s - b ) * ( s - c ) );
    writeln('The area of triangle is ', area , 'cm^2');
    readln;
    end.
