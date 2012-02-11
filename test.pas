//tests arrays
program test3;
Type
	array1d = Array [0..9] of Integer;
var
	A,B : array1d;
	I : Integer;
	size:integer;
begin
	size := 6;
	For I:=0 to size do
		begin 
				A[I] := I;
				writeln (a[i]);
		end;
	writeln;
	For I:=0 to size do
		begin 
				B[I] := 4;
		end;
	
	a := b;		// changing reference of array 'a'
	
	For I:=0 to size do
		begin 
				writeln (a[i]);
		end;
	writeln;
	writeln (a[b[2]]);
end.
