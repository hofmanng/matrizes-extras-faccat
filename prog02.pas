{
  Gerar automaticamente (sem ler do usuário) uma matriz
  5x5 cujos elementos são:
	
	01 02 03 04 05
	06 07 08 09 10
	11 12 13 14 15
	16 17 18 19 20
	21 22 23 24 25

  A seguir calcule e imprima a soma dos elementos de cada
  linha da matriz e também gere e imprima um vetor com os 
  elementos da diagonal principal da matriz.
}

program prog02;

uses crt;

{ Declaração das variáveis }
var mat : array[1..5, 1..5] of integer;
	vet : array[1..5] of integer;
	i,j : integer;
	num : integer;
	sum : integer;

begin
	{ Inicialização das variáveis }
	num := 0;

	{ Processamento }
	for i := 1 to 5 do
		begin
			{ Inicialização das variáveis }
			sum := 0;
			for j := 1 to 5 do
				begin
					num := num + 1;
					mat[i,j] := num;
					sum := sum + mat[i,j];
					
					if(i = j) then
						vet[i] := mat[i,j];
				end
			;
			writeln(sum);
		end
	;

	{ Saída de dados }
	for i := 1 to 5 do
		begin
			writeln;
			for j := 1 to 5 do
				begin
					write(' ', mat[i,j]:2);
				end
			;
		end
	;

	writeln; writeln;
	
	{ Saída de dados }
	for i := 1 to 5 do
		write(' ', vet[i]:2);

	writeln;
	
end.

	

	

