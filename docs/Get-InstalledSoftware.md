---
external help file: TestModule-help.xml
Module Name: TestModule
online version: https://github.com/theposhwolf/utilities
schema: 2.0.0
---

# Get-InstalledSoftware

## SYNOPSIS
Get-InstalledSoftware retrieves a list of installed software

## SYNTAX

```
Get-InstalledSoftware [-Name] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Get-InstalledSoftware opens up the specified (remote) registry and scours it for installed software.
When found it returns a list of the software and it's version.

## EXAMPLES

### EXAMPLE 1
```
Get-InstalledSoftware DC1
```

This will return a list of software from DC1.
Like:
Name			Version		Computer  UninstallCommand
----			-------     --------  ----------------
7-Zip 			9.20.00.0	DC1       MsiExec.exe /I{23170F69-40C1-2702-0920-000001000000}
Google Chrome	65.119.95	DC1       MsiExec.exe /X{6B50D4E7-A873-3102-A1F9-CD5B17976208}
Opera			12.16		DC1		  "C:\Program Files (x86)\Opera\Opera.exe" /uninstall

### EXAMPLE 2
```
Import-Module ActiveDirectory
```

Get-ADComputer -filter 'name -like "DC*"' | Get-InstalledSoftware

This will get a list of installed software on every AD computer that matches the AD filter (So all computers with names starting with DC)

## PARAMETERS

### -Name
{{ Fill Name Description }}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: Computer, ComputerName, HostName

Required: True
Position: 2
Default value: $env:COMPUTERNAME
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### [string[]]Computername
## OUTPUTS

### PSObject with properties: Name,Version,Computer,UninstallCommand
## NOTES
Author: ThePoShWolf

   To add registry directories, add to the lmKeys (LocalMachine)
   
   Microsoft.Win32.RegistryHive
   Microsoft.Win32.RegistryKey

## RELATED LINKS

[https://github.com/theposhwolf/utilities](https://github.com/theposhwolf/utilities)

