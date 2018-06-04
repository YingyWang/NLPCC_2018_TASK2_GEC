NLPCC2018_DIR=/home/renhongkai/projects/mlconvgec2018/nlpcc2018/
DIR=$NLPCC2018_DIR//seq2seq+bpe+embed/outputs/mlconv_embed/model1/model_best
# 去除空格（分词信息）
sed 's/ //g' $DIR/output.tok.txt > $DIR/output.tok.txt.remove.spac
# 使用pkunlp进行分词，得到文件$DIR/output.tok.txt.remove.spac.seg
python pkunlp_segment.py --corpus $DIR/output.tok.txt.remove.spac --segsuffix seg 
# 使用m2score计算得分
$NLPCC2018_DIR/m2scorer/m2scorer $DIR/output.tok.txt.remove.spac.seg  ~/projects/mlconvgec2018/nlpcc2018/gold.01
