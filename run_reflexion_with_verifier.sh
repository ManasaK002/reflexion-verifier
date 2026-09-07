#!/bin/bash
# Reflexion WITH the Verifier Agent gating memory (the condition your
# project is proposing). Requires GEMINI_API_KEY to be set.
python main.py \
  --run_name "with_verifier" \
  --root_dir "root" \
  --dataset_path ./benchmarks/humaneval-py.jsonl \
  --strategy "reflexion" \
  --language "py" \
  --model "gemini-2.5-flash" \
  --pass_at_k "1" \
  --max_iters "4" \
  --use_verifier "true" \
  --verifier_model "gemini-2.5-flash" \
  --verbose
