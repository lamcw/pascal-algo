program Multiple_Mark_Six_01;

var
a: array[1..8] of integer;
b, c, d:integer;

begin
   a[1]:=5;
   a[2]:=15;
   a[3]:=22;
   a[4]:=23;
   a[5]:=32;
   a[6]:=34;
   a[7]:=44;
   a[8]:=50;

for b:= 1 to 7 do
  begin
    for c:= b+1 to 8 do
      begin
        for d := 1 to 8 do
        begin
          if (c <> d) and (b <> d) then
          write(a[d],' ');
        end;
        writeln;
      end;
     end;
  readln;
end.
