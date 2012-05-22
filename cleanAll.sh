#!/usr/bin/env sh

voiceFolder=voices

find $voiceFolder/*/ -type f -name "*.wav" -execdir rm -rf {} \;
