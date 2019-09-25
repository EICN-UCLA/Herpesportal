
# to make particles stacks to individual particles
particles_star="../virion_stack/particles_bin1_stack.star"
particles_stack="../virion_stack/particles_bin1_stack.mrcs"
output_folder="particles_bin1_normed"

mkdir $output_folder
cat  ${particles_star} | grep particles | while read line;
do 
    i=`echo $line | awk '{print $4}' | awk -F '@' '{print $1}'`
    trimvol -z $i,$i ${particles_stack} ${output_folder}/1$i".mrc"
done
