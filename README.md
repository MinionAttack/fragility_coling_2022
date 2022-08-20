# The Fragility of Multi-Treebank Parsing Evaluation - Coling 2022

## Introduction

This repository contains the tools used to develop *The Fragility of Multi-Treebank Parsing Evaluation* paper presented at [Coling 2022][1].

[1]: https://coling2022.org/

## Structure of the repository

This repository is organised to facilitate the use of the different tools when replicating the results of the paper, but it does not contain
all the necessary files. Some of them due to their size and the limitations of the *GitHub* platform itself.

- Parsers: Contains the parsers used in the paper.
- Results - Scores: Contains the prediction files and the scripts to calculate the scores in case the evaluation function of the parsers
  cannot be used because no models are trained or are not available.[^1]
- Tools: It contains the tools used to manipulate the files and adapt them to the needs of the parsers used in the paper.

[^1]: Disclaimer: In this case the script `conll18_ud_eval.py` is used and has been adapted to work with the *SyntacticPointer* parser to
avoid throwing an error if a sentence has multiple *root* nodes. The values in the paper are obtained from the output of the evaluation
scripts of each parser using its own evaluation function with corresponding arguments, so the scores may vary slightly.

## Installation

When installing tools and parsers, it is strongly recommended to create a virtual environment for each of them to avoid conflicts with
dependencies:

`python3 -m venv /path/to/new/virtual/environment`

The scripts already contain the command to activate the virtual environment (when necessary).

Each tool and parser includes its own `requirements.txt` file with which to install its dependencies and its respective `README.md` with all
the necessary information about its use.

## Usage

