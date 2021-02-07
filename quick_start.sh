# Download CARLA 0.9.6
# wget http://carla-assets-internal.s3.amazonaws.com/Releases/Linux/CARLA_0.9.6.tar.gz
#mkdir carla_lbc
#tar -xvzf CARLA_0.9.6.tar.gz -C carla_lbc
#cd carla_lbc

# Download LBC
#git init
#git remote add origin https://github.com/dianchen96/LearningByCheating.git
# rename the LICENSE file to avoid conflicts during the pull
#mv LICENSE CARLA_LICENSE 
#git pull origin release-0.9.6
mkdir -p tmp
cd tmp
wget http://www.cs.utexas.edu/~dchen/lbc_release/navmesh/Town01.bin
wget http://www.cs.utexas.edu/~dchen/lbc_release/navmesh/Town02.bin
cd ..
# Create conda environment
#conda env create -f environment.yml
conda activate carlapy3

# Install carla client
easy_install-3.7 libs/carla-0.9.11-py3.7-linux-x86_64.egg

# Download model checkpoints
mkdir -p ckpts/image
cd ckpts/image
wget http://www.cs.utexas.edu/~dchen/lbc_release/ckpts/image/model-10.th
wget http://www.cs.utexas.edu/~dchen/lbc_release/ckpts/image/config.json
cd ../..
mkdir -p ckpts/priveleged
cd ckpts/priveleged
wget http://www.cs.utexas.edu/~dchen/lbc_release/ckpts/privileged/model-128.th
wget http://www.cs.utexas.edu/~dchen/lbc_release/ckpts/privileged/config.json
cd ../..
docker build . -t laser-lab/carla-dist:9.11.0
