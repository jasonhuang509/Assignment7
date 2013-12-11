function testaddtwo()
assert(Pak.addtwo(-2)==0);
assert(Pak.addtwo(0)==2);
assert(Pak.addtwo(9)==11);
assert(Pak.addtwo(1+2i)==3+2i);
disp('addtwo OK');
end
