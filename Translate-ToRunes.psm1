<#
.Synopsis
Translates input phrase into the runic script
.Description
Will translate any text value with the Elder Futhark runes where applicable
.Parameter Phrase
String value to translate
.Parameter ElderOnly
If true then only symbols with an Elder Futhark rune will be translated
If False then all symbols will be translated with nearest rune equivilent
.Example
    # Outputs string value single word
    Translate-ToRunes test $true
.Example
    # outputs tring value multi word
    Translate-ToRunes "test sentence" $false
#>

function Translate-ToRunes()
{
    param(
        [Parameter(Mandatory=$true)]
        [string]$Phrase,
        [Parameter(Mandatory=$true)]
        [bool]$ElderOnly
    )
    $Phrase = $Phrase.ToLower();
    if ($ElderOnly -eq $true)
    {
        $Phrase -replace 'th', [char]0x16A6 `
        -replace 'ng', [char]0x16DC `
        -replace 'kc', [char]0x16B2 `
        -replace 'vw', [char]0x16B9 `
	    -replace 'jy', [char]0x16C3 `
	    -replace 'a', [char]0x16AB `
	    -replace 'b', [char]0x16D2 `
	    -replace 'd', [char]0x16DE `
	    -replace 'e', [char]0x16D6 `
	    -replace 'f', [char]0x16A0 `
	    -replace 'g', [char]0x16B7 `
	    -replace 'h', [char]0x16BB `
	    -replace 'i', [char]0x16C1 `
	    -replace 'l', [char]0x16DA `
	    -replace 'm', [char]0x16D7 `
	    -replace 'n', [char]0x16BE `
	    -replace 'o', [char]0x16DF `
	    -replace 'p', [char]0x16C8 `
	    -replace 'r', [char]0x16B1 `
	    -replace 's', [char]0x16CB `
	    -replace 't', [char]0x16CF `
	    -replace 'u', [char]0x16A2 `
	    -replace 'z', [char]0x16C9 `
    } else{
        $Phrase -replace 'th', [char]0x16A6 `
        -replace 'ng', [char]0x16DC `
        -replace 'kc', [char]0x16B2 `
        -replace 'vw', [char]0x16B9 `
	    -replace 'jy', [char]0x16C3 `
	    -replace 'a', [char]0x16AB `
	    -replace 'b', [char]0x16D2 `
        -replace 'c', [char]0x16CD `
	    -replace 'd', [char]0x16DE `
	    -replace 'e', [char]0x16D6 `
	    -replace 'f', [char]0x16A0 `
	    -replace 'g', [char]0x16B7 `
	    -replace 'h', [char]0x16BB `
	    -replace 'i', [char]0x16C1 `
        -replace 'k', [char]0x16F1 `
	    -replace 'l', [char]0x16DA `
	    -replace 'm', [char]0x16D7 `
	    -replace 'n', [char]0x16BE `
	    -replace 'o', [char]0x16DF `
	    -replace 'p', [char]0x16C8 `
        -replace 'q', [char]0x16E9 `
	    -replace 'r', [char]0x16B1 `
	    -replace 's', [char]0x16CB `
	    -replace 't', [char]0x16CF `
	    -replace 'u', [char]0x16A2 `
        -replace 'v', [char]0x16A1 `
	    -replace 'w', [char]0x16A5 `
        -replace 'x', [char]0x16EA `
        -replace 'y', [char]0x164A `
        -replace 'z', [char]0x16C9 `
    }
}
