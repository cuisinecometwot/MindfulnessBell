# Mindfulness Bell
A very simple Mindfulness Bell written in Shell scripts for Linux

**The Mindfulness Bell** is a prominent part of the practice in Plum Village, 
which is a Buddhist monastery and mindfulness practice center founded by 
Zen Master Thich Nhat Hanh. The Mindfulness Bell is used to remind 
practitioners to come back to the present moment and be mindful of 
their breathing and surroundings.

In Plum Village, the Mindfulness Bell is traditionally sounded 
three times a day, marking the beginning of each practice session. 
When the bell rings, everyone stops what they are doing and 
takes a few deep breaths, bringing their attention to the 
present moment and letting go of any distractions or thoughts 
that may have arisen.

In addition to its use during formal meditation sessions, 
the Mindfulness Bell can also be used throughout the day as a tool 
for mindfulness and presence. For example, you might set an alarm 
on your computer to ring periodically throughout the day, 
reminding you to pause and take a few mindful breaths.

**Start the script** with this command line

**./script.sh > /dev/null 2>&1 &**

This will start the script script.sh in the background, 
redirecting both its standard output and error to /dev/null 
so that they are not printed to the console. 
The & at the end of the command tells the shell to run the 
command in the background and return control to the prompt.

To **stop the script**, you can end process in Task Manager or
find its process ID (PID) using the ps command and then 
send a SIGTERM signal to it using the kill command.

**Installation (if required)**

sudo apt install sox

**For executing script.sh after boot**

First locate your script 

@ /path/to/script.sh, 

and make sure it's executable

chmod +x script.sh

Then set a crontab for it by executing this command:

crontab -e

And add the following line in the end 

@reboot  /path/to/script.sh

Now script.sh will run at every start.

