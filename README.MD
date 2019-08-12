# AppiumLibrary Mobile Test



This project is a sample of mobile testing project based on AppiumLibrary from RobotFramework.

## Requirements:
*This project is core based on Python 3.7.*

It's required to install the following packages:

```
PyYAML
robotframework
robotframework-appiumlibrary
```
The required packages are listed in the [*requirements.txt*](requirements.txt) file.
To install all required packages by executing command as follow:
```
> pip install -r requirements.txt
```
**Notes:** To install *pip* refer to [pip installation](https://pip.pypa.io/en/stable/installing/)

## Project Structure
    automation
        |- Libs                 # Library directory (defined custom python libraries here)
        |- Pages                # Contains Robot Resource that defined keywords for related pages
        |- Test                 # Contains Another Resources file
            |- App              # Contains Application package files (APK, IPA)
            |- Data             # Contains Input Data files for Testcases
            |- Suites           # Contains All Test Suite files
            |- settings.robot   # Contains global settings
        |- Results              # (Optionals) Contains executed result files generated by executing command: robot ... -d Results ...
        requirements.txt        # List of all required packages
        start.bat               # Quick sample script for starting local emulator and Appium server

## Configuration
Specify configurations for the project as following example and save it as [Tests/Data/settings.yaml](Tests/Data/settings.yaml)
```
REMOTE_URL:  "http://127.0.0.1:4723/wd/hub"
DESIRE_CAPABILITIES:
  platformName:     "Android"
  deviceName:       "ntnhon:5554"
  platformVersion:  "9"
  app:              "App/englishgrammar.apk"
  appActivity:      "com.truatvl.englishgrammartests.activity.MainActivity"
  automationName:   "appium"

```

###### Start script
*Notes:* This is for Windows used only.
```
1. START "Emulator" /MIN "%ANDROID_HOME%/emulator/emulator.exe" -avd ntnhon
2. appium
```
- Line 1 is used to start emulator where **_ntnhon_** is the emulator name (check by **_emulator -list-avds_**)
- Line 2 is used to start **_Appium server_** 

## How to start
Before executing any tests, make sure the emulator and Appium server are stated completely and the configuration is given correctly.

To start all tests:
```
robot -P ./Libs -d Results Tests
```

To start tests by tag:
```
robot -P ./Libs -d Results -i <tag_name> Tests
```

## Executing Result
Check for executing result at [Result and Report](Results):
- [Report](Results/report.html)
- [Log](Results/log.html)

## Beautiful Statistic Report
To have a nice report with statistics for the test result, try to use [RobotFramework Metrics](https://github.com/adiralashiva8/robotframework-metrics)
Install by following command:
```
pip install robotframework-metrics
```
Generate the report by:
```
robotmetrics --ignorelib IGNORE GetLibrary --inputpath ./Result/ --output "output1.xml,output2.xml" --log "log1.html" 
```