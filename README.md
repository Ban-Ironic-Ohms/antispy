# antispy
## What is this?
antispy is a project I made today that just kills the application 'classroom windwows' and prevents it from running
this is meant only as a proof of concept, and to demonstrate the vurnabilites of the software, and is not meant as something to allow students to prevent the spyware. Incidently, it also improves battery life.
## How to use (to learn)
There are 2 files included here. As this is a proof of concept, everything is working, at least on my machine. 
`antispy.bat` is a file that actually runs the kill script. It checks at 1 second intervils for the presence of the application, and if it finds it, it terminates it. 
`antispy.vbs` is a file that calls `antispy.bat` and runs it withought a command prompt instance showing up. This means it can run in the background, further showing the vulnerability
