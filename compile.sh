#!/bin/sh

echo "Purging old build...."
rm -rf dist
rm -rf build

echo "Creating new app...."
python setup.py py2app
cp HVR* dist/gORAnalysis.app/Contents/Resources/.

echo "Done!"
