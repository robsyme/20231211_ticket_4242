#!/usr/bin/env nextflow

process Example {
    input: path(infile)
    output: path("out.txt")
    script: "echo done > out.txt"
}

workflow {
    Channel.fromPath(params.input)
    | Example
}



