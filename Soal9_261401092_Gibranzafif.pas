{NAMA : Gibran Zafif
 NIM  : 261401092}


program HariDalamBulan;
uses crt;

var
  tahun, bulan, hari : integer;
  kabisat : boolean;
begin
    clrscr;
  write('Masukkan tahun : ');
  readln(tahun);
  write('Masukkan bulan (1-12): ');
  readln(bulan);

  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11          : hari := 30;
    2: if kabisat then hari := 29 else hari := 28;
  else
    begin
      writeln('Nomor bulan tidak valid (harus 1-12).');
      exit;
    end;
  end;

  if kabisat then
    writeln('Tahun ', tahun, ' adalah tahun kabisat.')
  else
    writeln('Tahun ', tahun, ' bukan tahun kabisat.');
  writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ': ', hari, ' hari');
end.