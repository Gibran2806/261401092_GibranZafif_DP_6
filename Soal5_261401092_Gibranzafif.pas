{NAMA : Gibran Zafif
 NIM  : 261401092}

program RekapNilai;
uses crt;

var
  M, N, i, j       : integer;
  nilai, jumlah, rata : real;
  lulus, tidakLulus   : integer;
begin
    clrscr;
  write('Masukkan jumlah mahasiswa : ');
  readln(M);
  write('Masukkan jumlah tugas  : ');
  readln(N);

  if (M < 1) or (N < 1) then
  begin
    writeln('M dan N harus lebih dari 0.');
    exit;
  end;

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    jumlah := 0;
    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ': ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;
    rata := jumlah / N;

    write('  Rata-rata: ', rata:0:2, ' -> ');
    if rata >= 70 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('HASIL REKAP NILAI');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.