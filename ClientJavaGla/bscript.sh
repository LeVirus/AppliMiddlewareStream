clear;

#Création des sous-répèrtoires
if [ ! -d "WEB-INF" ]; then        mkdir WEB-INF;        fi;
if [ ! -d "WEB-INF/classes" ]; then    mkdir WEB-INF/classes;    fi;

#Compilation des composants java
javac -cp ./servlet.jar:./ice-3.6.1.jar:./icestorm-3.6.1.jar -d WEB-INF/classes *.java biblAudio/*.java

#Création de l'archive
jar cvf ClientJavaGlass.war WEB-INF/*;

#TODO Déploiment.
/home/cyril/Documents/facmasterS2/GlassFish/glassfish4/bin/asadmin deploy --force ClientJavaGlass.war
#asadmin deploy --force ClientJavaGlass.war
