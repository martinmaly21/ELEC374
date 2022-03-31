// temp coding shit 

fetch0: begin
			 #10 PCout <= 1; MARin <= 1; IncPC <= 1; Zlowin <= 1;
			 #15 PCout <= 0; MARin <= 0; IncPC <= 0; Zlowin <= 0;
		end 
		fetch1: begin
			 #10 Zlowout <= 1; PCin <= 1; Read <= 1; MDRin <= 1;
			 #15 Zlowout <= 0; PCin <= 0; Read <= 0; MDRin <= 0;
		end 
		fetch2: begin
			 #10 MDRout <= 1; IRin <= 1;
			 #15 MDRout <= 0; IRin <= 0;
		end 
		
		//All basic ALU with grb, grc, steps
		 and3, or3, add3, sub3, shl3, shr3, rol3, ror3, div3, mul3, andi3, ori3: begin	
			#10 Grb <= 1; Rout <= 1; Yin <= 1;
			#15 Grb <= 1; Rout <= 1; Yin <= 1;
			
		end
		
		// mul and div require seperate stuff
		ror4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 9; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		rol4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 8; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		shr4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 7; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		shl4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 6; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		//skip and not 
		sub4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 3 Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		add4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 2; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		or4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 1; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		and4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 0; Zlowin <= 1; 
			#15 Grc <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		and5, or5, add5, sub5, shl5, shr5, rol5, ror5, andi5, ori5: begin
			#10 Zlowout <= 1; Gra <= 1; Rin <= 1;
			#15 Zlowout <= 0; Gra <= 0; Rin <= 0;
		end
		
		//mul and div 
		mul4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 10; Zhighin <= 1; Zlowin <= 1;
			#15 Grc <= 0; Rout <= 0; Zhighin <= 0; Zlowin <= 0;
		end
		
		div4: begin
			#10 Grc <= 1; Rout <= 1; ctrl <= 11; Zhighin <= 1; Zlowin <= 1;
			#15 Grc <= 0; Rout <= 0; Zhighin <= 0; Zlowin <= 0;
		end
		
		mul5, div5: begin
		   #10 Zlowout<=1; LOin <= 1;
			#15 Zlowout<=0; LOin <= 0;
		end
		mul6, div6: begin
			#10 Zhighout<= 1; HIin <= 1; 
			#15 Zhighout<= 0; HIin <= 0; 
		end
		
		//neg and not
		not3: begin
			#10 grb <= 1; Rout <= 1;  ctrl <= 5; Zlowin <= 1;
			#15 grb <= 0; Rout <= 0;  Zlowin <= 0;
		end
		
		neg3: begin
			#10 grb <= 1; Rout <= 1;  ctrl <= 4; Zlowin <= 1;
			#15 grb <= 0; Rout <= 0;  Zlowin <= 0;
		end
		
		not4, neg4: begin
			#10 Zlowout <= 1; Gra <= 1; Rin <= 1;
			#15 Zlowout <= 0; Gra <= 0; Rin <= 0;
		end
		
		// andi ori
		andi4: begin
			#10 Cout <= 1; Rout <= 1; ctrl <= 0; Zlowin <= 1; 
			#15 Cout <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		ori4: begin
			#10 Cout <= 1; Rout <= 1; ctrl <= 1; Zlowin <= 1; 
			#15 Cout <= 0; Rout <= 0; Zlowin <= 0; 
		end
		
		T3: begin
       #10 Grb <= 1; Yin <= 1; BAout <= 1;
       #15 Grb <= 0; Yin <= 0; BAout <= 0;
		end
		ld4: begin
				 #10 Cout <= 1; ctrl <= 2; Zlowin <= 1;
				 #15 Cout <= 0; Zlowin <= 0;
		end
		ld5: begin
				 #10 Zlowout <= 1; MARin <= 1;
				 #15 Zlowout <= 0; MARin <= 0;
		end
		ld6: begin
				  #10 Read <= 1; MDRin <= 1;
				  #15 Read <= 0; MDRin <= 0;
		end
		ld7: begin
				  #10 MDRout <= 1; Gra <= 1; Rin <= 1;
				  #15 MDRout <= 0; Gra <= 0; Rin <= 0;
		end
		
		jr3: begin
       #10 Gra <= 1; Rout <= 1; PCin <= 1;
       #15 Gra <= 0; Rout <= 0; PCin <= 0;
		end
		
		ldi3: begin
       #10 Grb <= 1; BAout <= 1; Yin <= 1; 
       #15 Grb <= 0; BAout <= 0; Yin <= 0;
		end
		ldi4: begin
				 #10 Cout <= 1; ctrl <= 2; Zlowin <= 1;
				 #15 Cout <= 0; Zlowin <= 0;
		end
		ldi5: begin
				 #10 Zlowout <= 1; Gra <= 1; Rin <= 1;
				 #15 Zlowout <= 0; Gra <= 0; Rin <= 0;
		end
		mflo3: begin
       #10 Gra <= 1; Rin <= 1;  LOout <= 1;
       #15 Gra <= 0; Rin <= 0;  LOout <= 0;
		end
		
		mfhi3: begin
       #10 Gra <= 1; Rin <= 1;  HIout <= 1;
       #15 Gra <= 0; Rin <= 0;  HIout <= 0;
		end
		
		out3: begin
       #10 Gra <= 1; Rout <= 1;  outPortEnable <= 1;
       #15 Gra <= 0; Rout <= 0;  outPortEnable <= 0;
		end
		
		in3: begin
       #10 Gra <= 1; Rin <= 1;  InPortout <= 1;
       #15 Gra <= 0; Rin <= 0;  InPortout <= 0;
		end
		
		br3: begin
				#10 Gra <= 1; Rout <= 1;  conInput <= 1;
				#15 Gra <= 0; Rout <= 0;  conInput <= 0;
		end
		br4: begin
				 #10 PCout <= 1; Yin <= 1;
				 #15 PCout <= 0; Yin <= 0;
		end
		br5: begin
				 #10 Cout <= 1; ctrl <= 2; Zlowin <= 1;
				 #15 Cout <= 0; Zlowin <= 0;
		end
		br6: begin
				 #10 Zlowout <= 1;
				 
				 if (conOut) begin
				 PCIn <= 1;
				 end
				
				 #15 Zlowout <= 0; PCIn <= 1;
		end
							
		
		
		
		
		
		
		