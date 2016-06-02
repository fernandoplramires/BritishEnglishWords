library BritishEnglishWords;

{$mode objfpc}{$H+}

uses
  Classes;

type
    T_tens_words = array[0..9] of string;
    T_units_words = array[0..19] of string;

var
    is_inited: Boolean;
    tens_words: T_tens_words;
    units_words: T_units_words;

procedure initLibrary();
begin
    tens_words[0]   := '';
    tens_words[1]   := '';
    tens_words[2]   := 'twenty';
    tens_words[3]   := 'thirty';
    tens_words[4]   := 'forty';
    tens_words[5]   := 'fifty';
    tens_words[6]   := 'sixty';
    tens_words[7]   := 'seventy';
    tens_words[8]   := 'eighty';
    tens_words[9]   := 'ninety';
    units_words[0]  := 'zero';
    units_words[1]  := 'one';
    units_words[2]  := 'two';
    units_words[3]  := 'three';
    units_words[4]  := 'four';
    units_words[5]  := 'five';
    units_words[6]  := 'six';
    units_words[7]  := 'seven';
    units_words[8]  := 'eight';
    units_words[9]  := 'nine';
    units_words[10] := 'ten';
    units_words[11] := 'eleven';
    units_words[12] := 'twelve';
    units_words[13] := 'thirteen';
    units_words[14] := 'fourteen';
    units_words[15] := 'fifteen';
    units_words[16] := 'sixteen';
    units_words[17] := 'seventeen';
    units_words[18] := 'eighteen  ';
    units_words[19] := 'nineteen';
    is_inited := True;
end;

function convert(Number: LongInt) : string;
var
    Aux: string;
begin
    if (is_inited = False) then begin
        initLibrary();
    end;
    if (Number > 999999999) then begin
        Result := 'Not able to convert number upper than 999.999.999!'
    end
    else begin
        if (Number < 0) then begin
            Result := 'Not able to convert negative numbers!'
        end
        else begin
            if (Number < 20) then begin
               Result := units_words[Number]
            end
            else begin
                if (Number < 100) then begin
                    Aux := tens_words[(Number)DIV(10)];
                    if ((Number)MOD(10) > 0) then begin
                        Result := Aux + ' ' + convert((Number)MOD(10))
                    end
                    else begin
                        Result := Aux;
                    end
                end
                else begin
                    if (Number < 1000) then begin
                        Aux := units_words[(Number)DIV(100)] + ' hundred';
                        if ((Number)MOD(100) > 0) then begin
                            Result := Aux + ' and ' + convert((Number)MOD(100))
                        end
                        else begin
                            Result := Aux;
                        end
                    end
                    else begin
                        if (Number < 1000000) then begin
                            Aux := convert((Number)DIV(1000)) + ' thousand';
                            if ((Number)MOD(1000) > 0) then begin
                                Result := Aux + ' ' + convert((Number)MOD(1000))
                            end
                            else begin
                                Result := Aux;
                            end
                        end
                        else begin
                            Aux := convert((Number)DIV(1000000)) + ' million';
                            if ((Number)MOD(1000000) > 0) then begin
                                Result := Aux + ' ' + convert((Number)MOD(1000000))
                            end
                            else begin
                                Result := Aux;
                            end
                        end
                    end
                end
            end
        end
    end
end;

exports
    convert;

end.

