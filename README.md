# Pre-trained Checkpoints

## Models
1. Sparse captioning models in PyTorch and TensorFlow
2. ACORT models


## Create & extract multipart `tar.gz` files

[ref](https://unix.stackexchange.com/a/61776)

- Tar
    1. Compress a directory, split into 90 MB chunks: 
       `tar cvzf - RTrans__baseline/ | split --bytes=90MB - ORT-baseline.tar.gz.`

- Extract
    1. Recombine and extract split files: 
       `cat ORT-baseline.tar.gz.* | tar xzvf -`

