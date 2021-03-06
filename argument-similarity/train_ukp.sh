#!/bin/sh
for split in 0 1 2 3
do
    DATA_DIR=./datasets/ukp_aspect/splits/${split}
    python train.py --task_name ukp_aspects --do_train --seed 1 --do_eval --do_lower_case --data_dir $DATA_DIR/ --train_file "train.tsv" --dev_file "dev.tsv" --test_file "test.tsv" --bert_model bert-base-uncased --max_seq_length 64 --train_batch_size 32 --learning_rate 2e-5 --num_train_epochs 3.0 --output_dir "./bert_output/ukp/seed-1/splits/${split}"
done

