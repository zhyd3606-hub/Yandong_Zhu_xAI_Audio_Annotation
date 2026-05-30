param(
    [Parameter(Mandatory=$true)]
    [string]$InputPath,

    [Parameter(Mandatory=$true)]
    [string]$OutputPath,

    [string]$FfmpegPath = "ffmpeg",

    [int]$SampleRate = 16000
)

if (-not (Test-Path -LiteralPath $InputPath)) {
    throw "Input file not found: $InputPath"
}

& $FfmpegPath -y -i $InputPath -ac 1 -ar $SampleRate $OutputPath

if (-not (Test-Path -LiteralPath $OutputPath)) {
    throw "Conversion failed. Output file was not created: $OutputPath"
}

Write-Host "Created WAV file: $OutputPath"
