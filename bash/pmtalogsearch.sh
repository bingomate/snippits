#/bin/bash




email=(
ginamarieippolito@gmail.com

)

for f in ${email[@]}; do
awk '/'"$f"'/' /home/justin/Downloads/*.csv	
done


