#!/bin/bash
# Baseline: plain Reflexion, verifier OFF. Run this with the exact same
# dataset/model/max_iters as run_reflexion_with_verifier.sh so the two
# logs are directly comparable for your ablation.
python main.py \
  --run_name "baseline_no_verifier" \
  --root_dir "root" \
  --dataset_path ./benchmarks/humaneval-py.jsonl \
  --strategy "reflexion" \
  --language "py" \
  --model "gemini-2.5-flash" \
  --pass_at_k "1" \
  --max_iters "4" \
  --use_verifier "false" \
  --verbose
