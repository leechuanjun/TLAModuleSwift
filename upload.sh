#!/bin/bash

# git stash
# git pull origin master --tags
# git stash pop

# VersionString=`grep -E 's.version.*=' TLAModuleSwift.podspec`
# VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

# NewVersionNumber=$(($VersionNumber + 1))
# LineNumber=`grep -nE 's.version.*=' TLAModuleSwift.podspec | cut -d : -f1`
# sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" TLAModuleSwift.podspec

# echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

# git add .
# git commit -am ${NewVersionNumber}
# git tag ${NewVersionNumber}
# git push origin master --tags
# cd ~/.cocoapods/repos/TLPods && git pull origin master && cd - && 
pod repo push TLPods TLAModuleSwift.podspec --verbose --allow-warnings

