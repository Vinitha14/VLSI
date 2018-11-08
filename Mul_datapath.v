`include "Mul_controlpath.v"
`include "Utilities.v"
module MUL_datapath (eqz , LdA , LdB , LdP , clrP , decB , data_in , clk);

    input LdA , LdB , LdP , clrP , decB , clk ;
    input [15 : 0 ] data_in ;
    output eqz ;
    wire [15 : 0] X , Y , Z , Bout , Bus ;

    PIPO1 A ( X , data_in , LdA , clk);
    PIPO2 P ( Y , Z , LdP , clrP , clk);

    
    CNTR B (Bout , data_in , LdB , decB , clk);
    ADD AD (Z , X , Y);
    EQZ COMP (eqz , Bout);

endmodule


module MUL_Test;

    reg [15 : 0] data_in ;
    reg clk , start ;
    wire done ;

    MUL_datapath DP ( eqz , LdA , LdB , LdP , clrP , decB , data_in , clk ) ;
    MUL_ctrlpath CON ( LdA , LdB , LdP , clrP , decB , done , clk , eqz , start);


    initial 
        begin 
        clk = 1'b0;
        #3 start = 1'b1;
        #500 $finish;
        end
    
    always #5 clk = ~clk ;

    initial 
        begin
            #17 data_in = 17;
            #10 data_in = 5;
        end
    
    initial 
        begin 
            $monitor ($time , " %d %b ",DP.Y , done);
            $dumpfile ("mul.vdc");
            $dumpvars ( 0 , MUL_Test);
        end
endmodule
