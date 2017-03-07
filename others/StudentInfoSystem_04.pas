program Student_Information_System;

const N = 5;
var name: array[1..N] of string[30];
    cls: array[1..N] of string[3];
    clsno: array[1..N] of string[2];
    email: array[1..N] of string[30];
    mobile: array[1..N] of string[8];
    chi: array[1..N] of integer;
    eng: array[1..N] of integer;
    math: array[1..N] of integer;
    choice: char;

procedure Main_Menu(var option: char);
begin
   writeln('        Student Info System');
   writeln('====================================');
   writeln;
   writeln('1. Output Student Details');
   writeln('2. Output Student Assessment');
   writeln('3. Exit');
   writeln('Please enter your option: ');
   readln(option);
end;

procedure Input_Student_Details;
var i: integer;
begin
   for i := 1 to N do begin
      {write('Name',i,': ');}
      readln(name[i]);
      {write('Class: ');}
      readln(cls[i]);
      {write('Class no: ');}
      readln(clsno[i]);
      {write('E-mail: ');}
      readln(email[i]);
      {write('Mobile: ');}
      readln(mobile[i]);
   end;
end;

procedure Input_Student_Assessment;
var i: integer;
begin
   for i := 1 to N do begin
      {write('Student',i,'Chinese: ');}
      readln(chi[i]);
      {write('Student',i,'English: ');}
      readln(eng[i]);
      {write('Studetn',i,'Maths: ');}
      readln(math[i]);
   end;
end;

procedure Output_Student_Details;
var i: integer;
begin
   for i := 1 to N do begin
      writeln('Information of Student ',i);
      writeln('Name:' , name[i]);
      writeln('Class: ' , cls[i]);
      writeln('Class no: ' , clsno[i]);
      writeln('E-mail: ' , email[i]);
      writeln('Mobile: ' , mobile[i]);
   end;
end;

procedure Output_Student_Assessment;
var i, c_sum, e_sum, m_sum: integer;
    c_avg, e_avg, m_avg: real;
begin
   c_sum := 0; e_sum := 0; m_sum := 0;
      for i := 1 to N do begin
         c_sum := c_sum + chi[i];
         c_avg := c_sum / N;
         e_sum := e_sum + eng[i];
         e_avg := e_sum / N;
         m_sum := m_sum + math[i];
         m_avg := m_sum / N;
      end;
   writeln('Sum of Chinese: ',c_sum,' and average: ',c_avg:0:2);
   writeln('Sum of English: ',e_sum,' and average: ',e_avg:0:2);
   writeln('Sum of Maths: ',m_sum,' and average: ',m_avg:0:2);
end;

begin
   repeat
      Input_Student_Details;
      Input_Student_Assessment;
      Main_Menu(choice);
         case choice of
            '1':Output_Student_Details;
            '2':Output_Student_Assessment;
         end;
   until not(choice in ['1','2']);

   {override statements
   Input_Student_Details;
   writeln;

   Input_Student_Assessment;
   writeln;

   Output_Student_Details;
   writeln;

   Output_Student_Assessment;}

   readln;
end.
