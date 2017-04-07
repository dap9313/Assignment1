#Create directory
mkdir mydockerbuild

#copy docker file
cp dockerfile mydockerbuild

#Change directory 
cd mydockerbuild

#Bulid the image
docker build -t docker-assignment1 .

#Launch container
docker run -it docker-assignment1
