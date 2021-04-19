#!/usr/bin/env bash

declare -a dirs=(
    #"word_w256_GRU_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_7.5_ann_sps_0.800_dec_prune_cnnFT/run_01/model_compact-177108"
    #"word_w256_GRU_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_60.0_ann_sps_0.975_dec_prune_cnnFT/run_01/model_compact-177108"
    #"word_w256_LSTM_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_7.5_ann_sps_0.800_dec_prune_cnnFT/run_01/model_compact-177108"
    #"word_w256_LSTM_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_60.0_ann_sps_0.975_dec_prune_cnnFT/run_01/model_compact-177108"
    "word_w256_GRU_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_5.0_ann_sps_0.800/run_01/model_compact-531325"
    "word_w256_GRU_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_20.0_ann_sps_0.975/run_01/model_compact-531325"
    "word_w256_LSTM_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_5.0_ann_sps_0.800/run_01/model_compact-531325"
    "word_w256_LSTM_r512_h1_ind_xu_REG_1.0e+02_init_5.0_L1_wg_20.0_ann_sps_0.975/run_01/model_compact-531325"
)

pushd /master/src

for dir in "${dirs[@]}"; do
    python -m utils.save_sparse_model -c "/master/github/sparse-captioning-checkpoints/${dir}" --save_unmasked_model '' --infer_on_test "T"
done

popd

