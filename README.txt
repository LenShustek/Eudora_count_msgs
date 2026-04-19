This is a trivial program to count the number of messages in a Eudora .mbx mailbox
by looking for the number of lines that start with the six characters "From: ". 

(It might be an overestimate if there are any lines in the body of
messages that start with "From: ".) 

To count all the messages in a hierarchical directory tree of mailboxes,
run the batch file. It will creates an Excel .CSV file with a line for
each mailbox giving the name, number of messages, and number of lines. 
Add a row at the bottom to sum the number of message and number of lines.

Len Shustek, January 2020
Posted to GitHib April 2026
