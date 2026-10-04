{NAMA : Gibran Zafif
 NIM  : 261401092}

program NilaiAkhirMatkul;
uses crt;

var
  tugas, uts, uas, kehadiran, akhir, quiz : real;
  indeks : char;
begin
    clrscr;
  write('Nilai Tugas       : '); 
  readln(tugas);
  write('Nilai UTS         : '); 
  readln(uts);
  write('Nilai UAS         : '); 
  readln(uas);
  write('Kehadiran (%)     : '); 
  readln(kehadiran);
  write('Nilai Quiz        : ');
  readln(quiz);

  akhir := 0.3 * tugas + 0.3 * uts + 0.4 * uas;

  if akhir >= 80 then indeks := 'A'
  else if akhir >= 75 then indeks := 'B'
  else if akhir >= 60 then indeks := 'C'
  else if akhir >= 50 then indeks := 'D'
  else indeks := 'E';

  writeln;
  writeln('Nilai Akhir  : ', akhir:0:2);
  writeln('Indeks Huruf : ', indeks);
  if (akhir >= 60) and (kehadiran >= 80) then
    writeln('Status       : LULUS')
  else
    writeln('Status       : TIDAK LULUS');
end.