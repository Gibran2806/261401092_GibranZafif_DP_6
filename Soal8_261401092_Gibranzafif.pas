{NAMA : Gibran Zafif
 NIM  : 261401092}

program GajiKaryawan;
uses crt;
const
  JAM_STANDAR = 40;
  TARIF_LEMBUR = 20000;
var
  gol    : char;
  jam    : integer;
  pokok, lembur, bonus, total : longint;
  valid  : boolean;
begin
 clrscr;
  write('Golongan (A/B/C)         : ');
  readln(gol);
  write('Total jam kerja/minggu   : ');
  readln(jam);

  gol := upcase(gol);
  valid := true;
  case gol of
    'A': pokok := 1500000;
    'B': pokok := 2000000;
    'C': pokok := 2500000;
  else
    valid := false;
  end;

  if (not valid) or (jam < 0) then
  begin
    writeln('Input tidak valid.');
    exit;
  end;

  if jam > JAM_STANDAR then
    lembur := (jam - JAM_STANDAR) * TARIF_LEMBUR
  else
    lembur := 0;

  if (gol = 'C') and (jam > 50) then
    bonus := 100000
  else
    bonus := 0;

  total := pokok + lembur + bonus;

  writeln;
  writeln('RINCIAN GAJI');
  writeln('Gaji Pokok : Rp', pokok);
  writeln('Lembur     : Rp', lembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', total);
end.