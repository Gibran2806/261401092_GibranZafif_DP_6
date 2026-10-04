{NAMA : Gibran Zafif
 NIM  : 261401092}

program NamaHari;
uses crt;
var
  n : integer;
begin
    clrscr;
  write('Masukkan angka (1-7): ');
  readln(n);

  case n of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Angka tidak valid (harus 1-7).');
  end;
end.