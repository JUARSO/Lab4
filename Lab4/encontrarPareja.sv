module encontrarPareja
	(MatrizJuego,primeraX,primeraY,segundaX,segundaY,banderaPareja);
	input reg  [4:0] MatrizJuego [0:3][0:3];
	input logic[4:0] primeraX;
	input logic[4:0] primeraY;
	input logic[4:0] segundaX;
	input logic[4:0] segundaY;
	output banderaPareja;
	
	
	always @ (posedge primeraX or posedge primeraY
	or posedge segundaX or posedge segundaY) begin
	
		if(MatrizJuego[primeraX][primeraY] == MatrizJuego[primeraX][primeraY])
			banderaPareja <= 1;
		else
			banderaPareja <= 0;
	
	end
endmodule

	
	