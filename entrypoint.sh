#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

 #build project here

branch=${GITHUB_REF##*/}
echo $(git diff master $branch)
#Execute taint impact here ?
