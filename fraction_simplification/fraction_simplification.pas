program Fraction_Simplification;
var numerator, denominator, hcf: integer;
option: char;
positive, found: boolean;

procedure Initialisation;
begin
   writeln('=====================');
   writeln('||Simplify Fraction||');
   writeln('=====================');
   numerator := 0;
   denominator := 0;
   hcf := 1;
end;

{Prompt user to enter a fraction no.}
procedure Input_Fraction;
begin
   writeln('Enter fraction: ');
   readln(numerator);
   write('/');
   readln(denominator);
   positive:= ((numerator * denominator) >= 0); {CHeck if the fraction is positive}
   numerator := abs(numerator);                 {Set it to absolute value so that the negative sign does not affect the calculation}
   denominator := abs(denominator);
end;

{Find HCF for later division}
procedure Find_HCF;
var i, d: integer;
begin
   found := false;
   if (numerator < denominator) {Compare 2 numbers and set it as divisor}
   then d := numerator
   else d := denominator ;
   i := d;
   repeat
      if ((numerator mod i) = 0) and (( denominator mod i) = 0)
      then begin
              hcf := i;
              found := true;
           end
      else i := i - 1;
   until (found = true) or (i <= 1);
end;

{Process and display the simplified fraction}
procedure Simply_Fraction;
var mixed :integer;
begin
   if hcf <> 1 then
      begin
         numerator := numerator div hcf;
         denominator := denominator div hcf;
            if not positive
            then write(' = -',numerator,'/',denominator) {display negative sign if the positive flag is false}
            else write(' = ',numerator,'/',denominator);
      end;

   {For mixed fraction}
   if (denominator <= numerator)
   then if ((numerator mod denominator) = 0)
        then
           if not positive
           then writeln(' = -', numerator div denominator)
           else writeln(' = ',numerator div denominator)
        else begin
             mixed := numerator div denominator;
             numerator := numerator mod denominator;
                if not positive
                then write(' = -',mixed,' ',numerator,'/',denominator) {display negative sign if the positive flag is false}
                else write(' = ',mixed,' ',numerator,'/',denominator);
             end;
end;

{Ask user to continue or not}
procedure Close_Prompt;
begin
   write('Would you like to continue ( Y or N )? ');
   readln(option);
end;

{Main Program}
begin
 repeat
 Initialisation;
 Input_Fraction;
 Find_HCF;
 Simply_Fraction;
 Close_Prompt;
 until (option = 'N') or (option = 'n');
end.
