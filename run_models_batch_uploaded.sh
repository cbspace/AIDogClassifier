#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.sh
#                                                                             
# PROGRAMMER: Jennifer S.
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 
# PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch_uploaded.sh    -- will run program from commandline within Project Workspace
#  
### Modified by Craig Brennan 01/01/2024 to place output files in a directory named "output"

if [ ! -d "output" ]
then
    mkdir "output"
fi

python check_images.py --dir uploaded_images/ --arch resnet  --dogfile dognames.txt > output/resnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --arch alexnet --dogfile dognames.txt > output/alexnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --arch vgg  --dogfile dognames.txt > output/vgg_uploaded-images.txt
