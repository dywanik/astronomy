# +-------------------------------+
# |      github.com/dywanik       +
# +-------------------------------+
#
# Extracts keplerian orbital elements from Two Line Element Set Catalog
# output: satellite number, eccentricity, inclination [deg],
# Right ascension of the ascending node [deg], Argument of perigee [deg],
# semi-major axis [km].
awk 'NR%2==0' tle | rev |cut -c 8- |rev | awk '{print $2 " " "0." $5 " " $3 " " $4 " " $6 " " (((3.986004418*10^(14))/(($8*(2*3.14159265359)/(86400)))^2)^(1/3))/1000}' > tle_my
