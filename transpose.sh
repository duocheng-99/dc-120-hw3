#!/bin/bash
#$ -N REDUCE
#$ -q gpu2

module load  cuda/8.0
module load  gcc/4.9.0

echo "Script began:" `date`
echo "Node:" `hostname`
echo "Current directory: ${PWD}"

echo ""
echo "=== Running 5 trials of transpose ... ==="
for trial in 1 2 3 4 5; do
  echo "*** Trial ${trial} ***"
  ./transpose
done

echo ""
echo "=== Done! ==="

# eof
