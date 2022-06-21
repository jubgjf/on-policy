#!/bin/sh
env="MPE"
scenario="simple_spread" # simple_speaker_listener # simple_reference
num_landmarks=3
num_agents=3
algo="rmappo"
exp="check"
seed_max=1

echo "env is ${env}, scenario is ${scenario}, algo is ${algo}, exp is ${exp}, max seed is ${seed_max}"
for seed in $(seq ${seed_max}); do
  echo "seed is ${seed}:"
  python render/render_mpe.py --save_gifs --env_name ${env} --algorithm_name ${algo} --experiment_name ${exp} --scenario_name ${scenario} --num_agents ${num_agents} --num_landmarks ${num_landmarks} --seed ${seed} --n_training_threads 1 --n_rollout_threads 1 --use_render --episode_length 25 --render_episodes 5 --model_dir "/home/yuchao/project/xxxx"
done
