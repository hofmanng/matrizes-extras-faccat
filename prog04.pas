{
  Desenvolva um programa que leia uma matriz 2x2, 
  calcule e mostre a matriz resultante a qual deve 
  ser a matriz digitada pelo maior elemento da matriz
  original.
}

program prog04;

uses crt;

{ Declaração das variáveis }
var mat : array[1..2, 1..2] of integer;
	num_maior : integer;
	i,j : integer;

begin
	{ Entrada de dados, inicialização e teste 
	  condicional }
	for i := 1 to 2 do
		for j := 1 to 2 do
			begin
				{ Entrada de dados }
				write('Insira um valor: ');
				readln(mat[i,j]);

				{ Inicializa o menor valor com 
				  a primeira posição da matriz }
				if(mat[i,j] = mat[1,1]) then
					num_maior := mat[i,j];
				
				{ Teste condicional }
				if(mat[i,j] > num_maior) then
					num_maior := mat[i,j];
			end
		;
	;

	{ Saída de dados e processamento }
	for i := 1 to 2 do
		begin
			writeln;
			for j := 1 to 2 do
				begin
					{ Processamento }
					mat[i,j] := mat[i,j] * num_maior;
					{ Saída de dados }
					write(' ', mat[i,j]);
				end
			;
		end
	;

	writeln;
end.
