program PullDown_Menu_04;
uses crt;
const WIDTH = 20;
      HEIGHT = 10;
      MNO = 4;
      INO = 10;
var i, j, cx, cy, menu_no, item_no: integer;
    key: char;
    menu: array[1..MNO, 1..INO] of string[20];
    mbar: array[1..MNO] of string[10];
    mitem: array[1..MNO] of integer;
    mcount: integer;
    mfile: text;

procedure read_file;
begin
   assign(mfile, 'menu.txt');
   reset(mfile);
   mcount := 0;
   while not eof(mfile) do begin
      mcount := mcount + 1;
      readln(mfile, mbar[mcount]);
      readln(mfile, mitem[mcount]);
      for i := 1 to mitem[mcount] do
         readln(mfile, menu[mcount, i]);
   end;
   close(mfile);
end;

procedure menu1;
begin
   j := 1; {mitem[j] := 4;}
   cx := 1; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(3);
   clrscr;
   {menu[j, 1] := 'Item 1a';
   menu[j, 2] := 'Item 1b';
   menu[j, 3] := 'Item 1c';
   menu[j, 4] := '0123456789012345678';}
   for i := 1 to mitem[j] do begin
      if (item_no =i) then textbackground(White)
      else textbackground(3);
      writeln(menu[j, i]);
   end;
end;

procedure menu2;
begin
   j := 2; {mitem[j] := 5;}
   cx := 11; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(4);
   clrscr;
   {menu[j, 1] := 'Item 2a';
   menu[j, 2] := 'Item 2b';
   menu[j, 3] := 'Item 2c';
   menu[j, 4] := 'Item 2d';
   menu[j, 5] := '0123456789012345678';}
   for i := 1 to mitem[j] do begin
      if (item_no =i) then textbackground(White)
      else textbackground(4);
      writeln(menu[j, i]);
   end;
end;

procedure menu3;
begin
   j := 3; {mitem[j] := 7;}
   cx := 21; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(5);
   clrscr;
   {menu[j, 1] := 'Item 3a';
   menu[j, 2] := 'Item 3b';
   menu[j, 3] := 'Item 3c';
   menu[j, 4] := 'Item 3d';
   menu[j, 5] := 'Item 3e';
   menu[j, 6] := 'Item 3f';
   menu[j, 7] := '0123456789012345678';}
   for i := 1 to mitem[j] do begin
      if (item_no =i) then textbackground(White)
      else textbackground(5);
      writeln(menu[j, i]);
   end;
end;

procedure menu4;
begin
   j := 4; {mitem[j] := 6;}
   cx := 31; cy := 2;
   window(cx, cy, cx + WIDTH - 1, cy + HEIGHT - 1);
   textbackground(9);
   clrscr;
   {menu[j, 1] := 'Item 4a';
   menu[j, 2] := 'Item 4b';
   menu[j, 3] := 'Item 4c';
   menu[j, 4] := 'Item 4d';
   menu[j, 5] := 'Item 4e';
   menu[j, 6] := '0123456789012345678';}
   for i := 1 to mitem[j] do begin
      if (item_no =i) then textbackground(White)
      else textbackground(9);
      writeln(menu[j, i]);
   end;
end;

procedure menuBar1;
var cx, cy, mwidth: integer;
begin
   cursoroff;
   cx := 1; cy := 1; mwidth := 10;
   j := 1; {mbar[j] := 'Menu 1';}
   textcolor(6);
   window(cx, cy, cx + mwidth -1, cy); write(mbar[j]);
end;

procedure menuBar2;
var cx, cy, mwidth: integer;
begin
   cursoroff;
   cx := 1; cy := 1; mwidth := 10;
   j := 2; {mbar[j] := 'Menu 2';}
   textcolor(6);
   window(cx + mwidth, cy, cx + 2*mwidth -1, cy); write(mbar[j]);
end;

procedure menuBar3;
var cx, cy, mwidth: integer;
begin
   cursoroff;
   cx := 1; cy := 1; mwidth := 10;
   j := 3; {mbar[j] := 'Menu 3';}
   textcolor(6);
   window(cx + 2*mwidth, cy, cx + 3*mwidth -1, cy); write(mbar[j]);
end;

procedure menuBar4;
var cx, cy, mwidth: integer;
begin
   cursoroff;
   cx := 1; cy := 1; mwidth := 10;
   j := 4; {mbar[j] := 'Menu 4';}
   textcolor(6);
   window(cx + 3*mwidth, cy, cx + 4*mwidth -1, cy); write(mbar[j]);
end;

procedure menuBarDummy;
var cx, cy, mwidth: integer;
begin
   cursoroff;
   cx := 1; cy := 1; mwidth := 10;
   textcolor(0);
   window(cx + 4*mwidth, cy, cx + 5*mwidth -1, cy);
end;

procedure menuBar;
begin
   cursoroff;
   menuBar1;
   menuBar2;
   menuBar3;
   menuBar4;
   menuBarDummy;
end;

begin
   read_file;
   clrscr;
   menuBar;
   menu_no := 1;
   item_no := 1;
   repeat
   key := readkey;
      if (key = #0) and (key <> #27)
      then begin
              key := readkey;
              case key of
              #75: menu_no := menu_no - 1;
              #77: menu_no := (menu_no + 1) mod 4;
              #72: item_no := item_no - 1;
              #80: item_no := (item_no + 1);
           end;
           if ((key = #75) or (key = #77)) then item_no := 1;
           if (menu_no = 0) then menu_no := 4;
           if (item_no = 0) then item_no := mitem[menu_no];
           if (item_no > mitem[menu_no]) then item_no := 1;

           textBackground(Black);clrscr;
           menuBar;
           textBackground(White);
           case (menu_no) of
              1: menuBar1;
              2: menuBar2;
              3: menuBar3;
              4: menuBar4;
           end;
           textBackground(Black);
           case (menu_no) of
              1: menu1;
              2: menu2;
              3: menu3;
              4: menu4;
           end;
      end;
   until (key = #27);
end.
