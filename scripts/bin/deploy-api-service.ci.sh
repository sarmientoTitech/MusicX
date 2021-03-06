echo "======================================="
echo "Working Directory:"
cd /Users/sarmiento/Desktop/programming/developer/MusicX/
pwd

echo "\n======================================="
echo "Building App"

echo "\n======================================="
cd "packages/common"
yarn build
cd ../..

cd "packages/api"
yarn codegen
yarn build
cd ../..

echo "\n======================================="
echo "Pushing App Release"

value=`cat .api-version`

new_value=$((value+1))

echo $new_value > .api-version

git add -A

git commit -m "autocommit api service"

git push

git tag "musicx-api-v$value"

git push --tags

echo "\n======================================="

echo "Done!"
say -v samantha "Deploy Music X API, Done!"
