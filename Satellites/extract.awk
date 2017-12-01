# +-------------------------------+
# |      github.com/dywanik       +
# +-------------------------------+
#
# Extracts keplerian orbital elements from Two Line Element Set Catalog
# output: satellite number, eccentricity, semimajor axis, inclination [deg],
# Right ascension of the ascending node [deg], Argument of perigee [deg],
# true anomaly.
awk 'NR%2==0' tle | awk '{print $2 " " "0." $5 " " "a" " " $3 " " $4 " " $6 " Om"}'
