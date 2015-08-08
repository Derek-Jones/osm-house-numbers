# clean-street.awk, 7 Aug 15

function print_line()
{
if (($3+0 == $3) &&
    ($4+0 == $4))
   print $0
}


BEGIN {
        FS="|"
        OFS="|"
	dummy_str="###"
        }

         {
	# Is the min/max numeric?
	if (($3+0 != $3) ||
	    ($4+0 != $4))
	   next
# Some roads are empty!
	gsub("  ", "", $2)
	if (($2 == "") ||
	    ($2 == " "))
	   next
        t=split($1, postcode, " ")
        mpost=postcode[1]
        if (ps_cnt[mpost "#" $2] == "")
	   {
           ps_cnt[mpost "#" $2]=$0
	   }
	else
	   {
           if (ps_cnt[mpost "#" $2] != dummy_str)
              print ps_cnt[mpost "#" $2]
	   print $0
           ps_cnt[mpost "#" $2]=dummy_str
	   }
        next
        }


