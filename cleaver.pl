% simple protype of a set of compliance rules


% is this rule ready to execute?

ok_to_go(X) :- hasState(X,_); inScope(X,_).
ok_to_go(X) :- hasPred(X,B); inScope(X,B).


%recursive definitions of the four basic rule types. 

hasState(X,Y) :- state(X,Y).       
hasState(X,Y) :- state(X,Z), hasState(Z,Y).   

inScope(X,A) :- scope(X,A).
inScope(X,A) :- scope(X,E), inScope(E,A).

hasPred(X,B) :- pred(X,B).
hasPred(X,B) :- pred(X,D), hasPred(D,B).

isSuper(X) :- hasState(X,_); super(X).





%%%% Test Atoms %%%%

super(real).
state(real, "this is a test state").
scope(test, target).
scope(target, real).
pred(real, target).






	

	