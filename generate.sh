#!/usr/bin/env sh

voiceFolder=voices
outputFiles="A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9" #error times minus plus

generateVoiceFor () {
	voice=$1
	outDir=`pwd`/$voiceFolder/$voice
	for element in $outputFiles
	do
		outFile=$outDir/$element.wav
		if [ ! -f $outFile ]; then
			echo "generating: $voice '$element' as $outFile"
			lowerCase=$(echo $element | tr '[:upper:]' '[:lower:]')
			say -v $voice -o $outDir/tmp.aiff $lowerCase
			sox $outDir/tmp.aiff -t wavpcm -e signed-integer --rate 11025 $outFile
			rm $outDir/tmp.aiff
		fi
	done
}


for file in $voiceFolder/*; do
   if [ -d $file ]; then
      generateVoiceFor $(basename $file)
   fi
done
