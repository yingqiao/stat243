#### Stat 243 Fall 2012
#### Problem Set 1

#### 1.(a)
# Download .csv from FEC
curl -o "CandidateSummary.csv" "http://www.fec.gov/data/CandidateSummary.do?format=csv"

# Extract Senate, and then split into 'REP' and 'DEM'
grep "\"S\"" CandidateSummary.csv | grep "\"REP\"" > REP.csv
grep "\"S\"" CandidateSummary.csv | grep "\"DEM\"" > DEM.csv

# Preprocessing before spliting fields
sed 's/\([^",]\),/\1/g' REP.csv | sed 's/[$"]//g' > REPclean.csv
sed 's/\([^",]\),/\1/g' DEM.csv | sed 's/[$"]//g' > DEMclean.csv

# Sort on total contribution and display the richest five
cut -d ',' -f 2,3,4,5,7,8,20 REPclean.csv | sort -n -r -t ',' -k 7 | head -n 5
cut -d ',' -f 2,3,4,5,7,8,20 DEMclean.csv | sort -n -r -t ',' -k 7 | head -n 5

rm *.csv

#### 1.(b)
curl -o "cn12.zip" "ftp://ftp.fec.gov/FEC/2012/cn12.zip"
curl -o "indiv12.zip" "ftp://ftp.fec.gov/FEC/2012/indiv12.zip"
tar -xvf cn12.zip,indiv12.zip  # get "cn.txt"
