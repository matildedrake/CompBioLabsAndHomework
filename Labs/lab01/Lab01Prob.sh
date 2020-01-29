# take the headers of the PredPreyData and put into a data file. take the tail of the data and add onto task.txt with >>

head -n 1 PredPreyData.csv > Task.txt | tail PredPreyData.csv >> Task.txt 

# only include columns 2-4 in the file
cut -f 2-4 -d , Task.txt  
