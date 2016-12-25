#!/bin/bash

printf '# date=20161221 \n'
date=20161221
printf '\n'

printf '# echo $date \n'
echo $date
printf '\n'

printf '# echo \date \n'
echo \date
printf '\n'

printf "# echo \'\$date\' \n"
echo '$date'
printf '\n'

printf "# echo \'\\\$date\' \n"
echo '\$date'
printf '\n'

printf "# echo \"\$date\" \n"
echo "$date"
printf '\n'

printf "# echo \"\\\$date\" \n"
echo "\$date"
printf '\n'

printf "# echo \"\`date\`\"  \n"
echo "`date`"
printf '\n'


# echo "$'date'"
echo -e "test \v test"








# this is an error
#echo "\`date`"

#printf "# echo \'blah \'blah\' \n"
#echo 'blah 'blah''
#printf '\n'

#printf "#echo \'blah \'\\blah\'\' \n"
#echo 'blah '\blah''
#printf '\n'

#echo '\\'
#printf '\n'

#echo "\\"
#printf '\n'


