#Change directory
cd mydockerbuild

#copy docker file
cp dockerfile mydockerbuild\dockerfile

#Bulid the image
docker build -t docker-assignment1 .

#Launch container
docker run -it docker-assignment1
