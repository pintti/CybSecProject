FROM ubuntu:16.04
RUN apt-get update && apt-get install -y openssh-server exiftool
RUN mkdir /var/run/sshd
RUN useradd -m csp_demo
ADD demo_tasks /home/csp_demo/
RUN chown csp_demo /home/csp_demo/namelist.txt /home/csp_demo/kissa.jpg /home/csp_demo/unimportant_notes/notes1.txt /home/csp_demo/unimportant_notes/.flag
# Sets the password for the user csp_demo, might want to change this line
RUN echo 'csp_demo:demosalis' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
