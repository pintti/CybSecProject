# Demo

Contains demo tasks for:
1. Directory traversal (using `cd` and `ls`) in the `beginning` folder
2. Finding hidden files using `ls -a` and reading files with `cat` in the `unimportant_notes` folder
3. Using `cat` to read files and `base64` decoding with the `namelist.txt` file
4. Using `exiftool` to check the metadata of an image with the `kissa.jpg` file

### Steps to run:

(The commands might be slightly different based on the OS/distro)

1. Traverse to the `demo` directory and build the image with `sudo docker build -t csp_demo_image .`
2. Start the container with `sudo docker run -d -p 2222:22 --name csp_demo_container csp_demo_image`
3. Find the IP address for the container with `sudo docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' csp_demo_container`
4. Connect to the container with `ssh csp_demo@<ip:address>`. The password is `demosalis` unless changed in the Dockerfile.
5. The container can be stopped with `sudo docker stop csp_demo_container`.

#### Notes:

The Dockerfile is very quickly scratched together for a demo and should not be used as is or taken as an example for anything else.
