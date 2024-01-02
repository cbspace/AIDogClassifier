### AI Dog Classifier Program

This program takes input images and classifies them. For example it can identify birds, dogs, coffee mugs etc. Images are categorised
by type and dog images will be identified as a dog breed. The program utilises three different pre-trained CNN models (ResNet, VGG and Alexnet).
This project was created as part of the RMIT/Udacity Nanodegree "AI Programming with Python"
<pre>
usage: check_images.py [-h] [--dir DIR] [--arch ARCH] [--dogfile DOGFILE]

options:
  -h, --help                   show this help message and exit  
  --dir DIR                    Directory containing image files for model classification  
  --arch {vgg,resnet,alexnet}  CNN model to use  
  --dogfile DOGFILE            Text file containing dog breed names  

Example:
`python check_images.py --dir pet_images/ --arch resnet --dogfile dognames.txt`
</pre>
