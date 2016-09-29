{
  Implemente um programa que leia uma matriz 8x8 com números 
  inteiros e mostre uma mensagem informando se a matriz é 
  simétrica. Uma matriz simétrica possui A[i,j] = A[j,i].
}

program prog06;

uses crt;

{ Declaração das variáveis }
var mat : array[1..8, 1..8] of integer;
	i,j : integer;
	mat_simet : boolean;

begin
	{ Inicialização das variáveis }
	mat_simet := true;

	{ Laço }
	for i := 1 to 8 do
		for j := 1 to 8 do
			begin
				{ Entrada de dados }
				write('Insira um valor: ');
				readln(mat[i,j]);
			end
		;
	;

	{ Laço }
	for i := 1 to 8 do
		begin
			writeln;
			{ Laço }
			for j := 1 to 8 do
				begin
					{ Saída de dados }
					write(' ', mat[i,j]);

					{ Teste condicional }
					if(mat[i,j] <> mat[j,i]) then
						mat_simet := false;
				end
			;
		end
	;

	writeln;
	{ Teste condicional }
	if(mat_simet = false) then
		writeln('A matriz não é simétrica.')
	else
		writeln('A matriz é simétrica.');
end.
