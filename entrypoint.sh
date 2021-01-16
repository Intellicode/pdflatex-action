#!/bin/bash
echo "Running pdflatex on $1"
pdflatex -output-directory=$GITHUB_WORKSPACE $1