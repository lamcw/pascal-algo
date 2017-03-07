program GenPassword;
const
   max = 10;
   len = 8;
var
   Password : array[1..max] of string[len];
   num, count : integer;
begin
   randomize;
   for count := 1 to max do
      Password[count] := ' ';

   for count := 1 to max do
      for num := 1 to len do
         Password[count] := Password[count] + chr(65 + random(26));

   for count := 1 to max do
    writeln( password[count] );
    readln;
end.

