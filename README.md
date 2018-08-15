# Networking
Ping is a networking utility program or a tool to test if a particular host is reachable. It is a diagnostic that checks if your computer is connected to a server. Ping, a term taken from the echo location of a submarine, sends data packet to a server and if it receives a data packet back, then you have a connection.
This is exactly what is being done here.
In order to achieve the above motive I have designed a
program in JAVA using NetBeans IDE that checks for the
reachability of a particular host whose link id is to be provided
by the user. 
A database is created in derby database which
keeps the details of all the link ids, their respective location, ip
address and other necessary details. Whenever we select a
particular link id the program automatically retrieves the details
it requires from this database. The program then runs and
returns the status of the host by retrieving the PING output.
Ping is a networking utility program or a tool to test if a
particular host is reachable. It is a diagnostic that checks if your
computer is connected to a server. Ping, a term taken from the
echo location of a submarine, sends data packet to a server
and if it receives a data packet back, then you have a
connection. 
The term &quot;ping&quot; can refer to the time it takes for a

data packet to travel round-trip. It means &quot;get the attention of&quot;
or &quot;check the presence of&quot;. In a computer network, a ping test
is a way of sending messages from a computer to another.
Aside from checking if the computer is connected to a network,
ping also gives indicators of the reliability and general speed of
the connection.
Ping Test
A ping test is a method of checking if the computer is
connected to a network. It also determines the latency or delay
between two computers. It is used to ensure that a host
computer which your computer tries to access is operating. A
ping test is run for troubleshooting to know connectivity as well
as response time.

Now we are having the status of the host and simultaneously
the details of the down time and up time and durations of
downtime are saved in another derby database which keeps
the daily records. Similarly there are many such tables that
keep record of the daily, monthly, percentage wise details etc.
Later on at the end of each month we have the total up and
down details of all the ids and thus I have made a graphical
representation through bar graphs.
The entire project has been completed using java only. Actually
it is a java web application consisting of
1-HTML pages
2-CSS pages
3-JSP pages
4-java application
5-a database consisting of 5 tables that is integrated to the web
application using JDBC driver.
6-The project also uses a local server (I have used glassfish 4.0)
to provide a platform for the project to run on.

Apart from this the frontend part constitutes of a login
authentication page that can be operated by the members of a
particular organisation as per requirement.
After one is logged in successfully, we can add link details, view
delete save and update the details. One can test the
reachability and stop when required. We can view the tabular
and graphical details as well.
