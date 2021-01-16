#!/bin/bash
echo "Running pdflatex on: $1"
echo "Current directory: $(pwd)"
echo "Output directory: $GITHUB_WORKSPACE"
ls
pdflatex -output-directory=$GITHUB_WORKSPACE $1