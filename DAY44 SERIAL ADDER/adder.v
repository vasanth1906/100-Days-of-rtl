module serial_adder 
    (   input clk,reset,  
        input a,b,cin,  
        output reg s,cout 
        );

reg c,flag;

always@(posedge clk or posedge reset)
begin
    if(reset == 1) begin //active high reset
        s = 0;
        cout = c;
        flag = 0;
    end else begin
        if(flag == 0) begin
            c = cin;  //on first iteration after reset, assign cin to c.
            flag = 1;  
        end 
        cout = 0;
        s = a ^ b ^ c;  //SUM
        c = (a & b) | (c & b) | (a & c);  //CARRY
    end 
end

endmodule 
