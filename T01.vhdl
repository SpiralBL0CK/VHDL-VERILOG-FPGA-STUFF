entity T01 is
end entity;

architecture sim of T01 IS
	signal MySignal : integer := 0;
	signal CountUp : integer := 0;
	signal CountDown : integer := 10;
begin

	process is
		begin
		
			CountUp   <= CountUp + 1;
			CountDown <= CountDown - 1;
			wait for 10 ns;
	end process;
	
	process is 
		begin	
			if CountUp > CountDown then
				report "CountUp is larger";
			elsif CountUp < CountDown then
				report "CountDown is larger";
			else
				report "They are equal";
			end if;
	 
			wait on CountUp, CountDown;
			wait for 1 ns;
    end process;
	-- process is	
		-- --variable i : integer := 0;
		-- --variable MyVariable : integer := 0;
	-- begin
		-- CountUp <= CountUp + 1;
		-- CountDown <= CountDown -1;
		-- wait for 10 ns;
	-- end process;
	
	-- process is
	-- begin	
		-- wait on CountUp,CountDown;
		 -- report "CountUp=" & integer'image(CountUp) &
            -- " CountDown=" & integer'image(CountDown);
	-- end process;
	
	-- process is 
	-- begin 
		
		-- wait until CountUp = CountDown;
			-- report "Jackpot!";
	-- end process;
		-- report "hello world";
		-- loop
			-- report "peeakboo";
			-- exit;
		-- end loop;
		
		--for loop
		-- for i in 1 to 10 loop
			-- report "i=" & integer'image(i);
		-- end loop;
		
		--while i < 10 loop
			--report "i=" & integer'image(i);
			--i := i + 1;
		--end loop;
		
		--wait;
		-- report "*** Process begin ***";
 
        -- MyVariable := MyVariable + 1;
        -- MySignal   <= MySignal + 1;
 
        -- report "MyVariable=" & integer'image(MyVariable) &
            -- ", MySignal=" & integer'image(MySignal);
 
        -- MyVariable := MyVariable + 1;
        -- MySignal   <= MySignal + 1;
 
        -- report "MyVariable=" & integer'image(MyVariable) &
            -- ", MySignal=" & integer'image(MySignal);
 
 
        -- report "MyVariable=" & integer'image(MyVariable) &
            -- ", MySignal=" & integer'image(MySignal);
			        -- wait for 10 ns;

	-- end process;
	
end architecture;
