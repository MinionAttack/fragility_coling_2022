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

## Download and generation of embedding files

All three parsers contain the input data already adapted to their format. However, the embedding files are missing due to their large size
and need to be downloaded. Most of them are available on the [fastText website][2]. You must download the `text` version and unzip it.

[2]: https://fasttext.cc/docs/en/crawl-vectors.html#models

After downloading the embedding files, you need to process them with the `conllu-conll-tool.py` command line tool available in the `Tools`
folder. You need to use the clean option to remove the first line of the files:

`$ ./conllu-conll-tool.py clean --input embeddings --output cleaned`

For more details, please refer to the `README.md` file located in the tool folder.

After cleaning the embedding files, they must be placed inside the `Embeddings` folder contained in the *SuPar* and *SyntacticPointer*
parser `data` folder (for the *DepToLabel* parser this is not necessary, as it uses the embedding files used by *SuPar*) according to the
structure provided in the `Default_Structure.txt` file, unless you want to modify the paths of the scripts.

After this, it is necessary to generate the files that are not available in *fastText*. You can check which treebanks do not have embedding
files by checking the `Default_Structure.txt` file inside the `Embeddings` folder in the `data` folder. The files ending with `.vectors` are
generated using the `conllu-conll-tool.py` command line tool:

`$ ./conllu-conll-tool.py generate --input no_embeddings --output generated --dimension 300`

**Note:** As *fastText* uses a 300-dimensional vector, the dimension parameter must be set to 300 to maintain consistency.

For more details, please refer to the `README.md` file located in the tool folder.

The generated files have to placed in the same folder as the cleaned embedding files.

### Optional 1

In case you want to use your own version of the [Universal Dependencies (UD)][3] files instead of the files provided in this repository, you
must convert them from *CoNLL-U* format to *CoNLL* format with the `conllu-conll-tool.py` command line tool:

[3]: https://universaldependencies.org/

`$ ./conllu-conll-tool.py convert --input conllu --output conll`

For more details, please refer to the `README.md` file located in the tool folder.

In addition, in the case of *DepToLabel* it is necessary to process them into the appropriate format. For this purpose, the different
`convert_data*.sh` scripts must be executed. (You need to update the paths in the scripts to match your system.)

### Optional 2

For Experiment #2, if you want to replicate the charts and outliers shown in the paper with the `ConllSharedTaskRanking` tool you need to 
unzip the `10-1000000.zip` file in the same folder as *GitHub* has a file size limit of 100 MB.

This file contains the million sets of size 10 generated for the graphs and tables shown in the paper in order to be able to corroborate the
results. If you want to create your ohwn, you must delete the file from the folder and be aware that it takes a long time to create.

## Training and evaluation of the parsers

The scripts provided expect the parser folders to be in the `Desktop` folder of your Linux system, otherwise you will have to update the
*DepToLabel* parser scripts and training configuration files, as it uses some resources located in the *SuPar* folder (this was due to space
limitations on the computer).

Although the directory guidelines are respected in order for the scripts to work, in the case of *DepToLabel* it is necessary to modify each
individual training configuration file to change the user that corresponds to yours. **This cannot be avoided because it is how the parser
itself works and modifying the parser code was beyond the scope of the paper.**

You need to provide your `username` in the `train*.sh` and `test*.sh` scripts of *DepToLabel*, and in each training configuration file
located in the `trained_models` folder.

Once all the paths have been adapted, to train and evaluate the models, first run the desired *train* script and then the corresponding
*test* script.

## Check predicted results

In case no trained models are available, the predicted outputs produced by the trained models can be checked. In the `Results - Scores` 
directory you will find the scripts for calculating the accuracy percentages. 

As noted earlier, these scripts use the `conll18_ud_eval.py` command line tool to measure the accuracy of the predictions. The result 
given by this tool differs in some cases from the exact result produced by the evaluation functionality of the parsers themselves. As can be
seen in the `test*.sh` scripts of each parser, in the evaluation phase, certain parameters are indicated that cannot be specified to this 
tool. In addition, the tool fails with some *SyntacticPointer* predictions as *SyntacticPointer* sometimes predicts several root nodes for 
the same phrase, and in order for the tool to work, this check has been commented out so that it does not throw an error. Therefore, 
sometimes the score matches and sometimes it gives a slightly higher score. **But for a quick glance it can be used**.

As the models are not uploaded to this repository due to the large number and size of models, the correct results reported from the 
evaluation functionality of the parsers can be checked in the `_PDF - Parser Scores` folder. These PDFs contain the values reported by the 
evaluation functionality of the parsers in the trained models and are reported in the paper.

## Licensing agreement

MIT License

Copyright (c) 2022 Iago Alonso Alonso

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
