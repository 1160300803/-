#每个渠道有多少人投保，保费多少
SQL1="SELECT channel,count(1),sum(fee) from orgdata group by channel;"
hive -e "$SQL1" >1.txt
#年龄、性别和平均商业保费、交强险保费的关系
SQL2="SELECT type,age,avg(fee) from orgdata group by type,age;"
SQL3="SELECT type,sex,avg(fee) from orgdata group by sex,type order by type,sex;"
hive -e "$SQL2" >2.txt
hive -e "$SQL3" >3.txt
#车辆价值和平均商业保费、交强险保费的关系
SQL4="SELECT type,floor(carprice/10000)*10000 as price,avg(fee) from orgdata group by floor(carprice/10000)*10000,type order by type,price"
hive -e "$SQL4" >4.txt
