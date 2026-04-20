This is a program to tally the number of messages in a Eudora .mbx mailbox by
counting lines that start with the 13 characters "From ???@??? ". 

To count all the messages in a hierarchical directory tree of mailboxes, run
the batch file from the root directory of the tree with this program also there. 
It will creates an Excel .CSV file with a line for each mailbox giving the name, 
number of messages, and number of lines. Add a row at the bottom to sum the number 
of messages and the number of lines.

Note that this counts deleted messages in uncompacted mailboxes. An alternative 
approach is to look only at the .toc (table of contents) files. Each has a 104-byte
header, and then 218 bytes for each active message in the mailbox. So the number of
messages is (size-104)/218. 

Gemini wrote the following PowerShell script to do that for all mailboxes starting
in the current directory tree, and to sum the result:

   $total = 0; 
   Get-ChildItem -Filter *.TOC -Recurse | Where-Object { $_.Name -ne "nndbase.toc" } | ForEach-Object {
       $val = ($_.Length - 104) / 218; 
       $total += $val; 
       Write-Host "$($_.FullName): $val"
   }; 
   Write-Host "`nTotal Sum: $total"

It works, and is super fast!

Len Shustek, January 2020
Posted to GitHib April 2026
