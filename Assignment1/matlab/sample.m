function h = sample(Theta,cc,vv)
nvisible = size(Theta,1);
nhidden = size(Theta,2);
disp(nvisible);
disp(nhidden);
nsamples = size(vv,2);
assert(size(cc,1) == nvisible);
assert(size(vv,1) == nhidden);
zz = Theta*vv + repmat(cc,[1 nsamples]);

h = sigmoid(zz) > rand(size(Theta,1),nsamples);
end