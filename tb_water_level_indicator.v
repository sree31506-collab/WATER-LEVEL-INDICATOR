`timescale 1ns/1ps

module tb_water_level_indicator;

    reg [7:0] water_level;

    wire empty;
    wire level_25;
    wire level_50;
    wire level_75;
    wire full;

    water_level_indicator DUT (
        .water_level(water_level),
        .empty(empty),
        .level_25(level_25),
        .level_50(level_50),
        .level_75(level_75),
        .full(full)
    );

    integer file;

    initial begin
        $dumpfile("water_level.vcd");
        $dumpvars(0, tb_water_level_indicator);

        file = $fopen("simulation/water_level.csv", "w");
        $fwrite(file, "time,water_level,empty,level_25,level_50,level_75,full\n");

        water_level = 0;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 10;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 25;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 40;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 50;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 65;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 75;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 90;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        water_level = 100;
        #10;
        $fwrite(file, "%0t,%0d,%0d,%0d,%0d,%0d,%0d\n",
                $time, water_level, empty, level_25, level_50, level_75, full);

        $fclose(file);

        $display("Simulation completed successfully.");
        $finish;
    end

endmodule
