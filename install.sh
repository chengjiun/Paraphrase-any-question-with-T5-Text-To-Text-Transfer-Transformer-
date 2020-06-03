# conda create -n lightning python=3.7
conda activate lightning
pip install -r requirements

# install apex
mkdir packages
git clone https://github.com/NVIDIA/apex packages/apex
cd packages/apex
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
cd ../../
rm -Rf packages
