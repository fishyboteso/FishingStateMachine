for f in $(find . -name "*.lua"); do
    if [ $(cat $f | grep logger | grep -v "^ *--" | wc -l) -gt 0 ]; then
        echo -e "Attention! There are loggers in the source code\n"
        read
    fi
done
VERSION="$(cat FishingStateMachine.txt  | grep "## Version:" | cut -d":" -f2 | xargs)"
rm FishingStateMachine*.zip
mkdir FishingStateMachine
cp FishingStateMachine.txt FishingStateMachine.lua FishingStateMachine
7z a -r FishingStateMachine-$VERSION.zip FishingStateMachine
rm -rf FishingStateMachine