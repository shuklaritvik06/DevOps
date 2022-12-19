# Linux Commands

**List files Commands**

- ls   // list
- ls -l  // list files with modes
- ls -a // list all files including hidden too, previous and current Directory paths can also be seen
- ls -R // list all files recursively, even inside the folders
- ls -la // list all with modes, we can combine options like this

**Directory Commands**

- cd DirectoryName   // change Directory
- cd ..  // cd back
- cd ~ // cd home Directory   OR cd
- open DirectoryName  // Open a Directory, also can be used to -  open a file in their default application
- pwd  // Prints the current working Directory location
- mkdir dirName // Make a Directory with a name given
- mkdir -p dir1/middle/dir2 // This command can create parent directories as needed and the middle one

Process ->  Any instance of a running command is called a Process.

Whenever user writes a command in the terminal it will first check for the location in PATH environment variable which can be checked using `echo $PATH`.

You can set the environment variables using the command `export VARIABLENAME=VALUE`. This will be only available for the current instance.

**Files Commands**

`> This will write the content and will erase all the previous content of the exisiting file in which we are writing`
`>> This is used to append the content`

- cat fileName  // Prints the content of the file
- **cat > fileName**  // It will create a file with the given file - name and we can give the content in terminal, after completion we can press `CTRL+D` and this would be written in the file.
- cat file1 file2 ..... >> file2  // This will append the file1, - file2 and so on content to file2
- echo "Hi" > fileName  // It will write Hi in file given.
- touch fileName  // will create a new file
- head fileName // It shows the first 10 lines of the file
- head -n count fileName  // It shows the count number of lines from the file
- tail fileName  // It shows the last 10 lines of the file
- tail -n count fileName // It shows the count number of lines from the file

**Pipe**

`> is redirecting the output to a new file`

- cat file.txt | tr a-z A-Z > newfileName  // The output of cat file.txt would be passed to next command.

- tr -> translate/delete char command

- cat firstCommand \   
secondCommand

**Info Commands**

- **man** // Means Manual, it will show the manual of the particular command in the terminal
- **info** // infocommand reads documentation in the info format. It will give detailed information for a command when compared with the man page.

**Users Loggedin**

- last // Show a listing of last logged in users.
- last -i // Shows the ip address of the logged in users in number dot format
- last -s YYY-MM-DD hh:mm:ss // You can give time too , search since the given time.
- last -t YYY-MM-DD hh:mm:ss // Until the given time

**Copy and Move**

- cp fileName1 fileName2   // Used to Copy file contents to the - other file
- mv currentpath finalpath  // Used to move the files or directories
- mv fileName newName  // Rename the file
- cp -R directoryName newlocation  // recursively copy


**Remove command**

- rm -d DirName  // If empty directory
- rm -r Dirname  // recursive removal , Delete everything inside the dir
- rmdir DirName //same as rm -d, only removes if dir is empty
- rm *.txt // means anything with extension of .txt
- rm -rf file.dir   // FORCE delete **Use with caution**
- rm * // delete every file  **Use with caution** Never run in root

**Root Related commands**

sudo su // Become the root user
sudo commandName // when command need more perms to run successfully.

**Disc Related Commands**

- df // show the disk space
- df -h // free disk space in human readable format
- du // Disk usage statistic for the current directory
- du -h // human readable

**Date/Time Commands**

- date // We can get the current day date time, we can also set the date using this command, using `date --date=STRING`.

**Find/Locate Commands**

- locate "*.txt" // Shows all the files with .txt extension
- find . -name fileName  // In cwd find
- find . -name "*.txt"  // Find all with .txt extension in current - directory
- find . -iname fileName  // Find the file in the current directory - and ignore the case
- find . -type d -name dirName   // Find the directory in the - current Directory
- find DirName  // list all files in that dir
- find . -mmin +10 +mmin -20 // Find all the files in the current directory which is created more than 10 minutes ago and less than 20 min ago
- find . -mtime -10  // less than 10 days ago

cmin -> minutes
ctime -> dates

**User information**

- finger username  // Shows the info of the user
- lslogins // This command is used to print the system accounts, user accounts
- getent // Fetches information from database configured in   `/etc/nssswitch.conf`

**Changing Perms**

