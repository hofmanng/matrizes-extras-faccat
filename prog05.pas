{
  Implemente um programa em Pascal que leia uma matriz 10x20
  com números inteiros e some cada uma das linhas, armazenando
  o resultado das somas em um vetor. A seguir, multiplique cada
  elemento da matriz pela soma da linha correspondente e mostre
  a matriz resultante.
}

program prog05;

uses crt;

{ Declaração das variáveis }
var mat : array[1..10, 1..20] of integer;
 	vet : array[1..10] of integer;
	i,j : integer;

begin
	{ Laço }
	for i := 1 to 10 do
		begin
			{ Laço }
			for j := 1 to 20 do
				begin
					{ Entrada de dados }
					write('Insira um valor: ');
					readln(mat[i,j]);

					{ Processamento }
					vet[i] := vet[i] + mat[i,j];
				end
			;
			{ Laço }
			for j := 1 to 20 do
				begin
					{ Processamento }
					mat[i,j] := mat[i,j] * vet[i];
				end
			;
		end
	;

	{ Laço }
	for i := 1 to 10 do
		begin
			writeln;
			{ Laço }
			for j := 1 to 20 do
				begin
					{ Saída de dados }
					write(' ', mat[i,j]);
				end
			;
		end
	;
end.
