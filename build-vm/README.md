# VM setup using Vagrant and Chocolatey
  1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
  2. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  3. Open up terminal or command prompt.
  4. Type in 'vagrant init datacastle/windows7'. This will create a Vagrantfile.
  5. Add the installChocolatey.bat, installSW.bat and powerShellDownload.bat files in the directory where you have the vagrantfile.
  6. Open up the Vagrantfile and type in 
    'config.vm.provision :shell, path: "installChocolatey.bat"'
    'config.vm.provision :shell, path: "installSW.bat"' 
    'config.vm.provision :shell, path: "powerShellDownload.bat'
after the line containing config.vm.box="datacastle/windows7"
  7. Use the command 'vagrant up provider --provider virtualbox' to start the machine.
  8. Following can be observed:
    * Base box image is downloaded and added in Vagrant.
    * Virtual machine is created and loaded using VirtualBox.
    * VM is launched in GUI mode.
    * Chocolatey is installed.
    * Java 1.7 is installed using Chocolatey.
    * Eclipse is installed using Chocolatey.
    * The tool Evolve is downloaded and set up.
    * Readme, License and Installation files are added.
    * Shortcut link to the tool is create.
    * Shortcut link to the video demonstration is created
    * Evolve opens up at startup.
    * USB is disabled. 
    * The OS will be active for 90 days.

## Run the tool 
  * Follow the steps mentioned [here](https://github.com/SoftwareEngineeringToolDemos/ICSE-2011-Evolve)

## Validation
  1. Open command prompt using `cmd` from windows-run
  2. Type `java -version`
    * Java version should be displayed.

## References
  1. Vagrant box can be found at [datacastle/windows7](https://atlas.hashicorp.com/datacastle/boxes/windows7).
  2. Chocolatey script [githubpage](https://github.com/chocolatey/choco/wiki/Installation#command-line).
  3. Eclipse luna.
