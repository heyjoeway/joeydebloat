# Define the path to the XML file containing the task definition
$taskXmlPath = "./Start Steam.xml"

$xmlContents = Get-Content -Path $taskXmlPath -raw

# Register the scheduled task from the XML file
Register-ScheduledTask -Xml $xmlContents -TaskName "Start Steam" -TaskPath "\" -User "$env:USERNAME"

# Enable the scheduled task
Enable-ScheduledTask -TaskName "Start Steam" -TaskPath "\"