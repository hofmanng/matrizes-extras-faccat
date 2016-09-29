{
  Escreva um programa em PASCAL que leia 2 matrizes A e B
  e calcule a matriz C que será o resultado da multiplicação
  de A por B (A, B e C têm dimensão 2x2). Mostre as 3 
  matrizes ao final da execução.
}

program prog03;

uses crt;

{ Declaração das variáveis }
var mat1 : array[1..2, 1..2] of integer;
	mat2 : array[1..2, 1..2] of integer;
	mat3 : array[1..2, 1..2] of integer;
	i,j,k : integer;

begin
	{ Entrada de dados }
	for i := 1 to 2 do
		for j := 1 to 2 do
			begin
				write('Insira um valor para a matriz A: ');
				readln(mat1[i,j]);
				write('Insira um valor para a matriz B: ');
				readln(mat2[i,j]);
			end
		;
	;

	{ Saída de dados }
	writeln;
	for i := 1 to 2 do
		begin
			writeln;
			for j := 1 to 2 do
				begin
					write(' ', mat1[i,j]);

				end
			;
		end
        ;
    writeln;
    for i := 1 to 2 do
		begin
			writeln;
			for j := 1 to 2 do
				begin
					write(' ', mat2[i,j]);
				end
			;
		end
	;

	{ Saída de dados }
	writeln;
	for i := 1 to 2 do
		begin
			writeln;
			for j := 1 to 2 do
				begin
					{ Processamento }
					for k := 1 to 2 do
						begin
							mat3[i,j] := mat3[i,j] + (mat1[i,k] * mat2[k,j]);
						end
					;
					
				write(' ', mat3[i,j]);
				end
			;
		end
	;
	writeln;

end.
