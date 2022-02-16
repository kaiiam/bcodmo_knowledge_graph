#!/bin/bash
set -u

# Reset mods
rm dosdp/modules/entity_attribute*
cd dosdp/
make all_modules
cd ..

# Merge BCODMONT modules with DOSDP modules
robot merge --input bcodmo_sm/merged.owl --input dosdp/modules/entity_attribute.owl --input dosdp/modules/entity_attribute_location.owl annotate --ontology-iri "http://test/merged_dosdp.owl" --version-iri "http://test/merged_dosdp.owl" --output bcodmo_sm/merged_dosdp.owl


# Create new owl file with only reasoned axioms (TODO test if this is necessary)
robot reason --reasoner ELK --create-new-ontology true --input bcodmo_sm/merged_dosdp.owl --output bcodmo_sm/reasoned_axioms.owl


# Create test data ttl
cd construct/
./tarql.sh
cd ..
