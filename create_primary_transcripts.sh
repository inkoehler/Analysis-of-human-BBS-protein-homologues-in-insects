#!/bin/sh
for name in *fa; do python ../primary_transcripts.py "$name"; done
