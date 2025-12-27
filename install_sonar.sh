# Change to Root User => 
sudo su
# Update OS => 
yum update -y
# Install Java => 
sudo yum install java-17-amazon-corretto -y
# Change dir => 
cd /opt

# Install Sonarqube Server
# Install wget and unzip softwares
yum install wget unzip -y

# Download sonarqube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.0.0.68432.zip

# Unzip sonarqube
unzip sonarqube-10.0.0.68432.zip

# Change filename to sonarqube
mv sonarqube-10.0.0.68432 sonarqube

# Add sonar User
useradd sonar

# Login to visudo and add permissions for sonar user
visudo
# Add permissions same as root

# Change the owner and group permissions to /opt/sonarqube directory
chown -R sonar:sonar /opt/sonarqube/
chmod -R 755 /opt/sonarqube/
su - sonar
cd /opt/sonarqube/bin/linux-x86-64/
./sonar.sh start

# Check sonarQube status
./sonar.sh status

# Sonar Token
# myFirstSonarQubeSetup: sqp_4fab0ab76732561eb349d292a2bdb9f3dcc38d60
