echo "======================================="
echo "Working Directory:"
pwd
echo "\n======================================="
echo "Building App"
say -v samantha "Building App"

echo "\n======================================="
cd "packages/common"
yarn build
cd ../..

cd "packages/api"
yarn build
cd ../..

echo "\n======================================="
echo "Pushing App Release"
say -v samantha "Pushing app release"

git add -A

if [ $# -eq 0 ]
  then
    git commit -m "autocommit"
  else
    git commit -m "autocommit api service"
fi
git push

git tag "musicx-api-release-v$1"

git push --tags

echo "\n======================================="

echo "Done!"
say -v samantha "Done"