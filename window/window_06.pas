program Window_06;
uses crt;
var i: integer;
    ch: char;
    infile: text;
begin
   assign(infile, 'content1.txt');
   reset(infile);
   window(5,5,5+60,5+15);
   textbackground(Blue);
   clrscr;
   textcolor(Yellow);
   while not eof(infile) do begin
      read(infile, ch);
      write(ch);
   end;
   assign(infile, 'content2.txt');
   reset(infile);
   window(5+60+2,5,5+60,5+15+15+2);
   textbackground(12);
   clrscr;
   textcolor(10);
   while not eof(infile) do begin
      read(infile, ch);
      write(ch);
   end;
   assign(infile, 'content3.txt');
   reset(infile);
   window(5,5+15+2,5+60,5+15+2);
   textbackground(5);
   clrscr;
   textcolor(6);
   while not eof(infile) do begin
      read(infile, ch);
      write(ch);
   end;
   assign(infile, 'content4.txt');
   reset(infile);
   window(5+60+2,5+15+2,5+60+60+2,5+15+15+2);
   textbackground(White);
   clrscr;
   textcolor(Black);
   while not eof(infile) do begin
      read(infile, ch);
      write(ch);
   end;
   readln;
end.
