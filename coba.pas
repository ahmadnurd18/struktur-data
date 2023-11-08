program AhmadResto;

uses wincrt;
type
  pembeli = record
    Nama: string;
    Banyaknya: integer;
    Harga: real;
  end;
  
var
  namaPembeli: string;
  DaftarMakanan: array[1..5] of pembeli;
  Total, Pembayaran, Kembalian: real;
  i: integer;
  
begin
  writeln('                           Warung Makan 89                 ');
  writeln('                       Jl. Siliwangi 1, no.113             ');
  writeln('                               Bandung                     ');
  writeln('===========================================================');
  
  write('Nama Pembeli : ');
  readln(namaPembeli);
  
  DaftarMakanan[1].Nama := 'Sate Ayam       ';
  DaftarMakanan[1].Banyaknya := 2;
  DaftarMakanan[1].Harga := 15000;
  
  DaftarMakanan[2].Nama := 'Soto Mie        ';
  DaftarMakanan[2].Banyaknya := 3;
  DaftarMakanan[2].Harga := 18000;
  
  DaftarMakanan[3].Nama := 'Nasi Putih      ';
  DaftarMakanan[3].Banyaknya := 5;
  DaftarMakanan[3].Harga := 5000;
  
  DaftarMakanan[4].Nama := 'Es Teh Manis    ';
  DaftarMakanan[4].Banyaknya := 2;
  DaftarMakanan[4].Harga := 7000;
  
  DaftarMakanan[5].Nama := 'Es Jeruk        ';
  DaftarMakanan[5].Banyaknya := 3;
  DaftarMakanan[5].Harga := 10000;
  
  writeln('==============================================================');
  writeln(' No.    Nama Makanan        Banyaknya        Harga      Jumlah');
  
  Total := 0;
  
  for i := 1 to 5 do
  begin
    writeln(' ', i, '.   ', DaftarMakanan[i].Nama, '        ', DaftarMakanan[i].Banyaknya, '    ', DaftarMakanan[i].Harga:0:0, '    ', DaftarMakanan[i].Banyaknya * DaftarMakanan[i].Harga:0:0);
    Total := Total + DaftarMakanan[i].Banyaknya * DaftarMakanan[i].Harga;
  end;
  
  writeln('===================================================================');
  writeln(' Total : ', Total:0:0);
  
  write(' Pembayaran : ');
  readln(Pembayaran);
  Kembalian := Pembayaran - Total;
  
  writeln(' Kembalian : ', Kembalian:0:0);
  writeln('===================================================================');
  writeln('Terima Kasih');
end.
