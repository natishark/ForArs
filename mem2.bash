#!\bin\bash
echo $$ > pid2
for ((i=0; ; i++)); do
for ((j=0; j<10; j++)); do
let k=10*$i+$j
arr[k]=8
done
let ind=$i+1; let ind=$ind%100000
if [[ $i -ne 0 && $ind -eq 0 ]]; then let len=10*$i+10; echo $len >> report2.log; echo $len; fi
done
