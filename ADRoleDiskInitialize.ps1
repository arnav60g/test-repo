
#Install AD role
Install-WindowsFeature AD-Domain-Services

#Initialize New Disk
Initialize-Disk 2 –PartitionStyle MBR
New-Partition -DiskNumber 2 -AssignDriveLetter –UseMaximumSize
$partitions = Get-Partition
$driveletter = $partitions[$partitions.Length - 1].DriveLetter

#Format New Disk
Format-Volume –DriveLetter $driveletter -FileSystem NTFS 