# conll-shared-task-tool

![build](https://img.shields.io/badge/build-passing-success) ![build](https://img.shields.io/badge/license-MIT-success) ![build](https://img.shields.io/badge/python-3.8%2B-blue) ![build](https://img.shields.io/badge/platform-linux--64-lightgrey)

Table of contents.

1. [Summary](#summary)
2. [How to use](#how-to-use)
3. [Examples](#examples)
4. [Licensing agreement](#licensing-agreement)

## Summary

This is a tool to download the CoNLL Shared Task classification tables and perform metrics on them. It also allows to perform metrics on
local results and display outliers for a parser.

This script has 5 features:

1. Download the parser ranking tables from the Conll Shared Task website for a particular year.
2. Calculate different metrics on the downloaded data by displaying the results on screen and generating the respective graphs.
3. For the data calculated in the local experiments, it obtains the classification of the parsers used.
4. For a parser, show the outliers observed in the graphs.
5. For outliers of a parser, calculate some statistics on them.

**It is important to note that the script uses the _data_, _experiments_, _cache_ and _charts_ folders as the base directory for some features.**

## How to use

Install the necessary dependencies listed in the `requirements.txt` file.

`$ pip3 install -r requirements.txt`

To run the script, from a terminal in the root directory, type:

`$ ./conllSharedTasks.py`

This will show the usage:

```
usage: conllSharedTasks.py [-h] {rankings,metrics,experiments,outliers} ...

Gets the rankings and shows some metrics on the CoNLL Shared Task of the specified year or in custom experiments.

optional arguments:
  -h, --help            show this help message and exit

Commands:
  {rankings,metrics,experiments,outliers}
    rankings            Get the classification results of the specified type and year from the website.
    metrics             Gets the indicated metric on the selected CoNLL Shared Task dataset.
    experiments         For a ranking, gets a leaderboard of the parsers used in the customised experiments.
    outliers            For a given parser, it shows the subsets in which it obtained its best position.
```

If you want to know how to use a specific command, for example the *rankings* command, type:

`$ ./conllSharedTasks.py rankings --help`

And it will show the help:

```
usage: conllSharedTasks.py rankings [-h] --type {all,las,mlas,blex,uas,clas,upos,xpos,ufeats,alltags,lemmas,sentences,words,tokens} --year {17,18}

optional arguments:
  -h, --help            show this help message and exit
  --type {all,las,mlas,blex,uas,clas,upos,xpos,ufeats,alltags,lemmas,sentences,words,tokens}
                        The type of the ranking.
  --year {17,18}        The year of the shared task.
```

### Note

If you get an error that you do not have permissions to run the script, type:

`$ chmod u+x conllSharedTasks.py`

Run the script again.

## Examples

### Preliminary clarification

For each type of metric, the website distinguishes between individual treebank rankings and group rankings. The differences between this
distinction should be taken into account when indicating the _--section_ parameter.

### 1. Download the data

To download all the rankings for 2018:

`$ ./conllSharedTasks.py rankings --type all --year 18`

To download a specific ranking for the year 2018:

`$ ./conllSharedTasks.py rankings --type blex --year 18`

### 2. Calculate the metrics

For a specific classification:

`$ ./conllSharedTasks.py metrics --ranking blex --section individual --treebank_set_size 10 --sampling_size 100000 --cache_samples yes`

To indicate several classifications at the same time, they must be separated by spaces:

`$ ./conllSharedTasks.py metrics --ranking las uas blex --section individual --treebank_set_size 10 --sampling_size 100000 --cache_samples yes`

**Note**: Use _--cache_samples_ to store the generated subsets on disk and save time on subsequent invocations of the command.

### 3. Show the classification table of the parsers used in the local experiments.

This command expects a given directory and file structure:

```
experiments/
├── metric_1
│   └── section_type
│       ├── treebank.csv
│       └── ...
└── metric_2
    └── section_type
        ├── treebank.csv
        └── ...
```

With the data attached to this repository, only the options of the _LAS_ and _UAS_ are available. If you want to add more metrics, you have
to modify the command line in the _conllSharedTasks.py_ file, indicating in the _choices_ option the new metrics.

`subparser.add_argument('--ranking', type=str, choices=['las', 'uas', 'new_option_1', 'new_option_2', ...], nargs='+', required=True, help="The ranking(s) to compare scores. To indicate several at the same time, they must be separated by spaces.")`

For a specific metric:

`$ ./conllSharedTasks.py experiments --ranking las --section individual --treebank_set_size 10 --sampling_size 100000 --cache_samples yes`

To indicate several metrics at the same time, they must be separated by spaces:

`$ ./conllSharedTasks.py experiments --ranking las uas --section individual --treebank_set_size 10 --sampling_size 100000 --cache_samples yes`

**Note**: Use _--cache_samples_ to store the generated subsets on disk and save time on subsequent invocations of the command.

### 4. Show the outliers

__Note__: Because parser names contain spaces or single quotes, the name must be enclosed in double quotes.

For a specific parser in a specific metric:

`$ ./conllSharedTasks.py outliers --parser "HIT-SCIR (Harbin)" --section individual --ranking las --limit 20 --show_best no --treebank_set_size 10 --sampling_size 100000 --cache_samples yes`

To indicate several parsers and/or metrics at the same time, they must be separated by spaces:

`$ ./conllSharedTasks.py outliers --parser "HIT-SCIR (Harbin)" "AntNLP (Shanghai)" --section individual --ranking las uas --limit 20 --show_best no --treebank_set_size 10 --sampling_size 100000 --cache_samples yes`

- **show_best**: This parameter controls whether the best outliers (yes) or the worst outliers (no) are displayed.
    - Showing the best outliers makes sense in the case of parsers that perform poorly in general, but have subsets where they do much
      better than expected.
    - Showing the worst outliers makes sense in the case of parsers that perform well in general, but have subsets where they do much worse
      than expected.

**Note**: Use _--cache_samples_ to store the generated subsets on disk and save time on subsequent invocations of the command.

### 5. Calculate outliers statistics

`$ ./conllSharedTasks.py statistics --file Desktop/statistics_worst_udpipe-future.csv`

The file must be a *CSV* without spaces between the values, for example:

```
hr_set,fo_oft,cs_pud,ko_gsd,th_pud,he_htb,cs_pdt,uk_iu,hsb_ufal,pl_sz
pl_sz,la_ittb,pcm_nsc,th_pud,hi_hdtb,hsb_ufal,grc_proiel,ko_kaist,sl_sst,ug_udt
fa_seraji,it_postwita,no_nynorsklia,hsb_ufal,ca_ancora,ru_syntagrus,es_ancora,fo_oft,ur_udtb,nl_alpino
uk_iu,sr_set,hsb_ufal,hi_hdtb,en_ewt,sl_sst,cs_pdt,ja_gsd,pcm_nsc,sv_talbanken
en_gum,es_ancora,cs_pdt,pl_sz,hu_szeged,ja_gsd,gl_ctg,ja_modern,hsb_ufal,ko_kaist
```

## Licensing agreement

MIT License

Copyright (c) 2021 Iago Alonso Alonso

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "
Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
