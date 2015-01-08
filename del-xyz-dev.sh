#!/bin/sh

echo start delete
branchName=gcmall-$1

PS4="xxxxx--del--xxxxx:"
set -x

rm -rf ~/hg/$branchName/package

rm -rf ~/hg/$branchName/gcmall_src/gcmall_web/precompiled
rm -rf ~/hg/$branchName/gcmall_src/gcmall_portal/precompiled

rm -rf ~/hg/$branchName/gcmall_src/gcmall_web/dist
rm -rf ~/hg/$branchName/gcmall_src/gcmall_portal/dist

rm -rf ~/hg/$branchName/gcmall_src/gcmall_web/logs/*.*
rm -rf ~/hg/$branchName/gcmall_src/gcmall_portal/logs/*.*

set +x
echo end delete
