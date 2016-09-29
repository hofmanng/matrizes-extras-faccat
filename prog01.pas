{
  Escreva um programa em Pascal que, dada uma matriz 3x3, 
  armazena em cada posição da matriz a soma dos valores da
  linha e da coluna que definem a posição. Por exemplo, na 
  posição [1][2] você deverá armazenar o valor 1+2=3 e assim
  por diante. Imprima a matriz na tela.

}

program prog01;

uses crt;

var mat : array[1..3, 1..3] of integer;
	i, j : integer;

begin
	{ Processamento }
	for i := 1 to 3 do
		for j := 1 to 3 do
			begin
				mat[i,j] := i + j;
			end
		;
	;

	{ Saída de dados }
	for i := 1 to 3 do
		begin
			writeln;
			for j := 1 to 3 do
				begin
					write(' ', mat[i,j]);
				end
			;
		end
	;
	writeln;
end.
				
