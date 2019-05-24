SQL="CREATE TABLE IF NOT EXISTS orgdata (type string,id int,age int,sex string,carprice int,day string,fee int,channel string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;"
hive -e "$SQL"

