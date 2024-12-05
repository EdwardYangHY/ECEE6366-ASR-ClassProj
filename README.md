# ECEE6366-ASR-ClassProj
## Project Scope

## Data Source
VIOLIN dataset from:
https://github.com/jimmy646/violin

## Some Findings
- Not all data are available.
- Not all clips are in English
- Not all clips have large percentage of people speaking

## Training data: Use a subset of TV series
- Choose only: Friends, Desperate Housewifes, How I met your mother and Modern Family Clips
- Reason: 
  - Nearly all English (probably some spanish)
  - Large Speech/Audio rate

## Files:
[data_subtitles_TV.json](./VIOLIN_Audio_Data/data_subtitles_TV.json): Annotation file

"friends_s06e07_clip_1132_1168": {

        "file": "friends_s06e07_clip_1132_1168",
        "sub": "Choo, choo, choo. RACHEL: Hey!\nPHOEBE: Hi! I'm so sorry. You're right.\nThis feels great. See? And you don't care\nif people are staring. It's just for a second,\nbecause then you're gone. It's amazing, Pheebs.\nI feel so free and so graceful. Oh! Ha! Hey, look out for the horse.",
        "duration": 36160,
        "speech_duration": 18732,
        "split": "train"

    },


[audio_clips](./VIOLIN_Audio_Data/audio_clips/): data are stored here
All audio are 44.1KHz, we need to downsample them to 16KHz before we get input data

[preprocess_dataset.ipynb](preprocess_dataset.ipynb): read the datasplit file, clean the subtitles, get to the audio clips and make a dataset object (with only filepaths and subs, no audio arrays), save to disk.

[preprocess_dataset.ipynb](preprocess_dataset.ipynb): load the dataset, preprocess data, fine-tune


## Still Need:
- [x] Text Pre-processing
- [x] Dataset Preprocessing
- [x] Finetuning
- [ ] Evaluation
- [ ] SNR calculation
- [ ] SNR and WER relation
- [ ] Whisper Evaluation