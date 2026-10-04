{NAMA : Gibran Zafif
 NIM  : 261401092}

program VerifikasiLogin;
uses crt;
const
  SANDI_RAHASIA = 'GIBRANJAGONGODING';
  MAKS_COBA     = 3;
var
  masukan  : string;
  percobaan: integer;
  berhasil : boolean;
begin
    clrscr;
  percobaan := 0;
  berhasil  := false;

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/', MAKS_COBA, '): ');
    readln(masukan);

    if masukan = SANDI_RAHASIA then
    begin
      berhasil := true;
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
      writeln('Kata sandi salah.');
  until percobaan >= MAKS_COBA;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.