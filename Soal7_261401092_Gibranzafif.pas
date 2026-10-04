{NAMA : Gibran Zafif
 NIM  : 261401092}

program TarifParkir;
uses crt;

var
  kode  : char;
  jam   : integer;
  tarif, pertama, tambahan, maksimal : longint;
  valid : boolean;
begin
    clrscr;
  write('Kode kendaraan (M: Mobil, K: Motor, B: Bus): ');
  readln(kode);
  write('Lama parkir (jam): ');
  readln(jam);

  valid := true;
  case upcase(kode) of
    'M': begin pertama := 5000;  tambahan := 3000; maksimal := 30000; end;
    'K': begin pertama := 2000;  tambahan := 1000; maksimal := 10000; end;
    'B': begin pertama := 10000; tambahan := 5000; maksimal := 50000; end;
  else
    valid := false;
  end;

  if (not valid) or (jam < 1) then
  begin
    writeln('Input tidak valid.');
    exit;
  end;

  if jam > 10 then
    tarif := maksimal
  else
    tarif := pertama + (jam - 1) * tambahan;

  writeln('Total tarif parkir: Rp', tarif);
end.