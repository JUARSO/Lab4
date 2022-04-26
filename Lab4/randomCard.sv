module randomCard(input reg[15:0] OpenCards, input clk, input reset, output logic [3:0] random);



   logic [3:0] i;
   always_ff @(posedge clk) begin
      if(reset)
         random = 4'd0;
      else begin
			if(random == 4'd15) random = 4'd0;
			else random = random + 1;
			for(i = 0; i < 4'd16; i++) begin
				if(OpenCards[random]) begin
					if(random < 4'd15) random = random + 1;
					else random = 4'd0;
				end
			end
		end
   end

endmodule