- 0 (0,0,0) -> `No Perms`
- 1 (0,0,1) -> `Execute only`
- 2 (0,2,0) -> `Write only`
- 4 (4,0,0) -> `Read only`
- 7 (4,2,1) -> `Read, Write Execute`

777 -> user,group,other

d -> directory
`-` -> file

- chmod u=Perms,g=perms,o=perms fileName
- chmod +x fileName  -> All users executable perms
- chmod a+w,g-rw,o-x fileName  // Add write to all, remove read write from group and remove executable from others

- whoami  // Shows who is currently logged in to the system

**Change Ownership**

sudo chown root fileName  // Ownership changes to root

**Multiple files Execution Command**

- find . -type f -name "*.txt" -exec rm -rf {} +  // {} is placeholder where all outputs are put one by one and + means the command will be executed on all

**Grep Command**

- grep "data" fileName
- grep -w "data" fileName  // find word
- grep -i "data" fileName  // Not case sensitive now
- grep -iw "data" fileName // A word + Not case sensitive
- grep -n "data" fileName  // Shows the line number also on which the match is found
- grep -win "data" fileName  // All three options
- grep -B n "data" fileName // It will show n lines previous to the data
- grep -win "data" ./*.txt  // Current directory search in All
- grep -rwin "data" files // Recursive search
- grep -l "data" fileName // This will show all the files which contain the - given data
- grep -c "data" fileName  // It will show how many times the given match is there

**History Command**

- history  // Shows all the history of Commands
- history -n count // Shows previous count number of commands

**Multiple Commands**

- cd hello;touch Learning.txt;echo "Learning DevOps" > Learning.txt

// Find location of the specific command = which commandName

- less fileName  //Show the content of the file which you want page by page
- more fileName //

**User/Group Commands**

- adduser username  // Add the user
- cat /etc/passwd  //shows the users
- deluser username  //delete the user
- passwd username   //change the user password

// Group means users with the same permission
// There is a unique primary group for each person

- addgroup GroupName
- usermod -a -G GroupName UserName
- grous UserName   // Shows Primary group and secondary(if have)
- gpasswd -d UserName GroupName   //Delete the user from the group
- delgroup GroupName  // Delete the group you want
- **visudo**   // Will open sudoers file in the nano text editor,Navigate to - User privilege section , Add path of the command u want to give the permission of


**Zip Unzip**

- zip resultFileName file1 file2   // This will zip the file
- unzip resultFileName // To unzip


**OS Related commands**


- uname  // Shows which kernel the OS is having
- uname -o // Which type
- uname -m  // Architecture
- uname -r // Kernel Version
- cat /etc/os-release  // Os release info


**CPU**

- lscpu // Prints the CPU details

**Memory**

- free // Free Memory
- free -h // Human readable
- vmstat

- nslookup sitName // Infor of the site , ip

**Cut Command**

cut -c 1-2 fileName  // Get data column wise from a file


**Operators**

- echo "first" && echo "second"  // Second command will only run when the first run successfully
- echo "first" || echo "second"  // Second command will run when the first does not run successfully

**Curl**

- curl sends a request to an endpoint you choose
- curl url  //get request
- curl -X POST url  //Post request
- curl -X POST --data "p1=value1&p2=value2" URL
- curl -X POST -d param1=value1 -d param2=value2 .... URL
- curl -o fileName url  

**Cronjobs**

Command Scheduled to run at a certain time

Crontab =  Manager of Cronjobs , Every user will have their cron tabs


1. crontab -l   -> List the available crontabs
2. crontab -e   -> create a crontab

`* * * * *  (min,hour,day of month,month,day of week) command`

@daily command
@midnight command
@reboot command
@weekly command
@annually command
@yearly command
@hourly command
@monthly command


How to run a script?

* * * * * PATHOFFILE
* * * * * python3 PATHOFFILE



- uptime  -> for how much time the current system is up
- wall message  -> Will broadcast this message to all the users currently logged in
- write  UserName -> this can be used to chat in simple message to other user  currently logged in
- mesg y or n  -> Enable or disable the ability to receive messages
- who -> shows the users logged in to the system
- sort fileName -> Sort the filedata in the ascending order
- sort -r fileName ->  Sort the filedata in the descending order
- shutdown -h TIME -> shut down your linux machine  (eg. shutdown -h now  OR - shutdown -h +10)
