do
	local function set_vopt(...)
		for i = 1,select('#',...),2 do
			local opt_name, opt_value = select(i,...), select(i+1,...)

			vim.opt[opt_name] = opt_value
		end
	end

	local vopt = vim.opt

	set_vopt(
	-- Set number
	  "number", true

    -- Set mouse
	, "mouse", vopt.mouse._value..'a'

	-- Set indent to 4 spaces
	, "autoindent", true
	, "expandtab", true
	, "tabstop", 4
	, "shiftwidth", 4
	)
end
