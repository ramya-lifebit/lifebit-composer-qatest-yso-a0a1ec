# QATest -Yso

## Description

Test

## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_download_reads

**Description**: Downloads FastQ reads using SRA toolkit's fasterq-dump when provided with a list of accession numbers. For this component, reads are downloaded uncompressed.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva, @tiagofilipe12

### lifebitai_fastqc

**Description**: Quality control assessment of FastQ files using FastQC.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva

### lifebitai_test_r

**Description**: A mock R script.\
**Inputs**: 1\
**Outputs**: 0\
**Parameters**: 0\
**Authors**: 

### lifebitai_test_python

**Description**: A mock python script.\
**Inputs**: 1\
**Outputs**: 0\
**Parameters**: 0\
**Authors**: 

## Inputs

- `--download_reads_1.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--download_reads_2.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--test_r_1.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--download_reads_3.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--test_python_1.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
