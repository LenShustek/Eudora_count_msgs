This is a C program to tally the number of messages in a Eudora .mbx mailbox by
counting lines that start with the 13 characters "From ???@??? ". 

To count all the messages in a hierarchical directory tree of mailboxes, run the 
countmsgs.bat batch file from the root directory of the tree with the .exe program 
also there. It will creates an Excel .CSV file with a line for each mailbox giving 
the name, number of messages, and number of lines. Add a row at the bottom to sum 
the number of messages and the number of lines.

*** A better way:

That C program includes in the count the deleted messages in uncompacted mailboxes. 
An alternative -- and faster -- approach is to look only at the .toc table of 
contents files. Each has a 104-byte header, and then 218 bytes for each active (not 
deleted) message in the mailbox. So the number of active messages in the mailbox is 
(size-104)/218. 

Gemini wrote the code in the PowerShell script pcountmsgs.ps1, which does that for 
all mailboxes starting in the current directory tree, and sums the result.

To run it, store that .ps1 file, and the pcountmsgs.bat batch file, in the root 
directory of your mailbox tree. Then double-click the name of the batch file.

Len Shustek, January 2020
Posted to GitHib April 2026
