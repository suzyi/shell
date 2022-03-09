# anaconda
On windows 10, we usually install 
+ python
+ pytorch
and other packages via anaconda. It has its own terminal "Anaconda Prompt".
### .condarc
Stored in `C:\Users\Jack\.condarc`, ".condarc" file tells "Anaconda Prompt" from where to download packages by info:
```
channels:
  - willyd
  - conda-forge
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/menpo/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/msys2/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
  - defaults
show_channel_urls: true
channel_priority: true
```
### enable basic linux command line in Anaconda Prompt
```
conda install m2-base
```
