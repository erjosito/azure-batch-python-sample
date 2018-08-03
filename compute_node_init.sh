# Timeout to prevent conflicts with other startup activities (apt locks)
sleep 60

# Install some common packages (although not really required for wget)
#apt install -y wget

# Blobfuse: install
wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
#dpkg -i ./packages-microsoft-prod.deb
apt-get install ./packages-microsoft-prod.deb
apt-get update
apt-get install blobfuse fuse

# Blobfouse: prepare
mkdir /mnt/blobfusetmp
mkdir /mnt/blobdrive
# Manage permissions for the blobfuse mount directory
chmod 777 /mnt/blobdrive

# Blobfuse: mount
# Requires having these two env variables: AZURE_STORAGE_ACCOUNT and AZURE_STORAGE_ACCESS_KEY
#blobfuse /mnt/blobdrive --tmp-path=/mnt/blobfusetmp -o attr_timeout=240 -o entry_timeout=240 -o negative_timeout=120 --container-name=mountdrive --log-level=LOG_DEBUG --file-cache-timeout-in-seconds=120
# Since env variables do not work, this variant uses the config file './connection.cfg'
blobfuse /mnt/blobdrive --tmp-path=/mnt/blobfusetmp -o attr_timeout=240 -o entry_timeout=240 -o negative_timeout=120 --log-level=LOG_DEBUG --file-cache-timeout-in-seconds=120 --config-file=./connection.cfg