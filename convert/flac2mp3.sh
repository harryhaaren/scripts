mkdir t

for I in *.flac; do
  flac -d --stdout "$I" | lame -V0 --vbr-new - t/"$I"
done

for I in *.flac; do
  id3cp -2 "$I" t/"$I"
done

for I in t/*.flac; do
  base=`basename "$I" .flac`
  mv "$I" t/"$base".mp3
done
