for dir in "./"*; do
	if [ -d "${dir}" ]; then
		for f in "${dir}/"*".htm"; do
			~/Scripts/htmlslicer.sh "${f}" >> tmp
		done
	fi
done
cat tmp | sort | uniq > alltags.txt
rm tmp
