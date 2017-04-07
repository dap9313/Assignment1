#Change directory and copy docker file to it. 
cd mydockerbuild

#Bulid the image
docker build -t docker-assignment1 .

#Launch container
docker run -it docker-assignment1
