#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex38
#SBATCH --output=example_38.log
#
rm -rf example_38
rm *.png
time Rscript example_38.R
zip -r pirouette_example_38.zip example_38 example_38.R scripts *.png

