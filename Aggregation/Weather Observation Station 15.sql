 select Round(LONG_W,4)
 from  STATION
 where LAT_N = (Select Max(LAT_N)from STATION where LAT_N < 137.2345);