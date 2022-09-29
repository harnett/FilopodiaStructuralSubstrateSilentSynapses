for (i=0;i<50;i=i+1)
{
open("/path/to/Example/Example.tif");
roiManager("Open", "path/to/Example/RoiSet.zip");
roiManager("Select", i);
run("Median...", "radius=2 slice");
setAutoThreshold("Percentile dark");
setThreshold(108, 65535);
run("Analyze Particles...", "size=80-Infinity pixel show=Outlines display clear add slice");
roiManager("Select", 0);
roiManager("Rename", i);

roiManager("Save","/path/to/Example/"+i+".roi");
selectWindow("Example.tif");
close();
}

