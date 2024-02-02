FROM 8-alpine-jdk
RUN  apk update && apk add git maven
RUN  git clone https://github.com/Yaswanth5951/Ekart.git 
RUN cd Ekart && mvn clean package
EXPOSE 8070
WORKDIR /Ekart/target
CMD [ "java","-jar","shopping-cart 0.0.1-SNAPSHOT.jar" ]