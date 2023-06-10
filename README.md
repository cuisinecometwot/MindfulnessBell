# MindfulnessBell
A very simple Mindfulness Bell written in Bash scripts

Start with this command line
./script.sh > /dev/null 2>&1 &
This will start the script script.sh in the background, 
redirecting both its standard output and error to /dev/null 
so that they are not printed to the console. 
The & at the end of the command tells the shell to run the 
command in the background and return control to the prompt.

To stop the script, you can end process in Task Manager or
find its process ID (PID) using the ps command and then 
send a SIGTERM signal to it using the kill command.

Installation (if required)
sudo apt install sox

For executing script.sh after boot
First create your startup script @ /path/to/script.sh, 
and make sure it's executable
chmod +x startup.sh
Then set a crontab for it by executing this command:
$ crontab -e
And add the following line in the end 
@reboot  /path/to/script.sh
Now your script script.sh will run at every start.

