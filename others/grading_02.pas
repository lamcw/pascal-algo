program Grading2;
var
  mark_avg, mark_chi, mark_math, mark_eng: integer;
  avg_mark: integer;
  grade: char;
begin
  writeln('Grading Conversion');
  writeln('------------------'); writeln;
  write('English Mark: '); readln(mark_eng);
  write('Chinese Mark: '); readln(mark_chi);
  write('Maths Mark: '); readln(mark_math);
  avg_mark := (mark_eng + mark_chi + mark_math) div 3;
  case (avg_mark) of
      85..100: grade := 'A';
      70..84: grade := 'B';
      60..69: grade := 'C';
      50..59: grade := 'D';
      40..49: grade := 'E';
      else
      grade := 'F';
      end;
      writeln('Average mark: ', avg_mark);
      writeln('Grade: ', grade);
      end.
