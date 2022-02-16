#############################################################

#### -- dosdp pattern targets -- ####

## DOSDP pattern targets modified from ENVO version
MODS = entity_attribute entity_attribute_location
ALL_MODS_OWL = $(patsubst %, modules/%.owl, $(MODS))
ALL_MODS_CSV = $(patsubst %, modules/%.csv, $(MODS))

## Modules make targets modified from ENVO's version
all_modules: all_modules_owl #all_modules_obo
all_modules_owl: $(ALL_MODS_OWL)

# Targets for DOSDP modules #this will work when it's only the DOSDP but it'll will maybe apply this same pattern to all owl files in modules/ or at least those called from all_modules
modules/%.owl: templates/%.csv patterns/%.yaml curie_map.yaml
	dosdp-tools generate --table-format=csv --template=patterns/$*.yaml --outfile=modules/$*.tmp.owl --obo-prefixes=true --infile=templates/$*.csv
	robot annotate --input modules/$*.tmp.owl -O http://test/modules/$*.owl --output modules/$*.owl && rm modules/$*.tmp.owl
