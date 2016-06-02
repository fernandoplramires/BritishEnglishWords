program BritishEnglishWordsTest;

function convert(Number:LongInt):string;
external 'BritishEnglishWords.dll';

var
  Output: string;
begin
  Writeln(-1, ' - ', convert(-1));
  Writeln(0, ' - ', convert(0));
  Writeln(1, ' - ', convert(1));
  Writeln(21, ' - ', convert(21));
  Writeln(105, ' - ', convert(105));
  Writeln(123, ' - ', convert(123));
  Writeln(1005, ' - ', convert(1005));
  Writeln(1042, ' - ', convert(1042));
  Writeln(1105, ' - ', convert(1105));
  Writeln(56945781, ' - ', convert(56945781));
  Writeln(999999999, ' - ', convert(999999999));
  Writeln(1000000000, ' - ', convert(1000000000));
  readln;
end.
