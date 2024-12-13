# Gestion du stockage

1.
**fdisk -l** pour voir les périphériques
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/1.png?raw=true)

2.
pour préparer la partition du deuxième disque de 10G **cfdisk /dev/sdb**
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/2.png?raw=true)
on choisi DOS

3.
on procède avec la partition du disque en 2 parties: une de 6G et la deuxième de 4G
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/4.png?raw=true)
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/5.png?raw=true)

4.
**mkfs.ext4 -L DATA /dev/sdb1** pour le formatage de la première partition en ext4
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/6.png?raw=true)

5.
**fdisk /dev/sdb2** et on prépare la deuxième partition pour qu'elle soit de type SWAP
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/7.png?raw=true)

6.
on reboot et après on crée un dossier **mkdir /mnt/data** et on tape **nano /etc/fstab** pour modifier la fichier que permettera à la partition DATA d'être montée automatiquement au démarrage du système dans un dossier data placé dans /mnt.
L'**UUID (Universally Unique Identifier)** est un identifiant unique attribué à chaque partition ou disque dur et on le retrouve en tapant **blkid**
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/8.png?raw=true)

7.
Après **reboot**
![](https://github.com/Barbara-eli/TSSR-Checkpoint-1/blob/main/Ressources/10.png?raw=true)
