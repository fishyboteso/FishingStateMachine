VERSION="$(cat FishingStateMachine.txt  | grep "## Version:" | cut -d":" -f2 | xargs)"
rm FishingStateMachine*.zip
mkdir FishingStateMachine
cp FishingStateMachine.txt FishingStateMachine.lua FishingStateMachine
7z a -r FishingStateMachine-$VERSION.zip FishingStateMachine
rm -rf FishingStateMachine