{NAMA : Gibran Zafif
 NIM  : 261401092}

program DeretAngka;
uses crt;

var
  N, pilihan, i : integer;
begin
    clrscr;
  write('Masukkan nilai N: ');
  readln(N);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
  readln(pilihan);

  if (pilihan <> 1) and (pilihan <> 2) then
  begin
    writeln('Pilihan tidak valid.');
    exit;
  end;

  writeln('Hasil deret:');
  i := 0;
  while i < N do
  begin
    i := i + 1;  
    if ((pilihan = 1) and (i mod 2 = 0)) or
       ((pilihan = 2) and (i mod 2 = 1)) then
      continue;

    if i mod 5 = 0 then
      continue;

    write(i, ' ');
  end;
  writeln;
end.