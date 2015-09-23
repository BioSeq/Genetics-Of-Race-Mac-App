#!/bin/sh

echo "Purging old build...."
rm -rf dist
rm -rf build

echo "Creating new app...."
python setup.py py2app
cp HVR* dist/gORAnalysis.app/Contents/Resources/.

echo "Compressing app...."
cd dist
tar -zcvf gORAnalysis.app.tar.gz gOrAnalysis.app

echo "Transfering app to remote...."
scp -rp gORAnalysis.app.tar.gz philb@linux.cs.tufts.edu:/h/philb/public_html/app

echo "Cleaning up...."
rm gORAnalysis.app.tar.gz

echo "Done!"
