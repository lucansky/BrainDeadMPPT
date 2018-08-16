OUT=gatema
PRFX=BrainDeadMPPT

mkdir -p $OUT
cp $PRFX-F.Cu.gtl $OUT/$PRFX.top
cp $PRFX-In1.Cu.g2 $OUT/$PRFX.in1
cp $PRFX-In2.Cu.g3 $OUT/$PRFX.in2
cp $PRFX-B.Cu.gbl $OUT/$PRFX.bot

cp $PRFX-F.SilkS.gto $OUT/$PRFX.plt
cp $PRFX-B.SilkS.gbo $OUT/$PRFX.plb

cp $PRFX-F.Mask.gts $OUT/$PRFX.smt
cp $PRFX-B.Mask.gbs $OUT/$PRFX.smb

cp $PRFX-F.Paste.gtp $OUT/$PRFX.tcr
cp $PRFX-B.Paste.gbp $OUT/$PRFX.bcr

cp $PRFX-Edge.Cuts.gm1 $OUT/$PRFX.dim
cp $PRFX-Edge.Cuts.gm1 $OUT/$PRFX.mill

cp $PRFX.drl $OUT/$PRFX.pth

rm -vf $PRFX.zip
cd gatema; zip -r ../$PRFX.zip *

