`timescale 1ns/1ps

module water_level_indicator (
    input  wire [7:0] water_level,   // 0 to 100%
    output reg        empty,
    output reg        level_25,
    output reg        level_50,
    output reg        level_75,
    output reg        full
);

always @(*) begin
    // Default values
    empty   = 1'b0;
    level_25 = 1'b0;
    level_50 = 1'b0;
    level_75 = 1'b0;
    full    = 1'b0;

    if (water_level == 0) begin
        empty = 1'b1;
    end
    else if (water_level <= 25) begin
        level_25 = 1'b1;
    end
    else if (water_level <= 50) begin
        level_50 = 1'b1;
    end
    else if (water_level <= 75) begin
        level_75 = 1'b1;
    end
    else begin
        full = 1'b1;
    end
end

endmodule
