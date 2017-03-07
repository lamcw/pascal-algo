program CountGrade;
var grade : array['A'..'F'] of integer;
    ch, g : char;
begin
   for ch := 'A' to 'F' do
      grade[ch] := 0;
   repeat
      write('Enter a grade ( A to F, z to end): ');
      readln(g);
      if (g >= 'A') and (g <= 'F') and (g <> 'Z')
         then grade[g] := grade[g] + 1
   until g = 'Z';
   for ch := 'A' to 'F' do
      writeln(ch, ' = ', grade[ch])
end.
