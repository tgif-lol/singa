#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

export PYTHONPATH=$PYTHONPATH:./internal/ml/model_selection
conda activate trails



########################## CPU ##############################
# this is run on cpu, only change the device==cpu for all above

# frappe
python3 ./internal/ml/model_selection/exps/micro/benchmark_filtering_latency_concurrent.py \
  --concurrency=8 \
  --embedding_cache_filtering=True \
  --tfmem=express_flow \
  --models_explore=5000 \
  --log_name=score_based \
  --search_space=mlp_sp \
  --num_layers=4 \
  --hidden_choice_len=20 \
  --base_dir=/hdd1/xingnaili/exp_data/ \
  --num_labels=2 \
  --device=cpu \
  --batch_size=32 \
  --dataset=frappe \
  --nfeat=5500 \
  --nfield=10 \
  --nemb=10 \
  --workers=0 \
  --result_dir=./internal/ml/model_selection/exp_current_filter_cache/ \
  --log_folder=log_score_time_frappe_cache

#criteo
python3 ./internal/ml/model_selection/exps/micro/benchmark_filtering_latency_concurrent.py \
  --embedding_cache_filtering=True \
  --tfmem=express_flow \
  --models_explore=5000 \
  --log_name=score_based \
  --search_space=mlp_sp \
  --num_layers=4 \
  --hidden_choice_len=10 \
  --base_dir=/hdd1/xingnaili/exp_data/ \
  --num_labels=2 \
  --device=cpu \
  --batch_size=32 \
  --dataset=criteo \
  --nfeat=2100000 \
  --nfield=39 \
  --nemb=10 \
  --workers=0 \
  --result_dir=./internal/ml/model_selection/exp_current_filter_cache/ \
  --log_folder=log_score_time_frappe_cache

# uci
python3 ./internal/ml/model_selection/exps/micro/benchmark_filtering_latency_concurrent.py \
  --embedding_cache_filtering=True \
  --tfmem=express_flow \
  --models_explore=5000 \
  --log_name=score_based \
  --search_space=mlp_sp \
  --num_layers=4 \
  --hidden_choice_len=20 \
  --base_dir=/hdd1/xingnaili/exp_data/ \
  --num_labels=2 \
  --device=cpu \
  --batch_size=32 \
  --dataset=uci_diabetes \
  --nfeat=369 \
  --nfield=43 \
  --nemb=10 \
  --workers=0 \
  --result_dir=./internal/ml/model_selection/exp_current_filter_cache/ \
  --log_folder=log_score_time_frappe_cache


# here is concurrent run but no embedding cache
#######################################################################################

# frappe
python3 ./internal/ml/model_selection/exps/micro/benchmark_filtering_latency_concurrent.py \
  --tfmem=express_flow \
  --models_explore=5000 \
  --log_name=score_based \
  --search_space=mlp_sp \
  --num_layers=4 \
  --hidden_choice_len=20 \
  --base_dir=/hdd1/xingnaili/exp_data/ \
  --num_labels=2 \
  --device=cpu \
  --batch_size=32 \
  --dataset=frappe \
  --nfeat=5500 \
  --nfield=10 \
  --nemb=10 \
  --workers=0 \
  --result_dir=./internal/ml/model_selection/exp_current_filter_no_cache/ \
  --log_folder=log_score_time_frappe_cache

#criteo
python3 ./internal/ml/model_selection/exps/micro/benchmark_filtering_latency_concurrent.py \
  --tfmem=express_flow \
  --models_explore=5000 \
  --log_name=score_based \
  --search_space=mlp_sp \
  --num_layers=4 \
  --hidden_choice_len=10 \
  --base_dir=/hdd1/xingnaili/exp_data/ \
  --num_labels=2 \
  --device=cpu \
  --batch_size=32 \
  --dataset=criteo \
  --nfeat=2100000 \
  --nfield=39 \
  --nemb=10 \
  --workers=0 \
  --result_dir=./internal/ml/model_selection/exp_current_filter_no_cache/ \
  --log_folder=log_score_time_frappe_cache

# uci
python3 ./internal/ml/model_selection/exps/micro/benchmark_filtering_latency_concurrent.py \
  --tfmem=express_flow \
  --models_explore=5000 \
  --log_name=score_based \
  --search_space=mlp_sp \
  --num_layers=4 \
  --hidden_choice_len=20 \
  --base_dir=/hdd1/xingnaili/exp_data/ \
  --num_labels=2 \
  --device=cpu \
  --batch_size=32 \
  --dataset=uci_diabetes \
  --nfeat=369 \
  --nfield=43 \
  --nemb=10 \
  --workers=0 \
  --result_dir=./internal/ml/model_selection/exp_filter_exp_current_filter_no_cachecache/ \
  --log_folder=log_score_time_frappe_cache


