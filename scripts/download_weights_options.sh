CUR_DIR=`pwd`
MODEL_PATH=${CUR_DIR}/saved_models

SMALL=https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x2048_256_2048cnn_1xhighway/elmo_2x2048_256_2048cnn_1xhighway
MEDIUM=https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x2048_256_2048cnn_1xhighway/elmo_2x2048_256_2048cnn_1xhighway
ORIGINAL=https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway
ORIGINAL_55B=https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway_5.5B/elmo_2x4096_512_2048cnn_2xhighway_5.5B

mkdir ${MODEL_PATH}
cd ${MODEL_PATH}
wget --no-check-certificate ${SMALL}_weights.hdf5
wget --no-check-certificate ${SMALL}_options.json
wget --no-check-certificate ${MEDIUM}_weights.hdf5
wget --no-check-certificate ${MEDIUM}_options.json
wget --no-check-certificate ${ORIGINAL}_weights.hdf5
wget --no-check-certificate ${ORIGINAL}_options.json
wget --no-check-certificate ${ORIGINAL_55B}_weights.hdf5
wget --no-check-certificate ${ORIGINAL_55B}_options.json

cd ../