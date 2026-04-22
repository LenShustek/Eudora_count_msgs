#Count the number of messages in a tree of Eudora mailboxes, based on the TOC file sizes.
#Written by Gemini, 21 April 2026
$total = 0;
Get-ChildItem -Filter *.TOC -Recurse | Where-Object { $_.Name -ne "nndbase.toc" } | ForEach-Object {
    $val = ($_.Length - 104) / 218;
    $total += $val;
    Write-Host "$($_.FullName): $val"
};
Write-Host ("total messages: {0:N0}" -f $total)