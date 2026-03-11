#!/bin/bash

rsync -a --del _site/ ecosustain-local@sites.ime.usp.br:www/
