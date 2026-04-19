if exist counts.csv del counts.csv
for /R %%f in (*.mbx) do count_mbx_msgs "%%f" >>counts.csv
