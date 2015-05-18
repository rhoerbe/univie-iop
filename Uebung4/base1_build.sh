cat base1_schema.ttl > base1_ontology.ttl
xsltproc base1_elt_study.xslt base1.xml | perl -pe 's/^\s+\:/:/' >> base1_ontology.ttl
xsltproc base1_elt_modulegroup.xslt base1.xml | perl -pe 's/^\s+\:/:/' >> base1_ontology.ttl
xsltproc base1_elt_module.xslt base1.xml | perl -pe 's/^\s+\:/:/' >> base1_ontology.ttl
xsltproc base1_elt_course.xslt base1.xml | perl -pe 's/^\s+\:/:/' >> base1_ontology.ttl
rapper -i turtle -o rdfxml base1_ontology.ttl > base1_ontology.rdfxml