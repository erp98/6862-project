input="/Users/Ellen/Documents/GitHub/6862-project/data/Argo_Data/GetArgoData_TextFiles/goodjma.txt"
while IFS= read -r line
do
echo "$line"
rsync -avzh --delete vdmzrs.ifremer.fr::argo/$line /Users/Ellen/Desktop/ArgoGDAC/dac/jma
done < "$input"
