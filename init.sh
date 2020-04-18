#! /bin/bash -

echo "Lets Init";

print_color() {
#  tput setaf 3;
  echo "Init Step: $1";
#  tput sgr 0;
}

updatePackages() {
  print_color "Update Packages";
  sudo apt-get update;
  # install nmap for scan host in cluster
  sudo apt-get install -y nmap;
}

main() {
	updatePackages;
}

main;
