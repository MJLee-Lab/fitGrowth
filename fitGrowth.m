function data_T = fitGrowth(data,time_pts)

[g dose] = findgroups(data(:,3))
max(g)

theoret = [];

for i = 1:max(g)
    x = data(g==i,4);
    y = data(g==i,1:2)
    x = [zeros(length(x),1);x]
    f = fit(x,y(:),'exp1')
    theoret(:,i) =  f(time_pts);
end
data_T = array2table(theoret,'VariableNames',strcat('Dose',string(dose)))
data_T.time = time_pts;
end