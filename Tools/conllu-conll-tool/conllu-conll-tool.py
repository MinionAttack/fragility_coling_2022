#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from argparse import ArgumentParser, Namespace
from pathlib import Path
from typing import Any

from modules import columns_generator, combiner, splitter, converter, cleaner, filler, embeddings_generator, remove_pos


def main() -> None:
    parser = ArgumentParser(description='Convert CoNLL-U files to CoNLL files')
    subparsers = parser.add_subparsers(title='Commands', dest='command')

    input_help = "Input file(s) folder"
    output_help = "Output file(s) folder"
    dimension_help = "Vector dimension size"

    # Convert
    subparser = subparsers.add_parser('convert', help='Convert from CoNLL-U format to CoNLL format.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)
    # Combine
    subparser = subparsers.add_parser('combine', help='Combine multiple files from one phase (train, validation or test) into one file.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)
    subparser.add_argument('--type', choices=['train', 'dev', 'test'], required=True, help='The type of files to combine')
    # Split
    subparser = subparsers.add_parser('split', help='In case there is no validation file (dev), the training file (train) is split in '
                                                    'two with a random 80-20 ratio.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)
    # Clean
    subparser = subparsers.add_parser('clean', help='Cleans up an embedding file by removing the first line with the number of words and '
                                                    'the vector size.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)
    # Fill in
    subparser = subparsers.add_parser('fill', help='Add a label (with the given name) for unknown words with random values, using a '
                                                   'fixed seed for the given dimension.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--label', type=str, required=True, help='Name of the label to be inserted')
    subparser.add_argument('--dimension', type=int, required=True, help=dimension_help)
    subparser.add_argument('--position', type=int, help='Indicates the position in which to insert the label')
    # Generate
    subparser = subparsers.add_parser('generate', help='Generates a random embeddings file with the specified dimension from the '
                                                       'training and validation file.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)
    subparser.add_argument('--dimension', type=int, required=True, help=dimension_help)
    # Add columns
    subparser = subparsers.add_parser('columns', help='Adds the required number of columns to the end of each line of a CoNLL file to '
                                                      'match the CoNLL-U format of 10 tab-separated columns.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)
    # Remove POS
    subparser = subparsers.add_parser('remove-pos', help='Removes POS information on every line of a sentence. The content is replaced by '
                                                         'a _.')
    subparser.add_argument('--input', type=str, required=True, help=input_help)
    subparser.add_argument('--output', type=str, required=True, help=output_help)

    arguments = parser.parse_args()
    if arguments.command:
        process_arguments(arguments)
    else:
        parser.print_help()


def process_arguments(arguments: Namespace) -> None:
    print("INFO: Processing arguments")

    base_path = "output"

    command = arguments.command
    if command == "convert":
        input_folder = arguments.input
        output_folder = arguments.output
        converter_handler(base_path, input_folder, output_folder)
    elif command == "combine":
        input_folder = arguments.input
        output_folder = arguments.output
        file_type = arguments.type
        combiner_handler(base_path, input_folder, output_folder, file_type)
    elif command == "split":
        input_folder = arguments.input
        output_folder = arguments.output
        splitter_handler(base_path, input_folder, output_folder)
    elif command == "clean":
        input_folder = arguments.input
        output_folder = arguments.output
        cleaner_handler(base_path, input_folder, output_folder)
    elif command == "fill":
        input_folder = arguments.input
        label = arguments.label
        dimension = arguments.dimension
        position = arguments.position
        filler_handler(base_path, input_folder, label, dimension, position)
    elif command == "generate":
        input_folder = arguments.input
        output_folder = arguments.output
        dimension = arguments.dimension
        embeddings_generator_handler(base_path, input_folder, output_folder, dimension)
    elif command == "columns":
        input_folder = arguments.input
        output_folder = arguments.output
        columns_generator_handler(base_path, input_folder, output_folder)
    elif command == "remove-pos":
        input_folder = arguments.input
        output_folder = arguments.output
        remove_pos_handler(base_path, input_folder, output_folder)
    else:
        print(f"Error: Command {command} is not recognised")


FOLDERS_ERROR_MESSAGE = "Error: Check that the arguments are folders and not files, and that the folders exist"
FOLDER_ERROR_MESSAGE = "Error: Check that the argument is a folder and not a file, and that the folder exists"


def converter_handler(base_path: str, input_folder: str, output_folder: str) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        converter.walk_directories(input_path, output_path)
    else:
        print(FOLDERS_ERROR_MESSAGE)


def combiner_handler(base_path: str, input_folder: str, output_folder: str, file_type: str) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        combiner.walk_directories(input_path, output_path, file_type)
    else:
        print(FOLDERS_ERROR_MESSAGE)


def splitter_handler(base_path: str, input_folder: str, output_folder: str) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        splitter.walk_directories(input_path, output_path)
    else:
        print(FOLDERS_ERROR_MESSAGE)


def cleaner_handler(base_path: str, input_folder: str, output_folder: str) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        cleaner.walk_directories(input_path, output_path)
    else:
        print(FOLDERS_ERROR_MESSAGE)


def filler_handler(base_path: str, input_folder: str, label: str, dimension: int, position: Any) -> None:
    input_path = Path(base_path).joinpath(input_folder)

    if input_path.is_dir():
        if filler.validate_parameters(label):
            filler.walk_directories(input_path, label, dimension, position)
        else:
            print("Error: The label may only contain letters")
    else:
        print(FOLDER_ERROR_MESSAGE)


def embeddings_generator_handler(base_path: str, input_folder: str, output_folder: str, dimension: int) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        embeddings_generator.walk_directories(input_path, output_path, dimension)
    else:
        print(FOLDERS_ERROR_MESSAGE)


def columns_generator_handler(base_path: str, input_folder: str, output_folder: str) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        columns_generator.walk_directories(input_path, output_path)
    else:
        print(FOLDERS_ERROR_MESSAGE)


def remove_pos_handler(base_path: str, input_folder: str, output_folder: str) -> None:
    input_path = Path(base_path).joinpath(input_folder)
    output_path = Path(base_path).joinpath(output_folder)

    if input_path.is_dir() and output_path.is_dir():
        remove_pos.walk_directories(input_path, output_path)
    else:
        print(FOLDERS_ERROR_MESSAGE)


if __name__ == "__main__":
    main()
