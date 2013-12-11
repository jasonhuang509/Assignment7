function testdouble()
assert(Pak.double(0)==0);
assert(Pak.double(3)==6);
assert(Pak.double(-2)==-4);
assert(Pak.double(2+2i)==4+4i);
disp('double OK');
end
