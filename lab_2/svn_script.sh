#!/bin/sh
svnadmin create lab
cd lab

svn mkdir -m 'create directory' file:///home/studs/s335138/MSP/lab/trunk file:///home/studs/s335138/MSP/lab/branches file:///home/studs/s335138/MSP/lab/tags
cd ..
svn checkout file:///home/studs/s335138/MSP/lab/trunk/ workdir
cd workdir

unzip -o -d . ../commits/commit0.zip
svn add * --force
svn commit -m 'r0' --username=denis

svn copy file:///home/studs/s335138/MSP/lab/trunk file:///home/studs/s335138/MSP/lab/branches/addred -m 'addred' --username=denis
svn switch file:///home/studs/s335138/MSP/lab/branches/addred

unzip -o -d . ../commits/commit1.zip
svn add * --force
svn commit -m 'r1' --username=denis

svn copy file:///home/studs/s335138/MSP/lab/branches/addred file:///home/studs/s335138/MSP/lab/branches/blue -m 'blue' --username=yaroslav
svn switch file:///home/studs/s335138/MSP/lab/branches/blue
rm *
unzip -o -d . ../commits/commit2.zip
svn add * --force
svn commit -m 'r2' --username=yaroslav


svn switch file:///home/studs/s335138/MSP/lab/branches/addred
rm *
unzip -o -d . ../commits/commit3.zip
svn add * --force
svn commit -m 'r3' --username=denis

rm *
unzip -o -d . ../commits/commit4.zip
svn add * --force
svn commit -m 'r4' --username=denis

svn switch file:///home/studs/s335138/MSP/lab/trunk
rm *
unzip -o -d . ../commits/commit5.zip
svn add * --force
svn commit -m 'r5' --username=denis


svn switch file:///home/studs/s335138/MSP/lab/branches/blue
rm *
unzip -o -d . ../commits/commit6.zip
svn add * --force
svn commit -m 'r6' --username=yaroslav

svn switch file:///home/studs/s335138/MSP/lab/trunk
rm *
unzip -o -d . ../commits/commit7.zip
svn add * --force
svn commit -m 'r7' --username=denis


svn switch file:///home/studs/s335138/MSP/lab/branches/blue
rm *
unzip -o -d . ../commits/commit8.zip
svn add * --force
svn commit -m 'r8' --username=yaroslav


svn switch file:///home/studs/s335138/MSP/lab/branches/addred
rm *
unzip -o -d . ../commits/commit9.zip
svn add * --force
svn commit -m 'r9' --username=denis


svn switch file:///home/studs/s335138/MSP/lab/trunk
svn update
svn merge --force file:///home/studs/s335138/MSP/lab/branches/addred
svn revert *
unzip -o -d . ../commits/commit10.zip
svn add * --force
svn commit -m 'r10' --username=denis

svn switch file:///home/studs/s335138/MSP/lab/branches/blue
rm *
unzip -o -d . ../commits/commit11.zip
svn add * --force
svn commit -m 'r11' --username=yaroslav

svn switch file:///home/studs/s335138/MSP/lab/trunk
rm *
unzip -o -d . ../commits/commit12.zip
svn add * --force
svn commit -m 'r12' --username=denis

svn switch file:///home/studs/s335138/MSP/lab/branches/blue
rm *
unzip -o -d . ../commits/commit13.zip
svn add * --force
svn commit -m 'r13' --username=yaroslav

svn switch file:///home/studs/s335138/MSP/lab/trunk
svn up
svn merge --force file:///home/studs/s335138/MSP/lab/branches/blue
svn revert *
unzip -o -d . ../commits/commit14.zip
svn add * --force
svn commit -m 'r14' --username=denis
