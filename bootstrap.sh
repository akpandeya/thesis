#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Usage: boostrap.sh <name of main tex file>"
    exit 1
fi

if [[ ! -e latex-report ]]; then
    echo "Call this script from the directory including the 'latex-report' repository"
    exit 1
fi

if [[ -e main.tex ]]; then
    echo "Error: main.tex already exists"
    exit 1
fi

# Name of the main LaTeX file
mainfile="${1}.tex"

# Copy all boostrap files
cp -iv latex-report/bootstrap/main.tex "$mainfile"
cp -iv latex-report/bootstrap/metadata.tex .
cp -iv latex-report/bootstrap/.gitignore .

# Create directories for figures and LaTeX output files
mkdir -p fig
mkdir -p dist

# Create git repository and make initial commit
if [[ ! -e .git ]]; then
    git init
    git add .
    git commit -m "bootstrapped from latex-report"
fi
