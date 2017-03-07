program Grading;
var mark_eng, mark_chi, mark_math: integer;
    avg_mark: real;
    grade: char;
begin
    writeln('Grade Conversion');
    writeln('----------------'); writeln;
    write('English Mark: '); readln(mark_eng);
    write('Chinese Mark: '); readln(mark_chi);
    write('Mathematics Mark: '); readln(mark_math);
    avg_mark := (mark_eng + mark_chi + mark_math) / 3;
    if (avg_mark >=85.0)
    then grade := 'A'
    else if (avg_mark >=70.0)
         then grade := 'B'
         else if (avg_mark >=60.0)
         then grade := 'C'
         else if (avg_mark >=50.0)
         then grade := 'D'
         else if (avg_mark >=40.0)
         then grade := 'E'
         else grade := 'F';

    writeln('Average Mark: ', avg_mark:10:2);
    writeln('Corresponding Grade: ', grade);
    readln;
    end.
