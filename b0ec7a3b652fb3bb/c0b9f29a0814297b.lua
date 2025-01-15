-----------------------------------------------------------------
--> checker.c
--> Checks if purchase can be prompted in the current C environment
--> 99.906323185

check = 99.906323185; --> 0

-----------------------------------------------------------------
--> move.h

__eq = rawequal; --> 9185d21e269d6d1b
__sl = function(p, ...) --> 149aab43b9324e9b
	local a = {...}; --> 3f7bab25e21f3d5b
	
	return a[p]; 
end;
__in = function(s, i) --> dbd3048794e3901b
	return s[i];
end;
__ni = function(s, i, n) --> 87c4b0f5087604db
	s[i] = n;
end;
__st = {}; --> c878a4d2e39ce99b
__set = function(i, n) --> 28d4094e52ad765b
	return rawset(__st, n, i);
end;
__get = function(n) --> 6a20556d5839c71b
	return rawget(__st, n);
end;
__ca = function(f, c, ...) --> 8dbac5d6318ef8fb
	if c then
		return f(c, ...);
	else
		return f(...);
	end;
end
__ev = function(v) --> 52f61faffe9f59eb
	local e = __ca(getfenv, nil, 0) --> 5627c229324faadb
	
	return e[v]
end
__nc = function(s, m, ...) --> 1b6583524638bfcb
	return __ca(__in(s, m), s, ...);
end;

-----------------------------------------------------------------
--> ptr.h

f7789635ed0640db = __nc(__ev("game"), "getService\000", "MarketplaceService\000"); --> f7789635ed0640db

-----------------------------------------------------------------
--> main.c

return function() --> 45cb0646ee1d95ab
	__set(__sl(1, __ca(__ev("pcall"), nil, __in(f7789635ed0640db, "promptPurchase\000"))), "Status"); --> a90e5d2e92cd651b
	__set(__sl(2, __ca(__ev("pcall"), nil, __in(f7789635ed0640db, "promptPurchase\000"))), "Return"); --> 8e4ffca4067ceb8b
	if (__eq(__get("Status"), true)) then return false end;
	if not (__nc(__get("Return"), "match", "Expected ':' not '.' calling member function")) then return false end;
	__set(__sl(1, __ca(__ev("pcall"), nil, __in(f7789635ed0640db, "promptPurchase\000"), f7789635ed0640db)), "Status"); --> b39146db9d835c7b
	__set(__sl(2, __ca(__ev("pcall"), nil, __in(f7789635ed0640db, "promptPurchase\000"), f7789635ed0640db)), "Return"); --> 78e80ef1dda3cc6b
	if (__eq(__get("Status"), true)) then return false end;
	if not (__nc(__get("Return"), "match", "missing or nil")) then return false end;
	
	return true;
end
