VM Setup using Vagrant and Chocolatey

1. Open up terminal or command prompt.

2. Type in 'vagrant init datacastle/windows7'. This will create a Vagrantfile.

3. Add the boostrap.bat and installJava.bat file in the directory where you have the vagrantfile.

3. Open up the Vagrantfile and type in 'config.vm.provision :shell, path: "bootstrap.bat"' and 'config.vm.provision :shell, path: "installJava.bat' after the line containing config.vm.box="datacastle/windows7"

4. Use the command 'vagrant up'.

5. Following can be observed:
    Base box image is downloaded and added in Vagrant.
    
    Virtual machine is created and loaded using this VirtualBox.
    
    VM is launched in GUI mode.
    
    Java 1.7 is installed using Chocolatey.
    
    The OS will be active for 90 days.

6. If you would like to check the java version type in 'java -version'.

References
  1. Vagrant box can be found at [datacastle/windows7](https://atlas.hashicorp.com/datacastle/boxes/windows7)

  2. Chocolatey script [github](https://github.com/chocolatey/choco/wiki/Installation#command-line)
