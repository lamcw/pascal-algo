program PullDown_Menu_01;
uses crt;
const WIDTH = 20;
      HEIGHT = 10;
var cx, cy, menu_no: integer;
    key: char;

procedure menu1;
begin
   cx := 1; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(1);
   clrscr;
   writeln('Item 1a');
   writeln('Item 1b');
   writeln('Item 1c');
   writeln('012345678');
end;

procedure menu2;
begin
   cx := 11; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(6);
   clrscr;
   writeln('Item 2a');
   writeln('Item 2b');
   writeln('Item 2c');
   writeln('Item 2d');
   writeln('012345678');
end;

procedure menu3;
begin
   cx := 21; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(5);
   clrscr;
   writeln('Item 3a');
   writeln('Item 3b');
   writeln('Item 3c');
   writeln('Item 3d');
   writeln('Item 3e');
   writeln('Item 3f');
   writeln('012345678');
end;

procedure menu4;
begin
   cx := 31; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(7);
   clrscr;
   writeln('Item 4a');
   writeln('Item 4b');
   writeln('Item 4c');
   writeln('Item 4d');
   writeln('Item 4e');
   writeln('012345678');
end;

procedure menuBar;
var cx, cy, mwidth: integer;
begin
   cursoroff;
   cx := 1; cy := 1; mwidth := 10;
   textcolor(8);
   window(cx, cy, cx + mwidth -1, cy); write('Menu 1');
   textcolor(9);
   window(cx + mwidth, cy, cx + 2*mwidth -1, cy); write('Menu 2');
   textcolor(10);
   window(cx + 2*mwidth, cy, cx + 3*mwidth -1, cy); write('Menu 3');
   textcolor(11);
   window(cx + 3*mwidth, cy, cx + 4*mwidth -1, cy); write('Menu 4');
   menu1;
   menu2;
   menu3;
   menu4;
end;
begin
   menuBar;
   menu_no := 4;
   key := readkey;
   repeat
      if key = #0
      then begin
              key := readkey;
              case key of
              #75: menu_no := menu_no - 1;
              #77: menu_no := (menu_no + 1) mod 4;
           end;
           if (menu_no = 0) then menu_no := 4;
           case (menu_no) of
              1: menu1;
              2: menu2;
              3: menu3;
              4: menu4;
           end;
      end;
   key := readkey;
   until (key = #27);
end.
