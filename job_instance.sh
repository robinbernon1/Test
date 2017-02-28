#!/bin/bash
#PBS -N matconvnet
#PBS -M qichen.li@st-annes.ox.ac.uk
#PBS -m abe
#PBS -q parallel


# Set output and error directories
#PBS -o localhost:~/Reports/results_${PBS_JOBID}.out
#PBS -e localhost:~/Reports/results_${PBS_JOBID}.err

# Ensure job was launched correctly in PBS -o directory.
#echo $par_1 

# Launch matlab and change directory to folder containing matlab script, then run. 
# Parameter is passed in as a string and hence str2num must be applied inside matlab script.
/usr/local/bin/matlab -nodesktop -nodisplay -nosplash -noFigureWindows -r "cd ../../../scratch/mindblowing/qichen/cnn; ls; cd code; paths; cnn_Ndetect_kfold_f;"
