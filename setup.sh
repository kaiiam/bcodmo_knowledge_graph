#!/bin/bash
set -u

## Download BCODMONT Modules

mkdir bcodmo_sm
cd bcodmo_sm/

# wget --no-check-certificate https://raw.githubusercontent.com/BCODMO/bcodmont/main/src/ontology/BCODMO_SM/chemistry/element.owl
#
# wget --no-check-certificate https://raw.githubusercontent.com/BCODMO/bcodmont/main/src/ontology/BCODMO_SM/matrix/material.owl
#
# wget --no-check-certificate https://raw.githubusercontent.com/BCODMO/bcodmont/main/src/ontology/BCODMO_SM/quantifiers/quantifiers.owl

## Merge BCODMONT modules
robot merge --input element.owl --input material.owl --input quantifiers.owl annotate --ontology-iri "http://test/merged.owl" --version-iri "http://test/merged.owl" --output merged.owl
