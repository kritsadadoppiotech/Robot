*** Keywords ***
Open Mobile App
    Open Application       remote_url=${remoteUrl}
        ...                deviceName=${deviceName} 
        ...                platformVersion=${platformVersion}
        ...                platformName=${platformName}
        ...                automationName=${automationName}
        ...                appPackage=${appPackage}
        ...                appActivity=${appActivity}

Close Mobile App
    Close Application