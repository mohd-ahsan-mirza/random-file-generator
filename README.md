# Project
I built this command line tool for generating files on the fly for a given size in kb/mb. I was testing an sftp connection so I was generating some files manually. That's when I came up with this solution

# Setup
* Pull the repo
* If you are using a Mac or a Linux OS, you can add the file path as an alias in the ```bash_profile```. To load your changes ```source ~/bash_profile```

# Usage
```
$1 = File name
$2 = File size
```
## Examples
```
{absolute path to generate_file.sh} random.txt 12mb
```
Generates a random.txt file of size 12mb in your current directory
```
gen-file random.txt 20kb
```
Generates a random.txt file of size 20kb in your current directory. ```gen-file``` is an alias in bash_profile in this example

# Limitations
* Currently on supports files sizes in kb and mb

