#!/bin/bash
set -u

# Create tripestore from reasoned product
tdb2.tdbloader --loc DB construct/test_data.ttl bcodmo_sm/merged_dosdp.owl bcodmo_sm/reasoned_axioms.owl
