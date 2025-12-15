module ripple_counter (
    input wire clk,
    input wire rst,
    output reg [3:0] Q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        Q[0] <= 1'b0;
    else
        Q[0] <= ~Q[0];
end

always @(posedge Q[0] or posedge rst) begin
    if (rst)
        Q[1] <= 1'b0;
    else
        Q[1] <= ~Q[1];
end

always @(posedge Q[1] or posedge rst) begin
    if (rst)
        Q[2] <= 1'b0;
    else
        Q[2] <= ~Q[2];
end

always @(posedge Q[2] or posedge rst) begin
    if (rst)
        Q[3] <= 1'b0;
    else
        Q[3] <= ~Q[3];
end
endmodule