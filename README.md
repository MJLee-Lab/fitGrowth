# fitGrowth
A function for estimating theoretical total cell counts following drug treatment at intermediate time points when measurements are only made at the beginning and end of an assay. 

# Data Preparation

•	This function estimates population size over time based on experimentally measured total cell counts from t0 and tend time points from SYTOX measurements. 

•	Make sure the function ‘fitGrowth.m’ is in the current working directory

•	Data can be supplied for multiple drug treatment conditions (e.g. concentrations)

•	Replications do not need to be averaged

•	Required input data include cell counts at the beginning (t0) and end (tend) of an experiment, drug concentration, assay length (in hours), and time points at which population size estimates are desired.

# fitGrowth structure

    fitGrowth(data,time_pts)

data – numerical matrix that includes the following information: 

column 1: total cell count at t0 
column 2: total cell count at tend 
column 3: drug concentration (must be numerical) 
column 4: experiment length 

rows: Each row contains a different replicate and/or drug concentration

time_pts – single column vector that contains the intermediate time points (in hours) where calculation of theoretical total cell counts is desired

# Running fitGrowth

•	Generate the data and time_pts variables, as described in fitGrowth structure. 

•	To run the supplied example data (README-fitGrowth_Ex.mat):

     load README-fitGrowth_Ex.mat;


•	To calculate theoretical cell counts at intermediate time points call the function fitGrowth:

    Cell_counts = fitGrowth(data,time_pts)

•	data is a numerical matrix and time_pts is a column vector containing the information described above


•	The function will return a data table where each column represents the theoretical cell counts for a given concentration at the time points defined in the variable time_pts

