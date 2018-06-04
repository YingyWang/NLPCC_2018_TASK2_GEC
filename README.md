# 
This is the code of our team (Zlbnlp) for the NLPCC 2018 Shared Task 2 Grammatical Error Correction.

## Usage
### Prerequisites
* python3.6
* pytorch0.2.0
* m2score scripts
* libgrass-ui toolkit
* Go to CS2S+BPE+Emb/software/fairseq-py directory and run  

```
pip install -r requirements.txt
python setup.py build 
python setup.py develop  
```


### Data
The data and embeddings can be found in the [Zlbnlp_data](https://pan.baidu.com/s/18JXm1KGmRu3Pe45jt2sYBQ).
You need manually split the whole dataset into two parts. 
* training dataset:contain 1,215,876 sentence pairs.Filepaths is CS2S+BPE+Emb/data/train.tok.src, CS2S+BPE+Emb/data/train.tok.trg 
* development dataset:contain 5k sentence pairs.Filepaths is CS2S+BPE+Emb/data/dev.tok.src, CS2S+BPE+Emb/data/dev.tok.trg 
* test data is source.txt.jieba.seg,using jieba toolkit.

### Data processing
1.Go to CS2S+BPE+Emb/training/ directory
2.Run ./preprocess.sh script

### Training

* Training command

    The command below is what we used to train an model on the NLPCC-2018 Task 2 dataset.
```
./train_embed.sh
```

### Decoding
The following is the command used to generate outputs and F0.5 score:
```
cd CS2S+BPE+Emb/
./run.sh ./data/source.txt.jieba.seg ./output/CS2S+BPE+Emb/ 0 ./traning/models/mlconv_embed/model1
cd libgrass-ui/
./remove_spac_pkunlp_segment.sh 
````

## Contact
If you have questions, suggestions and bug reports, please email renhongkai27@gmail.com.
