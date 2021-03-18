# Angular remote building script

## Description

This script builds a project you specify on a remote server of yours. This is nice if you have a small vServer to deploy in a production pipeline and you want faster deployments.

## How to use the script
The script itself is pretty straight forward.
The call to the script is as follows:
``./build.sh username path-to-identity-file hostname path-to-angular-project-folder``

That said, there are some basic requirements you'll have to match before you can do this.

### Serverside:
- Obviously, you'll need a server which is accessible with ssh.
- You need an user which has access to npm on the server
- the home directory of the user which will build the script on the server needs a folder called build

### Client:
- Make the script executable after download: ``chmod +x``

Have fun with the script and happy coding!
If you have questions or issues using the script, please create an issue.



