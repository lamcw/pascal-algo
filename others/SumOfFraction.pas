program Sum_of_Fraction;
var a, b, c, d: integer;
num, den: integer;

{Function of HCF}
function HCF(x, y:integer): integer;
var i, temp: integer;
    found: boolean;
begin
   temp := 1;
   found := false;
   if (x < y)
   then i := x
   else i := y ;
   repeat
    if (((x mod i) = 0) and (( y mod i ) = 0))
      then begin
           temp := i;
           found := true;
      end
    else i := i - 1;
   until ((found = true) or ( i <= 1 ));
 HCF:= temp;
end;

{Function of LCM}
function LCM(x, y:integer): integer;
begin
  LCM := x * y div (HCF(x,y));
end;

{Alternate funcion of LCM}
function Al_LCM(x,y:integer):integer;
var i, temp: integer;
    found: boolean;
begin
   temp := 1;
   found := false;
   if (x < y)
   then i := x
   else i := y ;
   repeat
    if ((( i mod x ) = 0) and (( i mod y ) = 0))
      then begin
           temp := i;
           found := true;
      end
    else i := i + 1;
   until ((found = true) or ( i >= x * y ));
 if (i >= x*y)
 then Al_LCM:= x*y
 else Al_LCM:= temp;
end;

procedure Sum_Fraction(a,b,c,d: integer);
var hcf1,mixed: integer;
begin
   writeln('Find fraction in their simplest form');
   num := a*d + b*c;
   den := b*d;
   write(a, '/',b,'+',c,'/',d,' = ',num,'/',den);
   hcf1 := HCF(num, den);

   if (hcf1 <> 1)
   then begin
        num := num div hcf1;
        den := den div hcf1;
        write(' = ',num,'/',den)
   end;

   if (den <= num)
   then if ((num mod den) = 0)
        then  writeln(' = ', num div den)
        else begin
             mixed := num div den;
             num := num mod den;
             writeln(' = ',mixed,' ',num,'/',den);
        end;

end;
begin
   write('Enter a: '); readln(a);
   write('Enter b: '); readln(b);
   write('Enter c: '); readln(c);
   write('Enter d: '); readln(d);
   Sum_Fraction(a,b,c,d);
   readln;
end.

begin
  write('Enter a: ');
  readln(a);
  write('Enter b: ');
  readln(b);
  writeln('HCF of ',a,' and ',b,' = ',HCF(a, b));
  writeln('LCM of ',a,' and ',b,' = ',LCM(a, b));
  writeln('LCM of ',a,' and ',b,' using an alternate function = ',Al_LCM(a, b));
readln;
end.
