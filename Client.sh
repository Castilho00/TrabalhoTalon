timestamp=$(date +"%Y%m$d$H$M$S")
nomePasta="projeto$timestamp.tar.gz"
path=$1

echo "Compactando a pasta $nomePasta"
tar -czvf $nomePasta $path

echo "Enviando a pasta $nomePasta ao servidor"
scp -P 22 $nomePasta bruno@192.168.0.12:/var/backups

echo "Removendo o arquvio $nomePasta"
rm $nomePasta