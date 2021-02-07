#!/bin/bash
conda activate carlapy3
conda env export | grep -v "^prefix: " > environment.yml
