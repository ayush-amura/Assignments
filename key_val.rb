def key_val(key=1)
	method = { 1 => '!' , 2=>'@', 3=>'#', 4=> '$', 5=> '%', 6 => '^', 7=> '&', 8=> '*', 9=> '(' }
	return method[key]
end

p key_val(5)

