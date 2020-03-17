{

Online Pascal Compiler.Code, Compile,
    Run and Debug Pascal program online.Write your code in this editor and
    press "Run" button to execute it.}


program Hello;

var namaMHS:array[1. .3]
     of String;
nilaiMHS:array[1. .3]
     of integer;
keterangan:array[1. .3]
     of String;
counter:integer;
jumlahNilaiMHS:integer;
rataRata:real;
nilaiTerbesar:integer;
nilaiTerkecil:integer;

begin
writeln
  ('===================== Program Perhitungan Nilai Rata - Rata =================================');
jumlahNilaiMHS:= 0;
for counter
:= 1 to 3
  do
    begin write ('Mahasiswa Ke-', counter, ' : ');
  readln (namaMHS[counter]);
  write ('Nilai Mahasiswa Ke-', counter, ' : ');
  readln (nilaiMHS[counter]);

  jumlahNilaiMHS += nilaiMHS[counter];

  if (nilaiMHS[counter] > 70)
  then begin keterangan[counter]:= 'Lulus';
  end;
  if (nilaiMHS[counter] <= 70)
  then begin keterangan[counter]:= 'Tidak Lulus';
  end;

nilaiTerbesar:= nilaiMHS[1];
  if (nilaiMHS[counter] > nilaiTerbesar)
  then begin nilaiTerbesar:= nilaiMHS[counter];
  end;

nilaiTerkecil:= nilaiMHS[1];
  if (nilaiMHS[counter] < nilaiTerkecil)
  then begin nilaiTerkecil:= nilaiMHS[counter];
  end;
  end;
  writeln ('=====|=======================|================================');
  writeln ('NO   |NAMA                   |NILAI           |KETERANGAN     |');
  writeln ('=====|=======================|================================');
  for counter
  := 1 to 3
    do
      begin
	writeln (counter, '   |    ', namaMHS[counter], '   |  ',
		 nilaiMHS[counter], '|      ', keterangan[counter],
		 '      |');
    end;
  rataRata:= jumlahNilaiMHS / counter;
    writeln ('=====|=======================|================');
    writeln ('Jumlah Nilai : ', jumlahNilaiMHS, '|');
  writeln ('Rata - rata : ', rataRata: 0:2, '|');
    writeln ('Nilai Terbesar : ', nilaiTerbesar, '|');
    writeln ('Nilai Terkecil : ', nilaiTerkecil, '|');
    writeln ('=====|=======================|================');
    end.
