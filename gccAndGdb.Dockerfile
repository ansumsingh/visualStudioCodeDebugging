from ubuntu:latest

RUN apt-get upgrade

RUN apt update && apt install -y g++ \
    curl 

RUN apt install -y make 

RUN apt install -y gdb

#Install VS Code in order to install ms-vscode.cpptools extension
# RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 
# && install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ \
# && sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' \
# && apt-get install apt-transport-https \
# && apt update && apt install -y code

# RUN code --install-extension ms-vscode.cpptools --user-data-dir /usr/vs-code-data

