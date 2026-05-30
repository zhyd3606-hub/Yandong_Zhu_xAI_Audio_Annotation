# Audio Annotation Portfolio - Yandong Zhu

GitHub repository: https://github.com/zhyd3606-hub/Yandong_Zhu_xAI_Audio_Annotation

This repository contains a small multilingual audio annotation portfolio prepared for the xAI AI Tutor - Chinese application.

The sample demonstrates a workflow for converting audio into a stable WAV format, annotating speech in Praat TextGrid, and converting the TextGrid output into a readable XLSX annotation table.

## Portfolio Files

- `portfolio/README_Yandong_Zhu_Audio_Annotation_Portfolio.docx`
- `portfolio/Yandong_Zhu_Mixed_News_Reading_Annotation_Sample.wav`
- `portfolio/Yandong_Zhu_Mixed_News_Reading_Annotation_Sample.TextGrid`
- `portfolio/Yandong_Zhu_Mixed_News_Reading_Annotation_Table.xlsx`

## Tools

- `tools/convert_audio_to_wav.ps1`
  - Converts source audio, such as `.m4a`, into 16 kHz mono `.wav` using FFmpeg.

- `tools/textgrid_to_xlsx.py`
  - Converts a Praat `.TextGrid` file into a readable `.xlsx` annotation table.
  - Uses all labeled tier boundaries, so rows are preserved even when a segment has pronunciation, disfluency, or audio-quality labels but no transcript text.

## Workflow

1. Convert source audio into WAV format.
2. Import the WAV file into Praat.
3. Create TextGrid tiers:
   - `Transcript`
   - `Disfluency`
   - `Pronunciation`
   - `AudioQuality`
4. Annotate the audio by time segment.
5. Convert the TextGrid into XLSX for easier review.

## Requirements

- Praat for TextGrid annotation
- FFmpeg for audio conversion
- Python 3.10+
- Python package: `openpyxl`

Install Python dependency:

```bash
pip install -r tools/requirements.txt
```

## Example Commands

Convert M4A to WAV:

```powershell
powershell -ExecutionPolicy Bypass -File tools/convert_audio_to_wav.ps1 `
  -InputPath "input.m4a" `
  -OutputPath "output.wav"
```

Convert TextGrid to XLSX:

```bash
python tools/textgrid_to_xlsx.py \
  --input "portfolio/Yandong_Zhu_Mixed_News_Reading_Annotation_Sample.TextGrid" \
  --output "portfolio/Yandong_Zhu_Mixed_News_Reading_Annotation_Table.xlsx"
```

## Note

This is a short application sample intended to demonstrate annotation methodology, attention to detail, and familiarity with multilingual audio review workflows. It is not presented as a full professional dataset.
