Param(
   [Parameter(Mandatory=$true)]
   [string]$RepositoryName,

   [Parameter(Mandatory=$true)]
   [string]$PersonalAccessToken
)

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Accept", "application/json")
$headers.Add("Authorization", "Bearer $PersonalAccessToken")

$response = Invoke-RestMethod "https://api.github.com/repos/ehalsey/$RepositoryName/commits" -Method 'GET' -Headers $headers -Body $body
#$response | ConvertTo-Json
$response