#Requires -Version 3.0

Param(
  [string] $ResourceGroupName = 'linux-azure-cli',
  [string] $ResourceGroupLocation = "West US",
  [string] $TemplateFile = '.\azuredeploy.json',
  [string] $ParametersFile = '.\azuredeploy.parameters.json'
)

Set-StrictMode -Version 3

# Convert relative paths to absolute paths if needed
$TemplateFile = [System.IO.Path]::Combine($PSScriptRoot, $TemplateFile)
$ParametersFile = [System.IO.Path]::Combine($PSScriptRoot, $ParametersFile)

# Create or update the resource group using the specified template file and template parameters file
Switch-AzureMode AzureResourceManager
New-AzureResourceGroup -Name $ResourceGroupName `
                       -Location $ResourceGroupLocation `
                       -TemplateFile $TemplateFile `
                       -TemplateParameterFile $ParametersFile `
                       -Force -Verbose
