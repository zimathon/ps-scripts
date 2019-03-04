$dirName = $Args[0] #absolute path e.g. "C:\Users\ysasa\Downloads\xml\xml"
$days=$Args[1] #ndays ago e.g. 365
$deleteCompareDate = (Get-Date).AddDays(-1*$days).ToString("yyyyMMdd")
Get-ChildItem -Recurse $dirName | ForEach-Object -Process { 
         # file name format K2_pcs_201901180400.xml
        if($_.Name.Split("_").Length -eq 3) {
            $fileName= $_.Name.Split("_")[2].Substring(0,$_.Name.Split("_")[2].Length -8);
            if ($fileName -lt $deleteCompareDate)  { $_.Delete() }
        }
    } 