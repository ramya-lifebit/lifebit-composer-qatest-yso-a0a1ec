nextflow.enable.dsl=2

include { download_reads_1 } from './modules/download_reads_1/module.nf'
include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { download_reads_2 } from './modules/download_reads_2/module.nf'
include { test_r_1 } from './modules/test_r_1/module.nf'
include { download_reads_3 } from './modules/download_reads_3/module.nf'

workflow {
input1 = Channel.fromPath(params.download_reads_1.accessions).splitCsv()
input2 = Channel.fromPath(params.download_reads_2.accessions).splitCsv()
input3 = Channel.fromPath(params.test_r_1.accessions).splitCsv()
input4 = Channel.fromPath(params.download_reads_3.accessions).splitCsv()
download_reads_1(input1)
download_reads_2(input2)
test_r_1(input3)
download_reads_3(input4)
fastqc_1(download_reads_1.out.output1)
}
