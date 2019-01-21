$dirName = $Args[0] #absolute path e.g. "C:\Users\ysasa\Downloads\xml\xml"
$days=$Args[1] #ndays ago e.g. 365
$dir = Get-ChildItem -Recurse $dirName
foreach($x in $dir)  
    {  
        # file name format K2_pcs_201901180400.xml
        if($x.Name.Split("_").Length -lt 2){continue}
        $fileName= $x.Name.Split("_")[2].Substring(0,$x.Name.Split("_")[2].Length -8);
        $deleteCompareDate = (Get-Date).AddDays(-1*$days).ToString("yyyyMMdd")
        if ($fileName -lt $deleteCompareDate)  
            {$x.Delete()}  
    } 