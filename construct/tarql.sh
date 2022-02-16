#!/bin/bash
set -u

tarql -H --tabs --dedup 100 construct.sparql test_data.tsv > test_data.ttl
