# Fake-Crypto | A Fake Look-alike Cryptlocker Ransomware
Created to test the incident response handeling of a look-alike CryptoLocker ransomware.

## 🚀 Introduction
I wanted to simulate a scenario of an employee executing a file that would act like a potential CryptoLocker ransomware. My goal was to make sure it was picked up by your typical SIEM's and EDR's to make sure and get a real as possible scenario.

It starts of by leaving a fake ransom note on the users desktop, then creates a fake backdoor program along with a fake version Mimikatz. Once those files have been created it starts to create 1GB files on the users Desktop until it runs out of space. Once out of space a popup window appears warning that the machine has been encrypted. I'll go into more detail below on what each section is doing but it is also in the comments of the RansomScript.ps1 file.

This is harmless and only creates dummy files so you may modify it as you wish. Happy testing!

## ⚠️ Prerequisites 
To convert the payload (RansomScript.ps1) into a .exe you'll need ps2exe

 - https://www.powershellgallery.com/packages/ps2exe/1.0.10

I'd also recommend removing the comment lines before converting it into an .exe.

### Changing the text to encode
```[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes('put text/code here to be encoded'))```

## 🌟 Features
I'll break down the 4 seperate sections, again just look in the RansomScript.ps1 and you can see my comments
  1. The ransom note
  2. The fake files (To tip off SIEM's)
  3. The fake encrypted files to run the system out of space an to trigger EDR's
  4. The pop-up message that warns of the ransomware
  
## ⚔️ The Fun Stuff

More to come..... adding the RansomScript.ps1
