program Quadratic;
var
  a, b, c: real;
  x1, x2: real;
  delta: real;

begin
    writeln('Quadratic Equation');
    writeln('------------------');
    writeln;
    writeln('Please enter the coefficient of Ax^2+Bx+C=0');
    write('Enter a: '); readln(a);
    write('Enter b: '); readln(b);
    write('Enter c: '); readln(c);
    delta := b * b - 4 * a * c;
    if (delta > 0)
    then begin
          x1 := ( -1 * b + sqrt(delta))/( 2 * a );
          x2 := ( -1 * b - sqrt(delta))/( 2 * a );
          writeln('The roots are ', x1:0:2, 'or', x2:0:2);
          end
    else if (delta = 0)
         then begin
                x1 := ( -1 * b + sqrt(delta))/( 2 * a );
                writeln('The double roots are ', x1:0:2, ' or ', x1:0:2);
                end

             else writeln('There is no real roots.');
             readln;
             end.
