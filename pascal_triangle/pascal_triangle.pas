program Pascal_Triangle;
const SIZE = 12;
var n, r: longint;
 triangle: array[0..SIZE,0..SIZE] of longint;
 option: char;

procedure Initialisation;
var i, j: longint;
begin
   for i := 0 to size do
      for j := 0 to size do
         triangle[i,j] := 0; {set all 'slots' in triangle to 0}
end;

procedure Input_Parameter;
begin
   writeln('=================');
   writeln('|Pascal Triangle|');
   writeln('================='); writeln;
   repeat
   write('Enter n: '); readln(n); {Input n}
   if (n > SIZE)
   then writeln('n must be smaller than 12');
   until (n <= SIZE); {check if n is >=12}
end;

procedure Find_Factorial(x: longint; var x_fact: longint);
var i: longint;
begin
   x_fact := 1;
   if x > 0 {if x! > 0}
   then for i := x downto 1 do
           x_fact := x_fact * i; {sum up}
end;

procedure Find_nCr(n,r: longint;var nCr: longint);
var n_fact, r_fact, nr_fact: longint;
begin
 Find_Factorial(n,n_fact); {find n!}
 Find_Factorial(r,r_fact); {find r!}
 Find_Factorial(n-r,nr_fact);{find n-r!}
 nCr := n_fact div (nr_fact * r_fact); {find nCr}
 write(nCr:4);{occupy 4 slots}
end;

procedure Display_Pascal_Triangle(x: longint);
var i, j, k: integer;
begin
   for i := 0 to x do begin
      write(' ': 2*(x + 1 - i) ); {add spaces before each row of triangle}
         for j := 0 to i do
            Find_nCr(i,j,k); {display all nCr}
      writeln;
  end;
  writeln;
writeln('Do you want to continue? (Y or N)');
readln(option);
end;

{Main Program}
begin
 repeat
 Initialisation;
 Input_Parameter;
 Display_Pascal_Triangle(n);
 until (option = 'N') or (option = 'n');
end.
