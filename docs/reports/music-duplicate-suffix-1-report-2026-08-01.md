# Music Duplicate Report — Exact ` 1` Suffix (Revised ID3 Selection)

**Status: report only — no music or playlist files were changed.**

- Library: `/mnt/archive/Music`
- Exact ` 1` duplicate pairs: 522 across 143 album folders
- Suffixed files selected to overwrite canonical names: 411
- Canonical files retained; suffixed copies removed: 111
- Confidence: 353 high, 169 medium

## Revised selection rules

1. Both files must have matching normalized ID3 title, disc/track number, and near-equal duration.
2. Release-level ID3 fields are compared with the other tracks in the album folder, including album/album artist, dates, genre, catalog and MusicBrainz IDs, barcode, media, label, country, release type/status, disc total, and track total.
3. Batch timestamp membership is additional release-set evidence.
4. A 320 kb/s CBR file is always preferred over a VBR duplicate. Otherwise, album-set ID3 similarity is followed by audio quality and modification time.

## Proposed changes

### 1. `!!!/Let It Be Blue`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Panama Canal.mp3`
- Selected: `06 Panama Canal 1.mp3`
- Remove: `06 Panama Canal.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Panama Canal 1.mp3` | 2026-07-14 14:23:19 | 320 kb/s (CBR 320) | 98.1% / 10 | 10 |
| `06 Panama Canal.mp3` | 2022-06-22 14:09:18 | 320 kb/s (CBR 320) | 69.0% / 0 | 0 |

### 2. `10,000 Maniacs/MTV Unplugged`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Because the Night.mp3`
- Selected: `12 Because the Night 1.mp3`
- Remove: `12 Because the Night.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Because the Night 1.mp3` | 2026-07-12 03:44:23 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |
| `12 Because the Night.mp3` | 2021-04-18 19:46:13 | 192 kb/s (CBR 192) | 62.7% / 1 | 0 |

### 3. `2Pac/Greatest Hits`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `2-06 California Love (original version).mp3`
- Selected: `2-06 California Love (original version) 1.mp3`
- Remove: `2-06 California Love (original version).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-06 California Love (original version) 1.mp3` | 2026-07-12 19:01:50 | 320 kb/s (CBR 320) | 97.8% / 24 | 24 |
| `2-06 California Love (original version).mp3` | 2021-04-18 19:52:37 | 128 kb/s (CBR 128) | 60.9% / 2 | 1 |

### 4. `2Pac/Greatest Hits`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-04 God Bless the Dead.mp3`
- Selected: `1-04 God Bless the Dead 1.mp3`
- Remove: `1-04 God Bless the Dead.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-04 God Bless the Dead 1.mp3` | 2026-07-12 19:01:49 | 320 kb/s (CBR 320) | 98.9% / 24 | 24 |
| `1-04 God Bless the Dead.mp3` | 2021-04-18 19:46:14 | 128 kb/s (CBR 128) | 61.6% / 2 | 0 |

### 5. `311/From Chaos`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Amber.mp3`
- Selected: `10 Amber 1.mp3`
- Remove: `10 Amber.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Amber 1.mp3` | 2026-07-13 00:11:53 | 320 kb/s (CBR 320) | 96.7% / 11 | 11 |
| `10 Amber.mp3` | 2021-04-18 19:52:38 | 128 kb/s (CBR 128) | 63.7% / 1 | 0 |

### 6. `311/Transistor`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Beautiful Disaster.mp3`
- Selected: `04 Beautiful Disaster 1.mp3`
- Remove: `04 Beautiful Disaster.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Beautiful Disaster 1.mp3` | 2026-07-12 18:58:26 | 320 kb/s (CBR 320) | 100.0% / 21 | 21 |
| `04 Beautiful Disaster.mp3` | 2021-04-18 19:46:13 | 128 kb/s (CBR 128) | 87.5% / 21 | 0 |

### 7. `95 South/Quad City Knock`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Whoot, There It Is.mp3`
- Selected: `04 Whoot, There It Is 1.mp3`
- Remove: `04 Whoot, There It Is.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Whoot, There It Is 1.mp3` | 2026-07-12 03:46:33 | 320 kb/s (CBR 320) | 100.0% / 17 | 17 |
| `04 Whoot, There It Is.mp3` | 2021-04-18 19:48:15 | 214 kb/s (VBR) | 72.5% / 17 | 0 |

### 8. `A$AP Rocky/Long.Live.A$AP`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 1 Train.mp3`
- Selected: `09 1 Train 1.mp3`
- Remove: `09 1 Train.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 1 Train 1.mp3` | 2026-07-13 22:41:53 | 320 kb/s (CBR 320) | 97.9% / 18 | 15 |
| `09 1 Train.mp3` | 2020-03-27 16:03:58 | 170 kb/s (VBR) | 86.5% / 18 | 1 |

### 9. `A$AP Rocky/Long.Live.A$AP`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Wild for the Night.mp3`
- Selected: `08 Wild for the Night 1.mp3`
- Remove: `08 Wild for the Night.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Wild for the Night 1.mp3` | 2026-07-13 22:41:53 | 320 kb/s (CBR 320) | 97.9% / 18 | 15 |
| `08 Wild for the Night.mp3` | 2020-03-27 16:03:57 | 187 kb/s (VBR) | 86.5% / 18 | 1 |

### 10. `A$AP Rocky/Long.Live.A$AP`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Goldie.mp3`
- Selected: `02 Goldie 1.mp3`
- Remove: `02 Goldie.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Goldie 1.mp3` | 2026-07-13 22:41:53 | 320 kb/s (CBR 320) | 99.1% / 18 | 15 |
| `02 Goldie.mp3` | 2024-03-14 23:21:18 | 167 kb/s (VBR) | 89.0% / 18 | 0 |

### 11. `Aaliyah/Aaliyah`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 More Than a Woman.mp3`
- Selected: `04 More Than a Woman 1.mp3`
- Remove: `04 More Than a Woman.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 More Than a Woman 1.mp3` | 2026-07-13 00:05:12 | 320 kb/s (CBR 320) | 100.0% / 17 | 17 |
| `04 More Than a Woman.mp3` | 2021-04-18 19:48:52 | 128 kb/s (CBR 128) | 55.9% / 1 | 1 |

### 12. `Aaliyah/Aaliyah`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 We Need a Resolution.mp3`
- Selected: `01 We Need a Resolution 1.mp3`
- Remove: `01 We Need a Resolution.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 We Need a Resolution 1.mp3` | 2026-07-13 00:05:12 | 320 kb/s (CBR 320) | 97.8% / 17 | 17 |
| `01 We Need a Resolution.mp3` | 2021-04-18 19:48:53 | 128 kb/s (CBR 128) | 54.0% / 1 | 1 |

### 13. `Aaliyah/One in a Million`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 If Your Girl Only Knew.mp3`
- Selected: `05 If Your Girl Only Knew 1.mp3`
- Remove: `05 If Your Girl Only Knew.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 If Your Girl Only Knew 1.mp3` | 2026-07-12 18:32:56 | 320 kb/s (CBR 320) | 100.0% / 16 | 16 |
| `05 If Your Girl Only Knew.mp3` | 2024-03-14 23:32:27 | 256 kb/s (VBR) | 50.0% / 0 | 0 |

### 14. `Action Bronson/Mr. Wonderful`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Baby Blue.mp3`
- Selected: `09 Baby Blue 1.mp3`
- Remove: `09 Baby Blue.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Baby Blue 1.mp3` | 2026-07-13 22:43:31 | 320 kb/s (CBR 320) | 97.9% / 12 | 12 |
| `09 Baby Blue.mp3` | 2020-03-27 16:05:06 | 320 kb/s (CBR 320) | 49.0% / 0 | 0 |

### 15. `Adam Ant/Wonderful`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Wonderful.mp3`
- Selected: `03 Wonderful 1.mp3`
- Remove: `03 Wonderful.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Wonderful 1.mp3` | 2026-07-12 18:40:47 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `03 Wonderful.mp3` | 2021-04-18 19:48:36 | 320 kb/s (CBR 320) | 55.2% / 0 | 0 |

### 16. `Adrianne Lenker/abysskiss`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 symbol.mp3`
- Selected: `06 symbol 1.mp3`
- Remove: `06 symbol.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 symbol 1.mp3` | 2026-07-13 23:06:05 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `06 symbol.mp3` | 2021-04-18 19:47:44 | 320 kb/s (CBR 320) | 57.3% / 0 | 0 |

### 17. `Afrojack & Steve Aoki/No Beef (radio edit)`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 No Beef (vocal mix).mp3`
- Selected: `02 No Beef (vocal mix) 1.mp3`
- Remove: `02 No Beef (vocal mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 No Beef (vocal mix).mp3` | 2026-07-18 11:57:00 | 320 kb/s (CBR 320) | 98.8% / 4 | 2 |
| `02 No Beef (vocal mix) 1.mp3` | 2026-07-19 13:21:32 | 320 kb/s (CBR 320) | 98.8% / 4 | 2 |

### 18. `Afrojack & Steve Aoki/No Beef (radio edit)`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 No Beef (instrumental mix).mp3`
- Selected: `03 No Beef (instrumental mix) 1.mp3`
- Remove: `03 No Beef (instrumental mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 No Beef (instrumental mix).mp3` | 2026-07-18 11:57:00 | 320 kb/s (CBR 320) | 97.5% / 4 | 2 |
| `03 No Beef (instrumental mix) 1.mp3` | 2026-07-19 13:21:32 | 320 kb/s (CBR 320) | 97.5% / 4 | 2 |

### 19. `Afrojack & Steve Aoki/No Beef (radio edit)`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 No Beef (radio edit).mp3`
- Selected: `01 No Beef (radio edit) 1.mp3`
- Remove: `01 No Beef (radio edit).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 No Beef (radio edit).mp3` | 2026-07-18 11:57:00 | 320 kb/s (CBR 320) | 98.8% / 4 | 2 |
| `01 No Beef (radio edit) 1.mp3` | 2026-07-19 13:21:32 | 320 kb/s (CBR 320) | 98.8% / 4 | 2 |

### 20. `Air/Talkie Walkie`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Cherry Blossom Girl.mp3`
- Selected: `02 Cherry Blossom Girl 1.mp3`
- Remove: `02 Cherry Blossom Girl.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Cherry Blossom Girl 1.mp3` | 2026-07-13 22:26:27 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `02 Cherry Blossom Girl.mp3` | 2021-04-18 19:45:31 | 192 kb/s (CBR 192) | 45.8% / 0 | 0 |

### 21. `Ali Farka Touré/Niafunké`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 ASCO.mp3`
- Selected: `08 ASCO 1.mp3`
- Remove: `08 ASCO.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 ASCO 1.mp3` | 2025-03-16 08:09:28 | 320 kb/s (CBR 320) | 100.0% / 11 | 11 |
| `08 ASCO.mp3` | 2020-03-27 16:10:12 | 191 kb/s (VBR) | 50.0% / 0 | 0 |

### 22. `Alisha/Alisha`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Too Turned On.mp3`
- Selected: `04 Too Turned On 1.mp3`
- Remove: `04 Too Turned On.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Too Turned On 1.mp3` | 2026-07-11 19:30:23 | 320 kb/s (CBR 320) | 100.0% / 6 | 6 |
| `04 Too Turned On.mp3` | 2021-10-11 00:12:24 | 253 kb/s (VBR) | 97.0% / 6 | 0 |

### 23. `ATC/Planet Pop`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Around the World (La La La La La).mp3`
- Selected: `02 Around the World (La La La La La) 1.mp3`
- Remove: `02 Around the World (La La La La La).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Around the World (La La La La La) 1.mp3` | 2026-07-13 00:05:55 | 320 kb/s (CBR 320) | 100.0% / 17 | 17 |
| `02 Around the World (La La La La La).mp3` | 2022-02-27 15:16:39 | 320 kb/s (CBR 320) | 52.1% / 0 | 0 |

### 24. `Atmosphere/Seven's Travels`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Apple.mp3`
- Selected: `07 Apple 1.mp3`
- Remove: `07 Apple.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Apple 1.mp3` | 2021-02-28 19:26:13 | 320 kb/s (CBR 320) | 100.0% / 28 | 28 |
| `07 Apple.mp3` | 2020-03-27 16:21:20 | 192 kb/s (CBR 192) | 100.0% / 18 | 18 |

### 25. `ATRIP/TANZPARTEI II (Mixtape)`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Friday (Alone Right Now).mp3`
- Selected: `02 Friday (Alone Right Now) 1.mp3`
- Remove: `02 Friday (Alone Right Now).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Friday (Alone Right Now).mp3` | 2024-11-23 17:29:45 | 320 kb/s (CBR 320) | 0.0% / 0 | 0 |
| `02 Friday (Alone Right Now) 1.mp3` | 2025-04-20 15:28:09 | 320 kb/s (CBR 320) | 0.0% / 0 | 0 |

### 26. `Beabadoobee/Space Cadet`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Sun More Often.mp3`
- Selected: `03 Sun More Often 1.mp3`
- Remove: `03 Sun More Often.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Sun More Often 1.mp3` | 2026-07-13 23:11:23 | 320 kb/s (CBR 320) | 100.0% / 4 | 4 |
| `03 Sun More Often.mp3` | 2022-12-05 22:29:12 | 320 kb/s (CBR 320) | 61.4% / 0 | 0 |

### 27. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Innocent Child.mp3`
- Selected: `05 Innocent Child 1.mp3`
- Remove: `05 Innocent Child.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Innocent Child 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `05 Innocent Child.mp3` | 2020-03-27 19:45:54 | 276 kb/s (VBR) | 89.6% / 8 | 8 |

### 28. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 The Globe.mp3`
- Selected: `04 The Globe 1.mp3`
- Remove: `04 The Globe.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 The Globe 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `04 The Globe.mp3` | 2020-03-27 19:45:53 | 270 kb/s (VBR) | 89.6% / 8 | 8 |

### 29. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 In My Dreams.mp3`
- Selected: `08 In My Dreams 1.mp3`
- Remove: `08 In My Dreams.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 In My Dreams 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `08 In My Dreams.mp3` | 2020-03-27 19:45:56 | 277 kb/s (VBR) | 89.6% / 8 | 8 |

### 30. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 I Don't Know.mp3`
- Selected: `03 I Don't Know 1.mp3`
- Remove: `03 I Don't Know.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 I Don't Know 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `03 I Don't Know.mp3` | 2020-03-27 19:45:53 | 262 kb/s (VBR) | 89.6% / 8 | 8 |

### 31. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 The Tea Party.mp3`
- Selected: `10 The Tea Party 1.mp3`
- Remove: `10 The Tea Party.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 The Tea Party 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `10 The Tea Party.mp3` | 2020-03-27 19:46:01 | 243 kb/s (VBR) | 89.6% / 8 | 8 |

### 32. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 When the Time Comes.mp3`
- Selected: `09 When the Time Comes 1.mp3`
- Remove: `09 When the Time Comes.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 When the Time Comes 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `09 When the Time Comes.mp3` | 2020-03-27 19:45:59 | 272 kb/s (VBR) | 89.6% / 8 | 8 |

### 33. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Kool-Aid.mp3`
- Selected: `07 Kool-Aid 1.mp3`
- Remove: `07 Kool-Aid.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Kool-Aid 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `07 Kool-Aid.mp3` | 2020-03-27 19:45:55 | 246 kb/s (VBR) | 89.6% / 8 | 8 |

### 34. `Big Audio Dynamite II/The Globe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Green Grass.mp3`
- Selected: `06 Green Grass 1.mp3`
- Remove: `06 Green Grass.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Green Grass 1.mp3` | 2026-07-12 03:23:33 | 320 kb/s (CBR 320) | 92.2% / 9 | 9 |
| `06 Green Grass.mp3` | 2020-03-27 19:45:55 | 265 kb/s (VBR) | 89.6% / 8 | 8 |

### 35. `Biz Markie/The Biz Never Sleeps`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Just a Friend.mp3`
- Selected: `05 Just a Friend 1.mp3`
- Remove: `05 Just a Friend.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Just a Friend 1.mp3` | 2021-10-16 00:48:23 | 256 kb/s (CBR 256) | 100.0% / 13 | 1 |
| `05 Just a Friend.mp3` | 2022-09-25 19:19:19 | 256 kb/s (CBR 256) | 93.8% / 13 | 0 |

### 36. `Blessid Union of Souls/Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 End of the World.mp3`
- Selected: `08 End of the World 1.mp3`
- Remove: `08 End of the World.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 End of the World 1.mp3` | 2026-07-12 18:41:27 | 320 kb/s (CBR 320) | 96.7% / 11 | 11 |
| `08 End of the World.mp3` | 2020-07-21 00:26:28 | 320 kb/s (CBR 320) | 73.6% / 4 | 4 |

### 37. `Blessid Union of Souls/Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Let Me Be the One.mp3`
- Selected: `02 Let Me Be the One 1.mp3`
- Remove: `02 Let Me Be the One.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Let Me Be the One 1.mp3` | 2026-07-12 18:41:27 | 320 kb/s (CBR 320) | 96.7% / 11 | 11 |
| `02 Let Me Be the One.mp3` | 2020-07-21 00:26:27 | 320 kb/s (CBR 320) | 73.6% / 4 | 4 |

### 38. `Blessid Union of Souls/Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Forever for Tonight.mp3`
- Selected: `10 Forever for Tonight 1.mp3`
- Remove: `10 Forever for Tonight.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Forever for Tonight 1.mp3` | 2026-07-12 18:41:27 | 320 kb/s (CBR 320) | 96.7% / 11 | 11 |
| `10 Forever for Tonight.mp3` | 2020-07-21 00:26:29 | 320 kb/s (CBR 320) | 73.6% / 4 | 4 |

### 39. `Blessid Union of Souls/Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Lucky to Be Here.mp3`
- Selected: `11 Lucky to Be Here 1.mp3`
- Remove: `11 Lucky to Be Here.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Lucky to Be Here 1.mp3` | 2026-07-12 18:41:27 | 320 kb/s (CBR 320) | 96.7% / 11 | 11 |
| `11 Lucky to Be Here.mp3` | 2020-07-21 00:26:29 | 320 kb/s (CBR 320) | 73.6% / 4 | 4 |

### 40. `Blessid Union of Souls/Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 I Believe (reprise).mp3`
- Selected: `12 I Believe (reprise) 1.mp3`
- Remove: `12 I Believe (reprise).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 I Believe (reprise) 1.mp3` | 2026-07-12 18:41:27 | 320 kb/s (CBR 320) | 96.7% / 11 | 11 |
| `12 I Believe (reprise).mp3` | 2020-07-21 00:26:29 | 320 kb/s (CBR 320) | 73.6% / 4 | 4 |

### 41. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `10 Stay High again...mp3`
- Selected: `10 Stay High again.. 1.mp3`
- Remove: `10 Stay High again...mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Stay High again.. 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `10 Stay High again...mp3` | 2021-10-03 21:16:51 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 42. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Short and Sweet (Bon Iver remix).mp3`
- Selected: `05 Short and Sweet (Bon Iver remix) 1.mp3`
- Remove: `05 Short and Sweet (Bon Iver remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Short and Sweet (Bon Iver remix) 1.mp3` | 2026-07-14 14:19:16 | 320 kb/s (CBR 320) | 98.3% / 24 | 12 |
| `05 Short and Sweet (Bon Iver remix).mp3` | 2021-10-03 21:16:50 | 320 kb/s (CBR 320) | 98.3% / 24 | 11 |

### 43. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 Baby (Gritty remix).mp3`
- Selected: `07 Baby (Gritty remix) 1.mp3`
- Remove: `07 Baby (Gritty remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Baby (Gritty remix) 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `07 Baby (Gritty remix).mp3` | 2021-10-03 21:16:50 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 44. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 He Loves Me (9th Wonder remix).mp3`
- Selected: `11 He Loves Me (9th Wonder remix) 1.mp3`
- Remove: `11 He Loves Me (9th Wonder remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 He Loves Me (9th Wonder remix) 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `11 He Loves Me (9th Wonder remix).mp3` | 2021-10-03 21:16:51 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 45. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Tomorrow (BADBADNOTGOOD remix).mp3`
- Selected: `06 Tomorrow (BADBADNOTGOOD remix) 1.mp3`
- Remove: `06 Tomorrow (BADBADNOTGOOD remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Tomorrow (BADBADNOTGOOD remix) 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 98.3% / 24 | 12 |
| `06 Tomorrow (BADBADNOTGOOD remix).mp3` | 2021-10-03 21:16:50 | 320 kb/s (CBR 320) | 98.3% / 24 | 11 |

### 46. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 Georgia (J Most remix).mp3`
- Selected: `09 Georgia (J Most remix) 1.mp3`
- Remove: `09 Georgia (J Most remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Georgia (J Most remix) 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `09 Georgia (J Most remix).mp3` | 2021-10-03 21:16:51 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 47. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 History Repeats (Jungle remix).mp3`
- Selected: `12 History Repeats (Jungle remix) 1.mp3`
- Remove: `12 History Repeats (Jungle remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 History Repeats (Jungle remix) 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 98.3% / 24 | 12 |
| `12 History Repeats (Jungle remix).mp3` | 2021-10-07 16:16:23 | 320 kb/s (CBR 320) | 98.3% / 24 | 0 |

### 48. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 History Repeats (Georgia Anne Muldrow Geemix).mp3`
- Selected: `08 History Repeats (Georgia Anne Muldrow Geemix) 1.mp3`
- Remove: `08 History Repeats (Georgia Anne Muldrow Geemix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 History Repeats (Georgia Anne Muldrow Geemix) 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 98.3% / 24 | 12 |
| `08 History Repeats (Georgia Anne Muldrow Geemix).mp3` | 2021-10-03 21:16:51 | 320 kb/s (CBR 320) | 98.3% / 24 | 11 |

### 49. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 13th Century Metal (Michael Kiwanuka mix).mp3`
- Selected: `01 13th Century Metal (Michael Kiwanuka mix) 1.mp3`
- Remove: `01 13th Century Metal (Michael Kiwanuka mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 13th Century Metal (Michael Kiwanuka mix) 1.mp3` | 2026-07-14 14:19:16 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `01 13th Century Metal (Michael Kiwanuka mix).mp3` | 2021-10-03 21:16:49 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 50. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Stay High (Childish Gambino version).mp3`
- Selected: `03 Stay High (Childish Gambino version) 1.mp3`
- Remove: `03 Stay High (Childish Gambino version).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Stay High (Childish Gambino version) 1.mp3` | 2026-07-14 14:19:16 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `03 Stay High (Childish Gambino version).mp3` | 2021-10-03 21:16:50 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 51. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `13 Run to Me.mp3`
- Selected: `13 Run to Me 1.mp3`
- Remove: `13 Run to Me.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Run to Me 1.mp3` | 2026-07-14 14:19:17 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `13 Run to Me.mp3` | 2021-10-03 21:16:51 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 52. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Presence (Little Dragon remix).mp3`
- Selected: `04 Presence (Little Dragon remix) 1.mp3`
- Remove: `04 Presence (Little Dragon remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Presence (Little Dragon remix) 1.mp3` | 2026-07-14 14:19:16 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `04 Presence (Little Dragon remix).mp3` | 2021-10-03 21:16:50 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 53. `Brittany Howard/Jaime_ Reimagined`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Goat Head (EARTHGANG version).mp3`
- Selected: `02 Goat Head (EARTHGANG version) 1.mp3`
- Remove: `02 Goat Head (EARTHGANG version).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Goat Head (EARTHGANG version) 1.mp3` | 2026-07-14 14:19:16 | 320 kb/s (CBR 320) | 97.7% / 24 | 12 |
| `02 Goat Head (EARTHGANG version).mp3` | 2021-10-03 21:16:50 | 320 kb/s (CBR 320) | 97.7% / 24 | 11 |

### 54. `Charlotte Adigéry & Bolis Pupul/Topical Dancer`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 It Hit Me.mp3`
- Selected: `05 It Hit Me 1.mp3`
- Remove: `05 It Hit Me.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 It Hit Me 1.mp3` | 2026-07-14 14:21:47 | 320 kb/s (CBR 320) | 99.8% / 12 | 12 |
| `05 It Hit Me.mp3` | 2022-03-08 17:28:39 | 273 kb/s (VBR) | 61.3% / 0 | 0 |

### 55. `Chaz Jankel/Get Myself Together`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Glad to Know You (Todd Terje re-edit).mp3`
- Selected: `04 Glad to Know You (Todd Terje re-edit) 1.mp3`
- Remove: `04 Glad to Know You (Todd Terje re-edit).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Glad to Know You (Todd Terje re-edit) 1.mp3` | 2026-07-19 15:08:34 | 320 kb/s (CBR 320) | 100.0% / 3 | 3 |
| `04 Glad to Know You (Todd Terje re-edit).mp3` | 2021-04-18 19:48:21 | 320 kb/s (CBR 320) | 100.0% / 3 | 0 |

### 56. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-10 Zig Zag Stitch.mp3`
- Selected: `1-10 Zig Zag Stitch.mp3`
- Remove: `1-10 Zig Zag Stitch 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-10 Zig Zag Stitch.mp3` | 2023-10-16 20:25:01 | 320 kb/s (CBR 320) | 97.9% / 64 | 0 |
| `1-10 Zig Zag Stitch 1.mp3` | 2023-10-15 20:58:40 | 272 kb/s (VBR) | 86.6% / 64 | 1 |

### 57. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-03 The Rat.mp3`
- Selected: `2-03 The Rat.mp3`
- Remove: `2-03 The Rat 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-03 The Rat.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-03 The Rat 1.mp3` | 2023-10-15 19:02:30 | 267 kb/s (VBR) | 98.1% / 64 | 41 |

### 58. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-07 Rough & Rugged.mp3`
- Selected: `2-07 Rough & Rugged.mp3`
- Remove: `2-07 Rough & Rugged 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-07 Rough & Rugged.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.6% / 64 | 20 |
| `2-07 Rough & Rugged 1.mp3` | 2023-10-15 19:02:30 | 211 kb/s (VBR) | 98.6% / 64 | 41 |

### 59. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-08 DJ De Yah.mp3`
- Selected: `2-08 DJ De Yah.mp3`
- Remove: `2-08 DJ De Yah 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-08 DJ De Yah.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-08 DJ De Yah 1.mp3` | 2023-10-15 19:02:30 | 254 kb/s (VBR) | 98.1% / 64 | 41 |

### 60. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-04 Ring the Alarm.mp3`
- Selected: `1-04 Ring the Alarm.mp3`
- Remove: `1-04 Ring the Alarm 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-04 Ring the Alarm.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-04 Ring the Alarm 1.mp3` | 2023-10-15 19:02:30 | 292 kb/s (VBR) | 98.1% / 64 | 41 |

### 61. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-09 Dem a Murderer.mp3`
- Selected: `1-09 Dem a Murderer.mp3`
- Remove: `1-09 Dem a Murderer 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-09 Dem a Murderer.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-09 Dem a Murderer 1.mp3` | 2023-10-15 19:02:30 | 217 kb/s (VBR) | 98.1% / 64 | 41 |

### 62. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-08 Girls Fresh.mp3`
- Selected: `1-08 Girls Fresh.mp3`
- Remove: `1-08 Girls Fresh 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-08 Girls Fresh.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-08 Girls Fresh 1.mp3` | 2023-10-15 19:02:30 | 237 kb/s (VBR) | 98.1% / 64 | 41 |

### 63. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-06 Mattress Jockey.mp3`
- Selected: `1-06 Mattress Jockey.mp3`
- Remove: `1-06 Mattress Jockey 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-06 Mattress Jockey.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-06 Mattress Jockey 1.mp3` | 2023-10-15 19:02:30 | 261 kb/s (VBR) | 98.1% / 64 | 41 |

### 64. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-11 Woman Say So.mp3`
- Selected: `2-11 Woman Say So.mp3`
- Remove: `2-11 Woman Say So 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-11 Woman Say So.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-11 Woman Say So 1.mp3` | 2023-10-15 19:02:30 | 245 kb/s (VBR) | 98.1% / 64 | 41 |

### 65. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-04 Rock & Comeen.mp3`
- Selected: `2-04 Rock & Comeen.mp3`
- Remove: `2-04 Rock & Comeen 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-04 Rock & Comeen.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-04 Rock & Comeen 1.mp3` | 2023-10-15 19:02:30 | 225 kb/s (VBR) | 98.1% / 64 | 41 |

### 66. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-07 Style & Fashion.mp3`
- Selected: `1-07 Style & Fashion.mp3`
- Remove: `1-07 Style & Fashion 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-07 Style & Fashion.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-07 Style & Fashion 1.mp3` | 2023-10-15 19:02:30 | 278 kb/s (VBR) | 98.1% / 64 | 41 |

### 67. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-02 The Original.mp3`
- Selected: `1-02 The Original.mp3`
- Remove: `1-02 The Original 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-02 The Original.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-02 The Original 1.mp3` | 2023-10-15 19:02:30 | 229 kb/s (VBR) | 98.1% / 64 | 41 |

### 68. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-11 Mack Daddy.mp3`
- Selected: `1-11 Mack Daddy.mp3`
- Remove: `1-11 Mack Daddy 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-11 Mack Daddy.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-11 Mack Daddy 1.mp3` | 2023-10-15 19:02:30 | 227 kb/s (VBR) | 98.1% / 64 | 41 |

### 69. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-05 Texas Rumpus.mp3`
- Selected: `2-05 Texas Rumpus.mp3`
- Remove: `2-05 Texas Rumpus 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-05 Texas Rumpus.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-05 Texas Rumpus 1.mp3` | 2023-10-15 19:02:30 | 252 kb/s (VBR) | 98.1% / 64 | 41 |

### 70. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-03 Know How Fe Chat.mp3`
- Selected: `1-03 Know How Fe Chat.mp3`
- Remove: `1-03 Know How fe Chat 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-03 Know How Fe Chat.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.6% / 64 | 20 |
| `1-03 Know How fe Chat 1.mp3` | 2023-10-15 19:02:30 | 265 kb/s (VBR) | 98.6% / 64 | 41 |

### 71. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-10 Love Woman So.mp3`
- Selected: `2-10 Love Woman So.mp3`
- Remove: `2-10 Love Woman So 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-10 Love Woman So.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.6% / 64 | 20 |
| `2-10 Love Woman So 1.mp3` | 2023-10-15 19:02:30 | 224 kb/s (VBR) | 98.6% / 64 | 41 |

### 72. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-01 Don Dada.mp3`
- Selected: `1-01 Don Dada.mp3`
- Remove: `1-01 Don Dada 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-01 Don Dada.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-01 Don Dada 1.mp3` | 2023-10-15 19:02:21 | 257 kb/s (VBR) | 98.1% / 64 | 41 |

### 73. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-06 Gunshot.mp3`
- Selected: `2-06 Gunshot.mp3`
- Remove: `2-06 Gunshot 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-06 Gunshot.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-06 Gunshot 1.mp3` | 2023-10-15 19:02:30 | 260 kb/s (VBR) | 98.1% / 64 | 41 |

### 74. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-02 Double Trouble.mp3`
- Selected: `2-02 Double Trouble.mp3`
- Remove: `2-02 Double Trouble 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-02 Double Trouble.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.6% / 64 | 20 |
| `2-02 Double Trouble 1.mp3` | 2023-10-15 19:02:30 | 247 kb/s (VBR) | 98.6% / 64 | 41 |

### 75. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `1-05 Informer Fe Dead.mp3`
- Selected: `1-05 Informer Fe Dead.mp3`
- Remove: `1-05 Informer fe Dead 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-05 Informer Fe Dead.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `1-05 Informer fe Dead 1.mp3` | 2023-10-15 19:02:30 | 242 kb/s (VBR) | 98.1% / 64 | 41 |

### 76. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-01 Typewriter.mp3`
- Selected: `2-01 Typewriter.mp3`
- Remove: `2-01 Typewriter 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-01 Typewriter.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-01 Typewriter 1.mp3` | 2023-10-15 19:02:30 | 245 kb/s (VBR) | 98.1% / 64 | 41 |

### 77. `Compilations/100% Dynamite NYC_ Dancehall Reggae Meets Rap in New York City`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `2-09 Real McCoy.mp3`
- Selected: `2-09 Real McCoy.mp3`
- Remove: `2-09 Real McCoy 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-09 Real McCoy.mp3` | 2023-03-12 14:27:10 | 320 kb/s (CBR 320) | 98.1% / 64 | 20 |
| `2-09 Real McCoy 1.mp3` | 2023-10-15 19:02:30 | 257 kb/s (VBR) | 98.1% / 64 | 41 |

### 78. `Compilations/12 Inches of Micmac, Volume 2`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `2-07 Who_s Got Your Love.mp3`
- Selected: `2-07 Who_s Got Your Love 1.mp3`
- Remove: `2-07 Who_s Got Your Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-07 Who_s Got Your Love 1.mp3` | 2024-06-14 14:05:43 | 320 kb/s (CBR 320) | 100.0% / 1 | 0 |
| `2-07 Who_s Got Your Love.mp3` | 2024-06-14 13:53:16 | 320 kb/s (CBR 320) | 87.5% / 1 | 0 |

### 79. `Compilations/A Very Special Christmas`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `08 Christmas in Hollis.mp3`
- Selected: `08 Christmas in Hollis.mp3`
- Remove: `08 Christmas in Hollis 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Christmas in Hollis.mp3` | 2021-04-18 19:53:44 | 168 kb/s (VBR) | 97.9% / 14 | 0 |
| `08 Christmas in Hollis 1.mp3` | 2020-12-08 00:32:30 | 265 kb/s (VBR) | 66.7% / 0 | 0 |

### 80. `Compilations/Nova Classics Eight`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Let Sunshine In (alt. version).mp3`
- Selected: `01 Let Sunshine In (alt. version) 1.mp3`
- Remove: `01 Let Sunshine In (alt. version).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Let Sunshine In (alt. version) 1.mp3` | 2026-07-19 14:45:02 | 188 kb/s (VBR) | 97.9% / 15 | 15 |
| `01 Let Sunshine In (alt. version).mp3` | 2022-12-05 22:12:29 | 226 kb/s (VBR) | 79.2% / 15 | 0 |

### 81. `Compilations/Panama! 3_ Calypso Panameño, Guajira Jazz and Cumbia Tipica on the Isthmus 1960-1975`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `22 El ratón.mp3`
- Selected: `22 El ratón 1.mp3`
- Remove: `22 El ratón.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `22 El ratón 1.mp3` | 2023-03-21 21:34:29 | 320 kb/s (CBR 320) | 98.1% / 23 | 23 |
| `22 El ratón.mp3` | 2022-12-05 22:15:24 | 320 kb/s (CBR 320) | 85.6% / 23 | 0 |

### 82. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-07 Deep in the Jungle.mp3`
- Selected: `1-07 Deep in the Jungle 1.mp3`
- Remove: `1-07 Deep in the Jungle.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-07 Deep in the Jungle 1.mp3` | 2026-07-19 14:07:20 | 320 kb/s (CBR 320) | 97.7% / 22 | 22 |
| `1-07 Deep in the Jungle.mp3` | 2026-07-12 18:37:15 | 320 kb/s (CBR 320) | 83.2% / 8 | 8 |

### 83. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `2-06 Fully Charged on Planet X.mp3`
- Selected: `2-06 Fully Charged on Planet X 1.mp3`
- Remove: `2-06 Fully Charged on Planet X.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-06 Fully Charged on Planet X 1.mp3` | 2026-07-19 14:07:21 | 320 kb/s (CBR 320) | 97.6% / 22 | 22 |
| `2-06 Fully Charged on Planet X.mp3` | 2026-07-12 18:37:16 | 320 kb/s (CBR 320) | 82.3% / 8 | 8 |

### 84. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `2-01 Latyrx (Last Chance to Comprehend).mp3`
- Selected: `2-01 Latyrx (Last Chance to Comprehend) 1.mp3`
- Remove: `2-01 Latyrx (Last Chance to Comprehend).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-01 Latyrx (Last Chance to Comprehend) 1.mp3` | 2026-07-19 14:07:21 | 320 kb/s (CBR 320) | 97.9% / 22 | 22 |
| `2-01 Latyrx (Last Chance to Comprehend).mp3` | 2026-07-12 18:37:16 | 320 kb/s (CBR 320) | 82.6% / 8 | 8 |

### 85. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-02 Rhyme Like a Nut!.mp3`
- Selected: `1-02 Rhyme Like a Nut! 1.mp3`
- Remove: `1-02 Rhyme Like a Nut!.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-02 Rhyme Like a Nut! 1.mp3` | 2026-07-19 14:07:20 | 320 kb/s (CBR 320) | 97.2% / 22 | 22 |
| `1-02 Rhyme Like a Nut!.mp3` | 2026-07-12 18:37:15 | 320 kb/s (CBR 320) | 82.6% / 8 | 8 |

### 86. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-03 Entropy (Part A - The Third Decade, Our Move).mp3`
- Selected: `1-03 Entropy (Part A - The Third Decade, Our Move) 1.mp3`
- Remove: `1-03 Entropy (Part A - The Third Decade, Our Move).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-03 Entropy (Part A - The Third Decade, Our Move) 1.mp3` | 2026-07-19 14:07:20 | 320 kb/s (CBR 320) | 97.4% / 22 | 22 |
| `1-03 Entropy (Part A - The Third Decade, Our Move).mp3` | 2026-07-12 18:37:15 | 320 kb/s (CBR 320) | 83.0% / 8 | 8 |

### 87. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `2-04 Rhymes for the Deaf, Dumb, & Blind.mp3`
- Selected: `2-04 Rhymes for the Deaf, Dumb, & Blind 1.mp3`
- Remove: `2-04 Rhymes for the Deaf, Dumb, & Blind.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-04 Rhymes for the Deaf, Dumb, & Blind 1.mp3` | 2026-07-19 14:07:21 | 320 kb/s (CBR 320) | 97.7% / 22 | 22 |
| `2-04 Rhymes for the Deaf, Dumb, & Blind.mp3` | 2026-07-12 18:37:16 | 320 kb/s (CBR 320) | 82.5% / 8 | 8 |

### 88. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-08 Hardcore (Instrumental) Hip-Hop.mp3`
- Selected: `1-08 Hardcore (Instrumental) Hip-Hop 1.mp3`
- Remove: `1-08 Hardcore (Instrumental) Hip-Hop.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-08 Hardcore (Instrumental) Hip-Hop 1.mp3` | 2026-07-19 14:07:21 | 320 kb/s (CBR 320) | 97.4% / 22 | 22 |
| `1-08 Hardcore (Instrumental) Hip-Hop.mp3` | 2026-07-12 18:37:15 | 320 kb/s (CBR 320) | 83.0% / 8 | 8 |

### 89. `Compilations/Solesides Greatest Bumps`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-11 Lady Don't Tek No.mp3`
- Selected: `1-11 Lady Don't Tek No 1.mp3`
- Remove: `1-11 Lady Don't Tek No.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-11 Lady Don't Tek No 1.mp3` | 2026-07-19 14:07:21 | 320 kb/s (CBR 320) | 97.6% / 22 | 22 |
| `1-11 Lady Don't Tek No.mp3` | 2026-07-12 18:37:16 | 320 kb/s (CBR 320) | 82.8% / 8 | 8 |

### 90. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Think Like a Man.mp3`
- Selected: `01 Think Like a Man 1.mp3`
- Remove: `01 Think Like a Man.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Think Like a Man 1.mp3` | 2021-02-20 21:23:50 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `01 Think Like a Man.mp3` | 2018-04-29 11:52:05 | 268 kb/s (VBR) | 97.6% / 22 | 10 |

### 91. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Freedom Ride.mp3`
- Selected: `07 Freedom Ride 1.mp3`
- Remove: `07 Freedom Ride.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Freedom Ride 1.mp3` | 2021-02-20 21:23:52 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `07 Freedom Ride.mp3` | 2018-04-29 11:52:05 | 233 kb/s (VBR) | 97.6% / 22 | 10 |

### 92. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Never Too Much.mp3`
- Selected: `12 Never Too Much 1.mp3`
- Remove: `12 Never Too Much.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Never Too Much 1.mp3` | 2021-02-20 21:23:53 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `12 Never Too Much.mp3` | 2018-04-29 11:52:10 | 260 kb/s (VBR) | 97.6% / 22 | 10 |

### 93. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 That's the Way of the World.mp3`
- Selected: `06 That's the Way of the World 1.mp3`
- Remove: `06 That's the Way of the World.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 That's the Way of the World 1.mp3` | 2021-02-20 21:23:52 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `06 That's the Way of the World.mp3` | 2018-04-29 11:52:05 | 266 kb/s (VBR) | 97.6% / 22 | 10 |

### 94. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Motion Picture.mp3`
- Selected: `11 Motion Picture 1.mp3`
- Remove: `11 Motion Picture.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Motion Picture 1.mp3` | 2021-02-20 21:23:53 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `11 Motion Picture.mp3` | 2018-04-29 11:52:05 | 249 kb/s (VBR) | 97.6% / 22 | 10 |

### 95. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Tonight (Best You Ever Had).mp3`
- Selected: `02 Tonight (Best You Ever Had) 1.mp3`
- Remove: `02 Tonight (Best You Ever Had).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Tonight (Best You Ever Had) 1.mp3` | 2021-02-20 21:23:50 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `02 Tonight (Best You Ever Had).mp3` | 2018-04-29 11:52:05 | 267 kb/s (VBR) | 97.6% / 22 | 10 |

### 96. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Fire.mp3`
- Selected: `10 Fire 1.mp3`
- Remove: `10 Fire.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Fire 1.mp3` | 2021-02-20 21:23:53 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `10 Fire.mp3` | 2018-04-29 11:52:05 | 250 kb/s (VBR) | 97.6% / 22 | 10 |

### 97. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Need a Reason.mp3`
- Selected: `03 Need a Reason 1.mp3`
- Remove: `03 Need a Reason.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Need a Reason 1.mp3` | 2021-02-20 21:23:52 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `03 Need a Reason.mp3` | 2018-04-29 11:52:05 | 251 kb/s (VBR) | 97.6% / 22 | 10 |

### 98. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Same Ol Bs.mp3`
- Selected: `09 Same Ol Bs 1.mp3`
- Remove: `09 Same Ol Bs.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Same Ol Bs 1.mp3` | 2021-02-20 21:23:53 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `09 Same Ol Bs.mp3` | 2018-04-29 11:52:05 | 250 kb/s (VBR) | 97.6% / 22 | 10 |

### 99. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Won't Make a Fool Out of You.mp3`
- Selected: `04 Won't Make a Fool Out of You 1.mp3`
- Remove: `04 Won't Make a Fool Out of You.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Won't Make a Fool Out of You 1.mp3` | 2021-02-20 21:23:52 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `04 Won't Make a Fool Out of You.mp3` | 2018-04-29 11:52:05 | 246 kb/s (VBR) | 97.6% / 22 | 10 |

### 100. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Shake That Jelly.mp3`
- Selected: `08 Shake That Jelly 1.mp3`
- Remove: `08 Shake That Jelly.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Shake That Jelly 1.mp3` | 2021-02-20 21:23:53 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `08 Shake That Jelly.mp3` | 2018-04-29 11:52:05 | 246 kb/s (VBR) | 97.6% / 22 | 10 |

### 101. `Compilations/Think Like a Man_ Music From & Inspired by the Film`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Baby Be Mine.mp3`
- Selected: `05 Baby Be Mine 1.mp3`
- Remove: `05 Baby Be Mine.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Baby Be Mine 1.mp3` | 2021-02-20 21:23:52 | 320 kb/s (CBR 320) | 97.6% / 22 | 11 |
| `05 Baby Be Mine.mp3` | 2021-04-18 19:54:13 | 215 kb/s (VBR) | 97.6% / 22 | 0 |

### 102. `Count Basie/The Complete Atomic Basie`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `16 The Late Late Show (Vocal version).mp3`
- Selected: `16 The Late Late Show (Vocal version).mp3`
- Remove: `16 The Late Late Show (vocal version) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `16 The Late Late Show (Vocal version).mp3` | 2020-04-06 22:16:08 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `16 The Late Late Show (vocal version) 1.mp3` | 2020-04-06 22:16:08 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 103. `Cynthia/Cynthia II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Dreamboy_Dreamgirl.mp3`
- Selected: `04 Dreamboy_Dreamgirl 1.mp3`
- Remove: `04 Dreamboy_Dreamgirl.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Dreamboy_Dreamgirl 1.mp3` | 2018-04-29 02:17:08 | 320 kb/s (CBR 320) | 100.0% / 8 | 8 |
| `04 Dreamboy_Dreamgirl.mp3` | 2021-04-18 19:49:46 | 320 kb/s (CBR 320) | 80.0% / 8 | 0 |

### 104. `Danger Mouse & Black Thought/Cheat Codes`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 No Gold Teeth.mp3`
- Selected: `04 No Gold Teeth 1.mp3`
- Remove: `04 No Gold Teeth.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 No Gold Teeth 1.mp3` | 2023-02-16 23:29:16 | 320 kb/s (CBR 320) | 99.0% / 12 | 12 |
| `04 No Gold Teeth.mp3` | 2022-05-15 12:20:10 | 176 kb/s (VBR) | 67.7% / 0 | 0 |

### 105. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Sofi Needs a Ladder.mp3`
- Selected: `02 Sofi Needs a Ladder 1.mp3`
- Remove: `02 Sofi Needs a Ladder.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Sofi Needs a Ladder 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `02 Sofi Needs a Ladder.mp3` | 2018-04-29 12:31:03 | 220 kb/s (VBR) | 89.2% / 10 | 10 |

### 106. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 I Said (Michael Woods remix).mp3`
- Selected: `06 I Said (Michael Woods remix) 1.mp3`
- Remove: `06 I Said (Michael Woods remix).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 I Said (Michael Woods remix) 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 93.4% / 11 | 11 |
| `06 I Said (Michael Woods remix).mp3` | 2018-04-29 12:31:03 | 196 kb/s (VBR) | 89.2% / 10 | 10 |

### 107. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Some Chords.mp3`
- Selected: `01 Some Chords 1.mp3`
- Remove: `01 Some Chords.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Some Chords 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `01 Some Chords.mp3` | 2018-04-29 12:31:03 | 204 kb/s (VBR) | 90.6% / 10 | 10 |

### 108. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Animal Rights.mp3`
- Selected: `05 Animal Rights 1.mp3`
- Remove: `05 Animal Rights.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Animal Rights 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 93.4% / 11 | 11 |
| `05 Animal Rights.mp3` | 2018-04-29 12:31:03 | 190 kb/s (VBR) | 89.2% / 10 | 10 |

### 109. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 One Trick Pony.mp3`
- Selected: `10 One Trick Pony 1.mp3`
- Remove: `10 One Trick Pony.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 One Trick Pony 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `10 One Trick Pony.mp3` | 2018-04-29 12:31:03 | 187 kb/s (VBR) | 90.6% / 10 | 10 |

### 110. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Right This Second.mp3`
- Selected: `08 Right This Second 1.mp3`
- Remove: `08 Right This Second.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Right This Second 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `08 Right This Second.mp3` | 2018-04-29 12:31:03 | 185 kb/s (VBR) | 90.6% / 10 | 10 |

### 111. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Bad Selection.mp3`
- Selected: `04 Bad Selection 1.mp3`
- Remove: `04 Bad Selection.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Bad Selection 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `04 Bad Selection.mp3` | 2018-04-29 12:31:03 | 178 kb/s (VBR) | 90.6% / 10 | 10 |

### 112. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Raise Your Weapon.mp3`
- Selected: `09 Raise Your Weapon 1.mp3`
- Remove: `09 Raise Your Weapon.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Raise Your Weapon 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `09 Raise Your Weapon.mp3` | 2018-04-29 12:31:03 | 178 kb/s (VBR) | 89.2% / 10 | 10 |

### 113. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Everything Before.mp3`
- Selected: `11 Everything Before 1.mp3`
- Remove: `11 Everything Before.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Everything Before 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `11 Everything Before.mp3` | 2018-04-29 12:31:03 | 195 kb/s (VBR) | 90.6% / 10 | 10 |

### 114. `deadmau5/4×4=12`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Cthulhu Sleeps.mp3`
- Selected: `07 Cthulhu Sleeps 1.mp3`
- Remove: `07 Cthulhu Sleeps.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Cthulhu Sleeps 1.mp3` | 2026-07-13 22:37:11 | 320 kb/s (CBR 320) | 95.3% / 11 | 11 |
| `07 Cthulhu Sleeps.mp3` | 2018-04-29 12:31:03 | 185 kb/s (VBR) | 90.6% / 10 | 10 |

### 115. `Deee-Lite/World Clique`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `04 Try Me On... I'm Very You.mp3`
- Selected: `04 Try Me On... I'm Very You.mp3`
- Remove: `04 Try Me on... I'm Very You 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Try Me On... I'm Very You.mp3` | 2020-04-06 22:34:11 | 320 kb/s (CBR 320) | 100.0% / 11 | 8 |
| `04 Try Me on... I'm Very You 1.mp3` | 2020-04-06 22:34:11 | 320 kb/s (CBR 320) | 100.0% / 11 | 8 |

### 116. `Depeche Mode/Memento Mori`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 My Favourite Stranger.mp3`
- Selected: `05 My Favourite Stranger 1.mp3`
- Remove: `05 My Favourite Stranger.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 My Favourite Stranger 1.mp3` | 2024-01-31 22:59:33 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `05 My Favourite Stranger.mp3` | 2023-10-16 20:24:55 | 273 kb/s (VBR) | 64.6% / 0 | 0 |

### 117. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Yüz Yüze.mp3`
- Selected: `06 Yüz Yüze 1.mp3`
- Remove: `06 Yüz Yüze.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Yüz Yüze.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `06 Yüz Yüze 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 118. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 İstanbul_un Kuşları.mp3`
- Selected: `07 İstanbul_un Kuşları 1.mp3`
- Remove: `07 İstanbul_un Kuşları.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 İstanbul_un Kuşları.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `07 İstanbul_un Kuşları 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 119. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Cool Hand.mp3`
- Selected: `02 Cool Hand 1.mp3`
- Remove: `02 Cool Hand.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Cool Hand.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `02 Cool Hand 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 120. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 Çiçek Açıyor.mp3`
- Selected: `01 Çiçek Açıyor 1.mp3`
- Remove: `01 Çiçek Açıyor.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Çiçek Açıyor.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `01 Çiçek Açıyor 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 121. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Hop Bico.mp3`
- Selected: `04 Hop Bico 1.mp3`
- Remove: `04 Hop Bico.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Hop Bico.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `04 Hop Bico 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 122. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 Direne Direne.mp3`
- Selected: `08 Direne Direne 1.mp3`
- Remove: `08 Direne Direne.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Direne Direne.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `08 Direne Direne 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 123. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 Ceylan.mp3`
- Selected: `09 Ceylan 1.mp3`
- Remove: `09 Ceylan.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Ceylan.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `09 Ceylan 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 124. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Bilemedim Ki.mp3`
- Selected: `05 Bilemedim Ki 1.mp3`
- Remove: `05 Bilemedim Ki.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Bilemedim Ki.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `05 Bilemedim Ki 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 125. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Yakamoz.mp3`
- Selected: `03 Yakamoz 1.mp3`
- Remove: `03 Yakamoz.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Yakamoz.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `03 Yakamoz 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 126. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `10 Misket.mp3`
- Selected: `10 Misket 1.mp3`
- Remove: `10 Misket.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Misket.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `10 Misket 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 127. `Derya Yıldırım & Grup Şimşek/Yarın Yoksa`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 Güneş.mp3`
- Selected: `11 Güneş 1.mp3`
- Remove: `11 Güneş.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Güneş.mp3` | 2025-03-23 16:07:27 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `11 Güneş 1.mp3` | 2025-07-09 14:50:35 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |

### 128. `DEVO/Q_ Are We Not Men_ A_ We Are Devo!`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Gut Feeling _ (Slap Your Mammy).mp3`
- Selected: `08 Gut Feeling _ (Slap Your Mammy) 1.mp3`
- Remove: `08 Gut Feeling _ (Slap Your Mammy).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Gut Feeling _ (Slap Your Mammy) 1.mp3` | 2026-07-11 20:33:07 | 320 kb/s (CBR 320) | 92.0% / 10 | 10 |
| `08 Gut Feeling _ (Slap Your Mammy).mp3` | 2018-04-29 13:43:56 | 320 kb/s (CBR 320) | 64.1% / 3 | 3 |

### 129. `Dexys Midnight Runners/Don't Stand Me Down_ The Director's Cut`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `03 This is What She's Like.mp3`
- Selected: `03 This is What She's Like.mp3`
- Remove: `03 This Is What She's Like 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 This is What She's Like.mp3` | 2020-04-06 22:39:07 | 320 kb/s (CBR 320) | 100.0% / 7 | 7 |
| `03 This Is What She's Like 1.mp3` | 2020-04-06 22:39:07 | 320 kb/s (CBR 320) | 100.0% / 7 | 7 |

### 130. `Dobie Gray/Drift Away`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 L.A. Lady.mp3`
- Selected: `03 L.A. Lady 1.mp3`
- Remove: `03 L.A. Lady.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 L.A. Lady 1.mp3` | 2026-07-11 20:12:32 | 320 kb/s (CBR 320) | 99.4% / 20 | 10 |
| `03 L.A. Lady.mp3` | 2018-07-08 20:37:55 | 320 kb/s (CBR 320) | 99.1% / 20 | 8 |

### 131. `Dobie Gray/Drift Away`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 City Stars.mp3`
- Selected: `08 City Stars 1.mp3`
- Remove: `08 City Stars.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 City Stars 1.mp3` | 2026-07-11 20:12:32 | 320 kb/s (CBR 320) | 99.4% / 20 | 10 |
| `08 City Stars.mp3` | 2018-07-08 20:37:55 | 320 kb/s (CBR 320) | 99.1% / 20 | 8 |

### 132. `Donny Hathaway/Extension of a Man`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Valdez in the Country.mp3`
- Selected: `04 Valdez in the Country 1.mp3`
- Remove: `04 Valdez in the Country.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Valdez in the Country 1.mp3` | 2020-07-21 00:17:08 | 320 kb/s (CBR 320) | 97.5% / 11 | 11 |
| `04 Valdez in the Country.mp3` | 2018-04-29 09:15:42 | 320 kb/s (CBR 320) | 95.0% / 10 | 10 |

### 133. `Dusty Springfield/A Girl Called Dusty`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `11 Wishin' And Hopin'.mp3`
- Selected: `11 Wishin' And Hopin'.mp3`
- Remove: `11 Wishin' and Hopin' 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Wishin' And Hopin'.mp3` | 2020-04-06 22:45:51 | 320 kb/s (CBR 320) | 99.7% / 19 | 11 |
| `11 Wishin' and Hopin' 1.mp3` | 2020-04-06 22:45:51 | 320 kb/s (CBR 320) | 99.7% / 19 | 11 |

### 134. `EARTHGANG/Mirrorland`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Stuck.mp3`
- Selected: `12 Stuck 1.mp3`
- Remove: `12 Stuck.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Stuck 1.mp3` | 2020-01-18 15:31:09 | 320 kb/s (CBR 320) | 97.7% / 14 | 12 |
| `12 Stuck.mp3` | 2021-04-18 19:49:59 | 320 kb/s (CBR 320) | 97.7% / 14 | 0 |

### 135. `El Michels Affair & Black Thought/Glorious Game`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Grateful.mp3`
- Selected: `01 Grateful 1.mp3`
- Remove: `01 Grateful.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Grateful 1.mp3` | 2026-07-14 14:25:40 | 320 kb/s (CBR 320) | 100.0% / 11 | 11 |
| `01 Grateful.mp3` | 2024-02-19 19:00:46 | 320 kb/s (CBR 320) | 80.0% / 11 | 0 |

### 136. `Electric Guest/KIN`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Dollar.mp3`
- Selected: `01 Dollar 1.mp3`
- Remove: `01 Dollar.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Dollar 1.mp3` | 2026-07-13 23:15:02 | 320 kb/s (CBR 320) | 95.3% / 10 | 10 |
| `01 Dollar.mp3` | 2024-03-14 23:16:35 | 320 kb/s (CBR 320) | 52.7% / 1 | 0 |

### 137. `Electric Guest/KIN`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Freestyle.mp3`
- Selected: `05 Freestyle 1.mp3`
- Remove: `05 Freestyle.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Freestyle 1.mp3` | 2026-07-13 23:15:02 | 320 kb/s (CBR 320) | 95.3% / 10 | 10 |
| `05 Freestyle.mp3` | 2021-04-18 19:48:28 | 320 kb/s (CBR 320) | 52.7% / 1 | 0 |

### 138. `Eli _Paperboy_ Reed/Hits and Misses`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `10 That_s Love.mp3`
- Selected: `10 That_s Love.mp3`
- Remove: `10 That_s Love 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 That_s Love.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |
| `10 That_s Love 1.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |

### 139. `Eli _Paperboy_ Reed/Hits and Misses`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `06 Let_s Straighten It Out.mp3`
- Selected: `06 Let_s Straighten It Out.mp3`
- Remove: `06 Let_s Straighten It Out 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Let_s Straighten It Out.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |
| `06 Let_s Straighten It Out 1.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |

### 140. `Eli _Paperboy_ Reed/Hits and Misses`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `09 I_m Gonna Break Every Heart I Can.mp3`
- Selected: `09 I_m Gonna Break Every Heart I Can.mp3`
- Remove: `09 I_m Gonna Break Every Heart I Can 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 I_m Gonna Break Every Heart I Can.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |
| `09 I_m Gonna Break Every Heart I Can 1.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |

### 141. `Eli _Paperboy_ Reed/Hits and Misses`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `08 I Don_t Know (What the World Is Coming To).mp3`
- Selected: `08 I Don_t Know (What the World Is Coming To).mp3`
- Remove: `08 I Don_t Know (What the World Is Coming To) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 I Don_t Know (What the World Is Coming To).mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |
| `08 I Don_t Know (What the World Is Coming To) 1.mp3` | 2024-03-09 20:09:56 | 320 kb/s (CBR 320) | 100.0% / 17 | 16 |

### 142. `Eli _Paperboy_ Reed/My Way Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 I_d Rather Be Alone.mp3`
- Selected: `09 I_d Rather Be Alone 1.mp3`
- Remove: `09 I_d Rather Be Alone.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 I_d Rather Be Alone 1.mp3` | 2024-06-14 15:23:40 | 320 kb/s (CBR 320) | 100.0% / 13 | 11 |
| `09 I_d Rather Be Alone.mp3` | 2024-06-14 13:53:16 | 320 kb/s (CBR 320) | 100.0% / 13 | 1 |

### 143. `Eli _Paperboy_ Reed/My Way Home`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Tomorrow_s Not Promised.mp3`
- Selected: `05 Tomorrow_s Not Promised 1.mp3`
- Remove: `05 Tomorrow_s Not Promised.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Tomorrow_s Not Promised 1.mp3` | 2024-06-14 15:23:40 | 320 kb/s (CBR 320) | 100.0% / 13 | 11 |
| `05 Tomorrow_s Not Promised.mp3` | 2024-06-14 13:53:10 | 320 kb/s (CBR 320) | 100.0% / 13 | 1 |

### 144. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `01 Accidents Will Happen.mp3`
- Selected: `01 Accidents Will Happen.mp3`
- Remove: `01 Accidents Will Happen 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Accidents Will Happen.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `01 Accidents Will Happen 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 145. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `11 Chemistry Class.mp3`
- Selected: `11 Chemistry Class.mp3`
- Remove: `11 Chemistry Class 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Chemistry Class.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `11 Chemistry Class 1.mp3` | 2026-07-11 17:47:28 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 146. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `04 Big Boys.mp3`
- Selected: `04 Big Boys.mp3`
- Remove: `04 Big Boys 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Big Boys.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `04 Big Boys 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 147. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `07 Goon Squad.mp3`
- Selected: `07 Goon Squad.mp3`
- Remove: `07 Goon Squad 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Goon Squad.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `07 Goon Squad 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 148. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `05 Green Shirt.mp3`
- Selected: `05 Green Shirt.mp3`
- Remove: `05 Green Shirt 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Green Shirt.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `05 Green Shirt 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 149. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `10 Moods for Moderns.mp3`
- Selected: `10 Moods for Moderns.mp3`
- Remove: `10 Moods for Moderns 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Moods for Moderns.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `10 Moods for Moderns 1.mp3` | 2026-07-11 17:47:28 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 150. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `08 Busy Bodies.mp3`
- Selected: `08 Busy Bodies.mp3`
- Remove: `08 Busy Bodies 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Busy Bodies.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `08 Busy Bodies 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 151. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `02 Senior Service.mp3`
- Selected: `02 Senior Service.mp3`
- Remove: `02 Senior Service 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Senior Service.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `02 Senior Service 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 152. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `12 Two Little Hitlers.mp3`
- Selected: `12 Two Little Hitlers.mp3`
- Remove: `12 Two Little Hitlers 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Two Little Hitlers.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `12 Two Little Hitlers 1.mp3` | 2026-07-11 17:47:28 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 153. `Elvis Costello & The Attractions/Armed Forces`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `06 Party Girl.mp3`
- Selected: `06 Party Girl.mp3`
- Remove: `06 Party Girl 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Party Girl.mp3` | 2020-04-06 22:53:46 | 320 kb/s (CBR 320) | 100.0% / 20 | 19 |
| `06 Party Girl 1.mp3` | 2026-07-11 17:47:27 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |

### 154. `English Teacher/This Could Be Texas`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 R&B.mp3`
- Selected: `08 R&B 1.mp3`
- Remove: `08 R&B.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 R&B 1.mp3` | 2024-04-28 20:47:33 | 320 kb/s (CBR 320) | 100.0% / 15 | 14 |
| `08 R&B.mp3` | 2024-03-10 22:27:49 | 320 kb/s (CBR 320) | 100.0% / 15 | 0 |

### 155. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `13 Up Them Thangs.mp3`
- Selected: `13 Up Them Thangs 1.mp3`
- Remove: `13 Up Them Thangs.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Up Them Thangs.mp3` | 2018-04-29 10:39:18 | 166 kb/s (VBR) | 97.9% / 30 | 15 |
| `13 Up Them Thangs 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 97.9% / 30 | 15 |

### 156. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `14 The Sermon.mp3`
- Selected: `14 The Sermon 1.mp3`
- Remove: `14 The Sermon.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `14 The Sermon.mp3` | 2018-04-29 10:39:18 | 185 kb/s (VBR) | 99.3% / 30 | 15 |
| `14 The Sermon 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 99.3% / 30 | 15 |

### 157. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `15 Skit III.mp3`
- Selected: `15 Skit III 1.mp3`
- Remove: `15 Skit III.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `15 Skit III.mp3` | 2018-04-29 10:39:18 | 156 kb/s (VBR) | 99.3% / 30 | 15 |
| `15 Skit III 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 99.3% / 30 | 15 |

### 158. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Genius E Dub.mp3`
- Selected: `08 Genius E Dub 1.mp3`
- Remove: `08 Genius E Dub.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Genius E Dub.mp3` | 2018-04-29 10:39:18 | 186 kb/s (VBR) | 97.9% / 30 | 15 |
| `08 Genius E Dub 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 97.9% / 30 | 15 |

### 159. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Skit II.mp3`
- Selected: `09 Skit II 1.mp3`
- Remove: `09 Skit II.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Skit II.mp3` | 2018-04-29 10:39:18 | 174 kb/s (VBR) | 99.3% / 30 | 15 |
| `09 Skit II 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 99.3% / 30 | 15 |

### 160. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Rapture.mp3`
- Selected: `01 Rapture 1.mp3`
- Remove: `01 Rapture.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Rapture.mp3` | 2018-04-29 10:39:18 | 77 kb/s (VBR) | 99.3% / 30 | 15 |
| `01 Rapture 1.mp3` | 2026-07-13 00:11:23 | 322 kb/s (CBR 320) | 99.3% / 30 | 15 |

### 161. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Come Thru.mp3`
- Selected: `03 Come Thru 1.mp3`
- Remove: `03 Come Thru.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Come Thru.mp3` | 2018-04-29 10:39:18 | 156 kb/s (VBR) | 99.3% / 30 | 15 |
| `03 Come Thru 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 99.3% / 30 | 15 |

### 162. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `16 Music (remix).mp3`
- Selected: `16 Music (remix) 1.mp3`
- Remove: `16 Music (remix).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `16 Music (remix).mp3` | 2018-04-29 10:39:18 | 166 kb/s (VBR) | 97.9% / 30 | 15 |
| `16 Music (remix) 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 97.9% / 30 | 15 |

### 163. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Skit I.mp3`
- Selected: `05 Skit I 1.mp3`
- Remove: `05 Skit I.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Skit I.mp3` | 2018-04-29 10:39:18 | 138 kb/s (VBR) | 99.3% / 30 | 15 |
| `05 Skit I 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 99.3% / 30 | 15 |

### 164. `Erick Sermon/Music`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Music.mp3`
- Selected: `04 Music 1.mp3`
- Remove: `04 Music.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Music.mp3` | 2018-04-29 10:39:18 | 188 kb/s (VBR) | 97.9% / 30 | 15 |
| `04 Music 1.mp3` | 2026-07-13 00:11:23 | 320 kb/s (CBR 320) | 97.9% / 30 | 15 |

### 165. `Eskimeaux/O.K_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 That's O.K..mp3`
- Selected: `11 That's O.K. 1.mp3`
- Remove: `11 That's O.K..mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 That's O.K. 1.mp3` | 2026-07-13 22:44:17 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `11 That's O.K..mp3` | 2018-04-29 10:49:35 | 148 kb/s (VBR) | 50.0% / 0 | 0 |

### 166. `Exposé/Exposure`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Exposed to Love.mp3`
- Selected: `03 Exposed to Love 1.mp3`
- Remove: `03 Exposed to Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Exposed to Love 1.mp3` | 2026-07-11 18:32:08 | 320 kb/s (CBR 320) | 94.3% / 12 | 9 |
| `03 Exposed to Love.mp3` | 2020-07-21 00:31:06 | 320 kb/s (CBR 320) | 82.8% / 12 | 1 |

### 167. `Exposé/Exposure`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 You're the One I Need.mp3`
- Selected: `09 You're the One I Need 1.mp3`
- Remove: `09 You're the One I Need.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 You're the One I Need 1.mp3` | 2026-07-11 18:32:08 | 320 kb/s (CBR 320) | 94.3% / 12 | 9 |
| `09 You're the One I Need.mp3` | 2020-07-21 00:31:07 | 320 kb/s (CBR 320) | 82.8% / 12 | 1 |

### 168. `Exposé/Exposure`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Let Me Be the One.mp3`
- Selected: `02 Let Me Be the One 1.mp3`
- Remove: `02 Let Me Be the One.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Let Me Be the One 1.mp3` | 2026-07-11 18:32:08 | 320 kb/s (CBR 320) | 94.3% / 12 | 9 |
| `02 Let Me Be the One.mp3` | 2021-04-18 19:50:03 | 320 kb/s (CBR 320) | 82.8% / 12 | 1 |

### 169. `Fontaines D.C_/Romance`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Starburster.mp3`
- Selected: `02 Starburster 1.mp3`
- Remove: `02 Starburster.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Starburster 1.mp3` | 2024-12-29 00:04:54 | 320 kb/s (CBR 320) | 100.0% / 21 | 11 |
| `02 Starburster.mp3` | 2025-01-20 21:19:08 | 320 kb/s (CBR 320) | 100.0% / 21 | 10 |

### 170. `French Vanilla/How Am I Not Myself_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Suddenly.mp3`
- Selected: `06 Suddenly 1.mp3`
- Remove: `06 Suddenly.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Suddenly 1.mp3` | 2026-07-13 23:53:58 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `06 Suddenly.mp3` | 2024-03-14 23:06:47 | 320 kb/s (CBR 320) | 90.0% / 9 | 0 |

### 171. `Future & Metro Boomin/WE DON'T TRUST YOU`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `02 Young Metro.mp3`
- Selected: `02 Young Metro.mp3`
- Remove: `02 Young Metro 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Young Metro.mp3` | 2024-05-02 21:30:06 | 320 kb/s (CBR 320) | 97.7% / 23 | 18 |
| `02 Young Metro 1.mp3` | 2024-05-02 21:30:06 | 320 kb/s (CBR 320) | 97.7% / 23 | 18 |

### 172. `Future & Metro Boomin/WE DON'T TRUST YOU`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Ain_t No Love.mp3`
- Selected: `12 Ain_t No Love 1.mp3`
- Remove: `12 Ain_t No Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Ain_t No Love 1.mp3` | 2024-05-02 21:30:06 | 320 kb/s (CBR 320) | 100.0% / 23 | 19 |
| `12 Ain_t No Love.mp3` | 2024-05-02 21:18:39 | 320 kb/s (CBR 320) | 81.2% / 23 | 1 |

### 173. `Future & Metro Boomin/WE DON'T TRUST YOU`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `03 Ice Attack.mp3`
- Selected: `03 Ice Attack.mp3`
- Remove: `03 Ice Attack 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Ice Attack.mp3` | 2024-05-02 21:30:06 | 320 kb/s (CBR 320) | 100.0% / 23 | 18 |
| `03 Ice Attack 1.mp3` | 2024-05-02 21:30:06 | 320 kb/s (CBR 320) | 100.0% / 23 | 18 |

### 174. `Future & Metro Boomin/WE DON'T TRUST YOU`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 We Don_t Trust You.mp3`
- Selected: `01 We Don_t Trust You 1.mp3`
- Remove: `01 We Don_t Trust You.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 We Don_t Trust You 1.mp3` | 2024-05-01 16:41:13 | 320 kb/s (CBR 320) | 100.0% / 23 | 0 |
| `01 We Don_t Trust You.mp3` | 2024-05-02 21:18:39 | 320 kb/s (CBR 320) | 81.2% / 23 | 1 |

### 175. `Future & Metro Boomin/WE DON_T TRUST YOU`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `12 Ain_t No Love.mp3`
- Selected: `12 Ain_t No Love.mp3`
- Remove: `12 Ain_t No Love 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Ain_t No Love.mp3` | 2024-04-28 20:47:35 | 320 kb/s (CBR 320) | 99.8% / 17 | 12 |
| `12 Ain_t No Love 1.mp3` | 2024-05-02 21:27:12 | 320 kb/s (CBR 320) | 99.8% / 17 | 4 |

### 176. `Future & Metro Boomin/WE DON_T TRUST YOU`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `11 Fried (She a Vibe).mp3`
- Selected: `11 Fried (She a Vibe).mp3`
- Remove: `11 Fried (She a Vibe) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Fried (She a Vibe).mp3` | 2024-04-28 20:47:35 | 320 kb/s (CBR 320) | 99.8% / 17 | 12 |
| `11 Fried (She a Vibe) 1.mp3` | 2024-05-02 21:27:12 | 320 kb/s (CBR 320) | 99.8% / 17 | 4 |

### 177. `Future & Metro Boomin/WE DON_T TRUST YOU`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `10 Runnin Outta Time.mp3`
- Selected: `10 Runnin Outta Time.mp3`
- Remove: `10 Runnin Outta Time 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Runnin Outta Time.mp3` | 2024-04-28 20:47:34 | 320 kb/s (CBR 320) | 99.8% / 17 | 12 |
| `10 Runnin Outta Time 1.mp3` | 2024-05-02 21:27:12 | 320 kb/s (CBR 320) | 99.8% / 17 | 4 |

### 178. `Future & Metro Boomin/WE DON_T TRUST YOU`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `09 Cinderella.mp3`
- Selected: `09 Cinderella.mp3`
- Remove: `09 Cinderella 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Cinderella.mp3` | 2024-04-28 20:47:34 | 320 kb/s (CBR 320) | 97.7% / 17 | 12 |
| `09 Cinderella 1.mp3` | 2024-05-02 21:27:12 | 320 kb/s (CBR 320) | 97.7% / 17 | 4 |

### 179. `Future & Metro Boomin/WE DON_T TRUST YOU`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `04 Type Shit.mp3`
- Selected: `04 Type Shit.mp3`
- Remove: `04 Type Shit 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Type Shit.mp3` | 2024-04-28 20:47:34 | 320 kb/s (CBR 320) | 97.7% / 17 | 12 |
| `04 Type Shit 1.mp3` | 2024-05-02 21:27:12 | 320 kb/s (CBR 320) | 97.7% / 17 | 4 |

### 180. `George Benson/20_20`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Nothing's Gonna Change My Love for You.mp3`
- Selected: `04 Nothing's Gonna Change My Love for You 1.mp3`
- Remove: `04 Nothing's Gonna Change My Love for You.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Nothing's Gonna Change My Love for You 1.mp3` | 2026-07-11 20:05:00 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `04 Nothing's Gonna Change My Love for You.mp3` | 2021-04-18 19:48:24 | 320 kb/s (CBR 320) | 52.1% / 0 | 0 |

### 181. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 Love Ballad.mp3`
- Selected: `08 Love Ballad 1.mp3`
- Remove: `08 Love Ballad.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Love Ballad.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `08 Love Ballad 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 182. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 White Rabbit.mp3`
- Selected: `06 White Rabbit 1.mp3`
- Remove: `06 White Rabbit.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 White Rabbit.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `06 White Rabbit 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 183. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 Livin' Inside Your Love.mp3`
- Selected: `11 Livin' Inside Your Love 1.mp3`
- Remove: `11 Livin' Inside Your Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Livin' Inside Your Love.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `11 Livin' Inside Your Love 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 184. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `14 Moody's Mood.mp3`
- Selected: `14 Moody's Mood 1.mp3`
- Remove: `14 Moody's Mood.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `14 Moody's Mood.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `14 Moody's Mood 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 185. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `15 We Got The Love.mp3`
- Selected: `15 We Got the Love 1.mp3`
- Remove: `15 We Got The Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `15 We Got The Love.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `15 We Got the Love 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 186. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Never Give Up On A Good Thing.mp3`
- Selected: `04 Never Give Up on a Good Thing 1.mp3`
- Remove: `04 Never Give Up On A Good Thing.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Never Give Up On A Good Thing.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `04 Never Give Up on a Good Thing 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 187. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `10 Last Train To Clarksville.mp3`
- Selected: `10 Last Train to Clarksville 1.mp3`
- Remove: `10 Last Train To Clarksville.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Last Train To Clarksville.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `10 Last Train to Clarksville 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 188. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 Turn Your Love Around.mp3`
- Selected: `01 Turn Your Love Around 1.mp3`
- Remove: `01 Turn Your Love Around.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Turn Your Love Around.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `01 Turn Your Love Around 1.mp3` | 2026-07-11 20:41:42 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 189. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `12 Here Comes The Sun.mp3`
- Selected: `12 Here Comes the Sun 1.mp3`
- Remove: `12 Here Comes The Sun.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Here Comes The Sun.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `12 Here Comes the Sun 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 190. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Give Me The Night.mp3`
- Selected: `03 Give Me the Night 1.mp3`
- Remove: `03 Give Me The Night.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Give Me The Night.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `03 Give Me the Night 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 191. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 On Broadway.mp3`
- Selected: `05 On Broadway 1.mp3`
- Remove: `05 On Broadway.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 On Broadway.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `05 On Broadway 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 192. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Love All The Hurt Away.mp3`
- Selected: `02 Love All the Hurt Away 1.mp3`
- Remove: `02 Love All The Hurt Away.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Love All The Hurt Away.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `02 Love All the Hurt Away 1.mp3` | 2026-07-11 20:41:42 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 193. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `13 Breezin'.mp3`
- Selected: `13 Breezin' 1.mp3`
- Remove: `13 Breezin'.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Breezin'.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `13 Breezin' 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 194. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `16 The Greatest Love Of All.mp3`
- Selected: `16 The Greatest Love of All 1.mp3`
- Remove: `16 The Greatest Love Of All.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `16 The Greatest Love Of All.mp3` | 2025-03-22 08:09:37 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `16 The Greatest Love of All 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 195. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 Nature Boy.mp3`
- Selected: `09 Nature Boy 1.mp3`
- Remove: `09 Nature Boy.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Nature Boy.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `09 Nature Boy 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 196. `George Benson/The George Benson Collection`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 This Masquerade.mp3`
- Selected: `07 This Masquerade 1.mp3`
- Remove: `07 This Masquerade.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 This Masquerade.mp3` | 2025-03-22 08:09:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `07 This Masquerade 1.mp3` | 2026-07-11 20:41:43 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 197. `Ghost Culture/Blue Ice _ Meltwater`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Meltwater.mp3`
- Selected: `02 Meltwater 1.mp3`
- Remove: `02 Meltwater.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Meltwater 1.mp3` | 2026-07-18 11:53:09 | 320 kb/s (CBR 320) | 100.0% / 1 | 1 |
| `02 Meltwater.mp3` | 2021-04-18 19:48:27 | 320 kb/s (CBR 320) | 90.9% / 1 | 0 |

### 198. `Gilligan Moss/Gilligan Moss`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 GM From GM _).mp3`
- Selected: `01 GM From GM _) 1.mp3`
- Remove: `01 GM From GM _).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 GM From GM _) 1.mp3` | 2026-07-19 14:29:07 | 320 kb/s (CBR 320) | 99.6% / 12 | 12 |
| `01 GM From GM _).mp3` | 2021-06-16 21:54:12 | 257 kb/s (VBR) | 89.6% / 12 | 0 |

### 199. `Grace Lightman/Silver Eater`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Repair Repair.mp3`
- Selected: `01 Repair Repair 1.mp3`
- Remove: `01 Repair Repair.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Repair Repair 1.mp3` | 2026-07-19 14:28:34 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `01 Repair Repair.mp3` | 2022-12-05 22:26:25 | 252 kb/s (VBR) | 79.5% / 10 | 0 |

### 200. `Gwen Guthrie/Ain_t Nothin_ Goin_ On but the Rent`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `05 Passion Eyes.mp3`
- Selected: `05 Passion Eyes.mp3`
- Remove: `05 Passion Eyes 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Passion Eyes.mp3` | 2025-03-10 21:20:13 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `05 Passion Eyes 1.mp3` | 2026-07-19 15:05:46 | 128 kb/s (CBR 128) | 100.0% / 8 | 4 |

### 201. `Gwen Guthrie/Ain_t Nothin_ Goin_ On but the Rent`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix).mp3`
- Selected: `03 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix) 1.mp3`
- Remove: `03 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix).mp3` | 2025-03-10 21:20:13 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `03 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix) 1.mp3` | 2026-07-19 15:05:46 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 202. `Gwen Guthrie/Ain_t Nothin_ Goin_ On but the Rent`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Ain_t Nothin_ Goin_ On but the Rent (dub mix).mp3`
- Selected: `04 Ain_t Nothin_ Goin_ On but the Rent (dub mix) 1.mp3`
- Remove: `04 Ain_t Nothin_ Goin_ On but the Rent (dub mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Ain_t Nothin_ Goin_ On but the Rent (dub mix).mp3` | 2025-03-10 21:20:13 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `04 Ain_t Nothin_ Goin_ On but the Rent (dub mix) 1.mp3` | 2026-07-19 15:05:46 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 203. `Gwen Guthrie/Ain_t Nothin_ Goin_ On but the Rent`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix).mp3`
- Selected: `01 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix) 1.mp3`
- Remove: `01 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix).mp3` | 2025-03-10 21:20:13 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `01 Ain_t Nothin_ Goin_ On but the Rent (12″ club mix) 1.mp3` | 2026-07-19 15:05:46 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 204. `Gwen Guthrie/Ain_t Nothin_ Goin_ On but the Rent`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Ain_t Nothin_ Goin_ On but the Rent (dub mix).mp3`
- Selected: `02 Ain_t Nothin_ Goin_ On but the Rent (dub mix) 1.mp3`
- Remove: `02 Ain_t Nothin_ Goin_ On but the Rent (dub mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Ain_t Nothin_ Goin_ On but the Rent (dub mix).mp3` | 2025-03-10 21:20:13 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `02 Ain_t Nothin_ Goin_ On but the Rent (dub mix) 1.mp3` | 2026-07-19 15:05:46 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 205. `Hemlock Ernst & Kenny Segal/Back at the House`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Down.mp3`
- Selected: `06 Down 1.mp3`
- Remove: `06 Down.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Down 1.mp3` | 2026-07-13 23:52:23 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `06 Down.mp3` | 2021-04-18 19:48:28 | 320 kb/s (CBR 320) | 65.0% / 0 | 0 |

### 206. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-01 Discontent (Feat. Robert Linna).mp3`
- Selected: `1-01 Discontent (Feat. Robert Linna).mp3`
- Remove: `1-01 Discontent (Feat. Robert Linna) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-01 Discontent (Feat. Robert Linna).mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-01 Discontent (Feat. Robert Linna) 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 207. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-12 Always Too Late.mp3`
- Selected: `1-12 Always Too Late.mp3`
- Remove: `1-12 Always Too Late 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-12 Always Too Late.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-12 Always Too Late 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 208. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-10 Utopia (Feat. Matthew J. Ruys).mp3`
- Selected: `1-10 Utopia (Feat. Matthew J. Ruys).mp3`
- Remove: `1-10 Utopia (Feat. Matthew J. Ruys) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-10 Utopia (Feat. Matthew J. Ruys).mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-10 Utopia (Feat. Matthew J. Ruys) 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 209. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-14 It Happened.mp3`
- Selected: `1-14 It Happened.mp3`
- Remove: `1-14 It Happened 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-14 It Happened.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-14 It Happened 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 210. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-04 Tiptoe.mp3`
- Selected: `1-04 Tiptoe.mp3`
- Remove: `1-04 Tiptoe 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-04 Tiptoe.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-04 Tiptoe 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 211. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-05 So Serious.mp3`
- Selected: `1-05 So Serious.mp3`
- Remove: `1-05 So Serious 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-05 So Serious.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-05 So Serious 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 212. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-03 Hunger.mp3`
- Selected: `1-03 Hunger.mp3`
- Remove: `1-03 Hunger 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-03 Hunger.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-03 Hunger 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 213. `I Wear_ Experiment/Discontent`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-02 Unwind.mp3`
- Selected: `1-02 Unwind 1.mp3`
- Remove: `1-02 Unwind.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-02 Unwind 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 28 |
| `1-02 Unwind.mp3` | 2022-09-12 18:00:39 | 320 kb/s (CBR 320) | 100.0% / 28 | 0 |

### 214. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-13 Calling Back To The Sea.mp3`
- Selected: `1-13 Calling Back To The Sea.mp3`
- Remove: `1-13 Calling Back To The Sea 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-13 Calling Back To The Sea.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-13 Calling Back To The Sea 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 215. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-07 Feels Like Hope.mp3`
- Selected: `1-07 Feels Like Hope.mp3`
- Remove: `1-07 Feels Like Hope 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-07 Feels Like Hope.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-07 Feels Like Hope 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 216. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-11 Chocolate.mp3`
- Selected: `1-11 Chocolate.mp3`
- Remove: `1-11 Chocolate 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-11 Chocolate.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-11 Chocolate 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 217. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-06 Take Me Back To The Church.mp3`
- Selected: `1-06 Take Me Back To The Church.mp3`
- Remove: `1-06 Take Me Back To The Church 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-06 Take Me Back To The Church.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-06 Take Me Back To The Church 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 218. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-15 Thom & The Sunken Soldiers.mp3`
- Selected: `1-15 Thom & The Sunken Soldiers.mp3`
- Remove: `1-15 Thom & The Sunken Soldiers 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-15 Thom & The Sunken Soldiers.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-15 Thom & The Sunken Soldiers 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 219. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-08 Lone Rider.mp3`
- Selected: `1-08 Lone Rider.mp3`
- Remove: `1-08 Lone Rider 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-08 Lone Rider.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-08 Lone Rider 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 220. `I Wear_ Experiment/Discontent`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `1-09 No Life Forgiven.mp3`
- Selected: `1-09 No Life Forgiven.mp3`
- Remove: `1-09 No Life Forgiven 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-09 No Life Forgiven.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |
| `1-09 No Life Forgiven 1.mp3` | 2022-09-12 17:38:51 | 320 kb/s (CBR 320) | 100.0% / 28 | 27 |

### 221. `James Blake/Playing Robots Into Heaven`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Loading.mp3`
- Selected: `02 Loading 1.mp3`
- Remove: `02 Loading.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Loading 1.mp3` | 2024-01-31 22:53:42 | 320 kb/s (CBR 320) | 100.0% / 12 | 1 |
| `02 Loading.mp3` | 2023-10-16 20:24:55 | 258 kb/s (VBR) | 75.0% / 12 | 0 |

### 222. `Janis Ian/Between the Lines`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 At Seventeen.mp3`
- Selected: `02 At Seventeen 1.mp3`
- Remove: `02 At Seventeen.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 At Seventeen 1.mp3` | 2026-07-11 20:20:46 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `02 At Seventeen.mp3` | 2024-03-14 22:30:55 | 320 kb/s (CBR 320) | 45.8% / 0 | 0 |

### 223. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Most Of All.mp3`
- Selected: `08 Most of All 1.mp3`
- Remove: `08 Most Of All.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Most of All 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `08 Most Of All.mp3` | 2018-04-29 10:03:41 | 241 kb/s (VBR) | 98.4% / 18 | 7 |

### 224. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Do It To The Beat.mp3`
- Selected: `07 Do It to the Beat 1.mp3`
- Remove: `07 Do It To The Beat.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Do It to the Beat 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `07 Do It To The Beat.mp3` | 2018-04-29 10:03:41 | 255 kb/s (VBR) | 98.4% / 18 | 7 |

### 225. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Looking For A New Love (extended club version).mp3`
- Selected: `10 Looking for a New Love (extended club version) 1.mp3`
- Remove: `10 Looking For A New Love (extended club version).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Looking for a New Love (extended club version) 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `10 Looking For A New Love (extended club version).mp3` | 2018-04-29 10:03:41 | 253 kb/s (VBR) | 98.4% / 18 | 7 |

### 226. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Love Injection.mp3`
- Selected: `05 Love Injection 1.mp3`
- Remove: `05 Love Injection.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Love Injection 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `05 Love Injection.mp3` | 2018-04-29 10:03:41 | 242 kb/s (VBR) | 98.4% / 18 | 7 |

### 227. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Some Kind Of Lover.mp3`
- Selected: `03 Some Kind of Lover 1.mp3`
- Remove: `03 Some Kind Of Lover.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Some Kind of Lover 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `03 Some Kind Of Lover.mp3` | 2018-04-29 10:03:41 | 247 kb/s (VBR) | 98.4% / 18 | 7 |

### 228. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Looking For A New Love.mp3`
- Selected: `01 Looking for a New Love 1.mp3`
- Remove: `01 Looking For A New Love.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Looking for a New Love 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `01 Looking For A New Love.mp3` | 2021-04-18 19:52:29 | 248 kb/s (VBR) | 98.4% / 18 | 0 |

### 229. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 For The Girls.mp3`
- Selected: `04 For the Girls 1.mp3`
- Remove: `04 For The Girls.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 For the Girls 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `04 For The Girls.mp3` | 2018-04-29 10:03:41 | 248 kb/s (VBR) | 98.4% / 18 | 7 |

### 230. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Still A Thrill.mp3`
- Selected: `02 Still a Thrill 1.mp3`
- Remove: `02 Still A Thrill.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Still a Thrill 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `02 Still A Thrill.mp3` | 2018-04-29 10:03:41 | 240 kb/s (VBR) | 98.4% / 18 | 7 |

### 231. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Don't You Want Me.mp3`
- Selected: `06 Don't You Want Me 1.mp3`
- Remove: `06 Don't You Want Me.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Don't You Want Me 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `06 Don't You Want Me.mp3` | 2021-04-18 19:48:12 | 231 kb/s (VBR) | 98.4% / 18 | 0 |

### 232. `Jody Watley/Jody Watley`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Learn To Say No (Duet With George Michael).mp3`
- Selected: `09 Learn to Say No (Duet with George Michael) 1.mp3`
- Remove: `09 Learn To Say No (Duet With George Michael).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Learn to Say No (Duet with George Michael) 1.mp3` | 2026-07-11 19:12:48 | 320 kb/s (CBR 320) | 98.4% / 18 | 9 |
| `09 Learn To Say No (Duet With George Michael).mp3` | 2018-04-29 10:03:41 | 257 kb/s (VBR) | 98.4% / 18 | 7 |

### 233. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Cry, Cry, Cry (remastered 2022).mp3`
- Selected: `05 Cry, Cry, Cry (remastered 2022) 1.mp3`
- Remove: `05 Cry, Cry, Cry (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Cry, Cry, Cry (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `05 Cry, Cry, Cry (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 234. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Remember Me (remastered 2022).mp3`
- Selected: `06 Remember Me (remastered 2022) 1.mp3`
- Remove: `06 Remember Me (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Remember Me (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `06 Remember Me (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 235. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `12 Doin_ My Time (remastered 2022).mp3`
- Selected: `12 Doin_ My Time (remastered 2022) 1.mp3`
- Remove: `12 Doin_ My Time (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Doin_ My Time (remastered 2022).mp3` | 2026-07-02 19:36:30 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `12 Doin_ My Time (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 236. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Country Boy (remastered 2022).mp3`
- Selected: `03 Country Boy (remastered 2022) 1.mp3`
- Remove: `03 Country Boy (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Country Boy (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `03 Country Boy (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 237. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 Folsom Prison Blues (remastered 2022).mp3`
- Selected: `11 Folsom Prison Blues (remastered 2022) 1.mp3`
- Remove: `11 Folsom Prison Blues (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Folsom Prison Blues (remastered 2022).mp3` | 2026-07-02 19:36:30 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `11 Folsom Prison Blues (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 238. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 I Walk the Line (remastered 2022).mp3`
- Selected: `09 I Walk the Line (remastered 2022) 1.mp3`
- Remove: `09 I Walk the Line (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 I Walk the Line (remastered 2022).mp3` | 2026-07-02 19:36:30 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `09 I Walk the Line (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 239. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 So Doggone Lonesome (remastered 2022).mp3`
- Selected: `07 So Doggone Lonesome (remastered 2022) 1.mp3`
- Remove: `07 So Doggone Lonesome (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 So Doggone Lonesome (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `07 So Doggone Lonesome (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 240. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 If the Good Lord_s Willing (remastered 2022).mp3`
- Selected: `04 If the Good Lord_s Willing (remastered 2022) 1.mp3`
- Remove: `04 If the Good Lord_s Willing (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 If the Good Lord_s Willing (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `04 If the Good Lord_s Willing (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 241. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `10 The Wreck of the Old _97 (remastered 2022).mp3`
- Selected: `10 The Wreck of the Old _97 (remastered 2022) 1.mp3`
- Remove: `10 The Wreck of the Old _97 (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 The Wreck of the Old _97 (remastered 2022).mp3` | 2026-07-02 19:36:30 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `10 The Wreck of the Old _97 (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 242. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 Rock Island Line (remastered 2022).mp3`
- Selected: `01 Rock Island Line (remastered 2022) 1.mp3`
- Remove: `01 Rock Island Line (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Rock Island Line (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `01 Rock Island Line (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 243. `Johnny Cash/With His Hot and Blue Guitar`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 I Heard That Lonesome Whistle (remastered 2022).mp3`
- Selected: `02 I Heard That Lonesome Whistle (remastered 2022) 1.mp3`
- Remove: `02 I Heard That Lonesome Whistle (remastered 2022).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 I Heard That Lonesome Whistle (remastered 2022).mp3` | 2026-07-02 19:36:29 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |
| `02 I Heard That Lonesome Whistle (remastered 2022) 1.mp3` | 2026-07-19 14:08:15 | 320 kb/s (CBR 320) | 100.0% / 22 | 11 |

### 244. `KH/Looking At Your Pager`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Looking at Your Pager.mp3`
- Selected: `02 Looking at Your Pager 1.mp3`
- Remove: `02 Looking at Your Pager.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Looking at Your Pager 1.mp3` | 2026-07-14 14:22:49 | 320 kb/s (CBR 320) | 100.0% / 1 | 1 |
| `02 Looking at Your Pager.mp3` | 2022-05-22 18:29:21 | 320 kb/s (CBR 320) | 77.1% / 1 | 0 |

### 245. `Kim Gordon/The Collective`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 I Don_t Miss My Mind.mp3`
- Selected: `03 I Don_t Miss My Mind 1.mp3`
- Remove: `03 I Don_t Miss My Mind.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 I Don_t Miss My Mind 1.mp3` | 2024-03-30 20:56:22 | 320 kb/s (CBR 320) | 100.0% / 15 | 12 |
| `03 I Don_t Miss My Mind.mp3` | 2024-04-28 20:47:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 2 |

### 246. `Kim Gordon/The Collective`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 It_s Dark Inside.mp3`
- Selected: `06 It_s Dark Inside 1.mp3`
- Remove: `06 It_s Dark Inside.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 It_s Dark Inside 1.mp3` | 2024-03-30 20:56:22 | 320 kb/s (CBR 320) | 100.0% / 15 | 12 |
| `06 It_s Dark Inside.mp3` | 2024-04-28 20:47:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 2 |

### 247. `Kim Gordon/The Collective`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 I_m a Man.mp3`
- Selected: `04 I_m a Man 1.mp3`
- Remove: `04 I_m a Man.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 I_m a Man 1.mp3` | 2024-03-30 20:56:22 | 320 kb/s (CBR 320) | 100.0% / 15 | 12 |
| `04 I_m a Man.mp3` | 2024-04-28 20:47:36 | 320 kb/s (CBR 320) | 100.0% / 15 | 2 |

### 248. `La Sécurité/Stay Safe!`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Serpent.mp3`
- Selected: `07 Serpent 1.mp3`
- Remove: `07 Serpent.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Serpent 1.mp3` | 2024-04-28 20:47:35 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `07 Serpent.mp3` | 2023-10-16 20:24:55 | 251 kb/s (VBR) | 100.0% / 10 | 0 |

### 249. `Lake Street Dive/Free Yourself Up`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Good Kisser.mp3`
- Selected: `02 Good Kisser 1.mp3`
- Remove: `02 Good Kisser.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Good Kisser 1.mp3` | 2026-07-13 23:05:24 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `02 Good Kisser.mp3` | 2024-03-14 22:55:46 | 320 kb/s (CBR 320) | 83.3% / 9 | 0 |

### 250. `Lana Del Rey/Did you know that there's a tunnel under Ocean Blvd`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `11 Grandfather please stand on the shoulders of my father while he_s deep‐sea fishing.mp3`
- Selected: `11 Grandfather please stand on the shoulders of my father while he_s deep‐sea fishing.mp3`
- Remove: `11 Grandfather please stand on the shoulders of my father while he_s deep‐sea fishing 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Grandfather please stand on the shoulders of my father while he_s deep‐sea fishing.mp3` | 2024-02-27 13:48:20 | 320 kb/s (CBR 320) | 97.9% / 18 | 1 |
| `11 Grandfather please stand on the shoulders of my father while he_s deep‐sea fishing 1.mp3` | 2024-02-17 18:15:22 | 320 kb/s (CBR 320) | 97.9% / 18 | 1 |

### 251. `Lana Del Rey/Did you know that there's a tunnel under Ocean Blvd`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `02 Did you know that there_s a tunnel under Ocean Blvd.mp3`
- Selected: `02 Did you know that there_s a tunnel under Ocean Blvd.mp3`
- Remove: `02 Did you know that there_s a tunnel under Ocean Blvd 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Did you know that there_s a tunnel under Ocean Blvd.mp3` | 2024-02-27 13:48:19 | 320 kb/s (CBR 320) | 99.6% / 18 | 1 |
| `02 Did you know that there_s a tunnel under Ocean Blvd 1.mp3` | 2024-02-17 18:13:42 | 320 kb/s (CBR 320) | 99.6% / 18 | 1 |

### 252. `Larry Heard/Godfathers of House`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Bring Down the Walls (vocal).mp3`
- Selected: `02 Bring Down the Walls (vocal) 1.mp3`
- Remove: `02 Bring Down the Walls (vocal).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Bring Down the Walls (vocal) 1.mp3` | 2018-04-28 23:58:36 | 272 kb/s (VBR) | 100.0% / 1 | 1 |
| `02 Bring Down the Walls (vocal).mp3` | 2019-07-21 00:35:22 | 272 kb/s (VBR) | 82.8% / 1 | 0 |

### 253. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 The Old Crowd.mp3`
- Selected: `02 The Old Crowd 1.mp3`
- Remove: `02 The Old Crowd.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 The Old Crowd 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `02 The Old Crowd.mp3` | 2023-03-26 20:39:11 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 254. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Run Bobby, Run.mp3`
- Selected: `08 Run Bobby, Run 1.mp3`
- Remove: `08 Run Bobby, Run.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Run Bobby, Run 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `08 Run Bobby, Run.mp3` | 2023-03-26 20:39:12 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 255. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 My Foolish Heart.mp3`
- Selected: `05 My Foolish Heart 1.mp3`
- Remove: `05 My Foolish Heart.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 My Foolish Heart 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `05 My Foolish Heart.mp3` | 2023-03-26 20:39:11 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 256. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 If That's the Way You Want It.mp3`
- Selected: `11 If That's the Way You Want It 1.mp3`
- Remove: `11 If That's the Way You Want It.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 If That's the Way You Want It 1.mp3` | 2024-03-15 21:41:25 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `11 If That's the Way You Want It.mp3` | 2023-03-26 20:39:12 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 257. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 I Struck a Match.mp3`
- Selected: `10 I Struck a Match 1.mp3`
- Remove: `10 I Struck a Match.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 I Struck a Match 1.mp3` | 2024-03-15 21:41:25 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `10 I Struck a Match.mp3` | 2023-03-26 20:39:12 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 258. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Hello Young Lover.mp3`
- Selected: `04 Hello Young Lover 1.mp3`
- Remove: `04 Hello Young Lover.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Hello Young Lover 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `04 Hello Young Lover.mp3` | 2023-03-26 20:39:11 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 259. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 She's a Fool.mp3`
- Selected: `01 She's a Fool 1.mp3`
- Remove: `01 She's a Fool.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 She's a Fool 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `01 She's a Fool.mp3` | 2023-03-26 20:39:11 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 260. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Young and Foolish.mp3`
- Selected: `09 Young and Foolish 1.mp3`
- Remove: `09 Young and Foolish.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Young and Foolish 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `09 Young and Foolish.mp3` | 2023-03-26 20:39:12 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 261. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Time to Go.mp3`
- Selected: `12 Time to Go 1.mp3`
- Remove: `12 Time to Go.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Time to Go 1.mp3` | 2024-03-15 21:41:25 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `12 Time to Go.mp3` | 2023-03-26 20:39:12 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 262. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Sunshine, Lollipops and Rainbows.mp3`
- Selected: `06 Sunshine, Lollipops and Rainbows 1.mp3`
- Remove: `06 Sunshine, Lollipops and Rainbows.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Sunshine, Lollipops and Rainbows 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `06 Sunshine, Lollipops and Rainbows.mp3` | 2023-03-26 20:39:11 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 263. `Lesley Gore/Sings of Mixed-Up Hearts`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Fools Rush In.mp3`
- Selected: `03 Fools Rush In 1.mp3`
- Remove: `03 Fools Rush In.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Fools Rush In 1.mp3` | 2024-03-15 21:41:24 | 320 kb/s (CBR 320) | 100.0% / 34 | 23 |
| `03 Fools Rush In.mp3` | 2023-03-26 20:39:11 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 264. `LeVert/Rope a Dope Style`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Baby I'm Ready.mp3`
- Selected: `08 Baby I'm Ready 1.mp3`
- Remove: `08 Baby I'm Ready.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Baby I'm Ready 1.mp3` | 2026-07-12 03:18:16 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `08 Baby I'm Ready.mp3` | 2021-04-18 19:45:56 | 264 kb/s (VBR) | 64.6% / 0 | 0 |

### 265. `Little Dragon/Slugs of Love`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Frisco.mp3`
- Selected: `02 Frisco 1.mp3`
- Remove: `02 Frisco.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Frisco 1.mp3` | 2023-07-23 11:31:31 | 320 kb/s (CBR 320) | 100.0% / 14 | 12 |
| `02 Frisco.mp3` | 2023-05-28 20:42:01 | 320 kb/s (CBR 320) | 62.3% / 3 | 3 |

### 266. `Little Dragon/Slugs of Love`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Gold.mp3`
- Selected: `07 Gold 1.mp3`
- Remove: `07 Gold.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Gold 1.mp3` | 2023-07-23 11:31:31 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |
| `07 Gold.mp3` | 2023-05-28 21:20:08 | 253 kb/s (VBR) | 99.8% / 13 | 0 |

### 267. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `04 Desperate People.mp3`
- Selected: `04 Desperate People.mp3`
- Remove: `04 Desperate People 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Desperate People.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `04 Desperate People 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 268. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `06 Funny Vibe.mp3`
- Selected: `06 Funny Vibe.mp3`
- Remove: `06 Funny Vibe 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Funny Vibe.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `06 Funny Vibe 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 269. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `08 Broken Hearts.mp3`
- Selected: `08 Broken Hearts.mp3`
- Remove: `08 Broken Hearts 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Broken Hearts.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `08 Broken Hearts 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 270. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `09 Glamour Boys.mp3`
- Selected: `09 Glamour Boys.mp3`
- Remove: `09 Glamour Boys 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Glamour Boys.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `09 Glamour Boys 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 271. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `02 I Want to Know.mp3`
- Selected: `02 I Want to Know.mp3`
- Remove: `02 I Want to Know 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 I Want to Know.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `02 I Want to Know 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 272. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `05 Open Letter (to a Landlord).mp3`
- Selected: `05 Open Letter (to a Landlord).mp3`
- Remove: `05 Open Letter (To a Landlord) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Open Letter (to a Landlord).mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `05 Open Letter (To a Landlord) 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 273. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `07 Memories Can't Wait.mp3`
- Selected: `07 Memories Can't Wait.mp3`
- Remove: `07 Memories Can't Wait 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Memories Can't Wait.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `07 Memories Can't Wait 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 274. `Living Colour/Vivid`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Cult of Personality.mp3`
- Selected: `01 Cult of Personality 1.mp3`
- Remove: `01 Cult of Personality.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Cult of Personality 1.mp3` | 2025-03-10 22:12:38 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |
| `01 Cult of Personality.mp3` | 2021-04-18 19:46:37 | 320 kb/s (CBR 320) | 93.1% / 10 | 0 |

### 275. `Living Colour/Vivid`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `03 Middle Man.mp3`
- Selected: `03 Middle Man.mp3`
- Remove: `03 Middle Man 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Middle Man.mp3` | 2018-04-29 13:48:14 | 320 kb/s (CBR 320) | 93.1% / 10 | 9 |
| `03 Middle Man 1.mp3` | 2025-03-10 22:12:39 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 276. `Lloyd Cole and the Commotions/Rattlesnakes`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `07 2cv.mp3`
- Selected: `07 2cv.mp3`
- Remove: `07 2CV 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 2cv.mp3` | 2020-04-06 23:45:16 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |
| `07 2CV 1.mp3` | 2020-04-06 23:45:16 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 277. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Raid (instrumental).mp3`
- Selected: `03 Raid (instrumental) 1.mp3`
- Remove: `03 Raid (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Raid (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |
| `03 Raid (instrumental).mp3` | 2021-04-18 19:47:32 | 211 kb/s (VBR) | 100.0% / 29 | 0 |

### 278. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Rainbows (instrumental).mp3`
- Selected: `05 Rainbows (instrumental) 1.mp3`
- Remove: `05 Rainbows (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Rainbows (instrumental).mp3` | 2018-04-29 10:26:47 | 212 kb/s (VBR) | 100.0% / 29 | 13 |
| `05 Rainbows (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 279. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Money Folder (instrumental).mp3`
- Selected: `07 Money Folder (instrumental) 1.mp3`
- Remove: `07 Money Folder (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Money Folder (instrumental).mp3` | 2018-04-29 10:26:48 | 199 kb/s (VBR) | 100.0% / 29 | 13 |
| `07 Money Folder (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 280. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Curls (instrumental).mp3`
- Selected: `06 Curls (instrumental) 1.mp3`
- Remove: `06 Curls (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Curls (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |
| `06 Curls (instrumental).mp3` | 2021-04-18 19:46:37 | 212 kb/s (VBR) | 95.4% / 29 | 0 |

### 281. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `14 Eye (instrumental).mp3`
- Selected: `14 Eye (instrumental) 1.mp3`
- Remove: `14 Eye (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `14 Eye (instrumental).mp3` | 2018-04-29 10:26:48 | 183 kb/s (VBR) | 100.0% / 29 | 13 |
| `14 Eye (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 282. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `13 Fancy Clown (instrumental).mp3`
- Selected: `13 Fancy Clown (instrumental) 1.mp3`
- Remove: `13 Fancy Clown (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Fancy Clown (instrumental).mp3` | 2018-04-29 10:26:48 | 207 kb/s (VBR) | 100.0% / 29 | 13 |
| `13 Fancy Clown (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 283. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Shadows of Tomorrow (instrumental).mp3`
- Selected: `08 Shadows of Tomorrow (instrumental) 1.mp3`
- Remove: `08 Shadows of Tomorrow (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Shadows of Tomorrow (instrumental).mp3` | 2018-04-29 10:26:48 | 201 kb/s (VBR) | 100.0% / 29 | 13 |
| `08 Shadows of Tomorrow (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 284. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `15 All Caps (instrumental).mp3`
- Selected: `15 All Caps (instrumental) 1.mp3`
- Remove: `15 All Caps (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `15 All Caps (instrumental).mp3` | 2018-04-29 10:26:48 | 194 kb/s (VBR) | 100.0% / 29 | 13 |
| `15 All Caps (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 285. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Strange Ways (instrumental).mp3`
- Selected: `12 Strange Ways (instrumental) 1.mp3`
- Remove: `12 Strange Ways (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Strange Ways (instrumental).mp3` | 2018-04-29 10:26:48 | 214 kb/s (VBR) | 100.0% / 29 | 13 |
| `12 Strange Ways (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 286. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Hardcore Hustle (instrumental).mp3`
- Selected: `11 Hardcore Hustle (instrumental) 1.mp3`
- Remove: `11 Hardcore Hustle (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Hardcore Hustle (instrumental).mp3` | 2018-04-29 10:26:48 | 201 kb/s (VBR) | 100.0% / 29 | 13 |
| `11 Hardcore Hustle (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 287. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `17 Rhinestone Cowboy (instrumental).mp3`
- Selected: `17 Rhinestone Cowboy (instrumental) 1.mp3`
- Remove: `17 Rhinestone Cowboy (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `17 Rhinestone Cowboy (instrumental).mp3` | 2018-04-29 10:26:48 | 206 kb/s (VBR) | 100.0% / 29 | 13 |
| `17 Rhinestone Cowboy (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 288. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 America's Most Blunted (instrumental).mp3`
- Selected: `04 America's Most Blunted (instrumental) 1.mp3`
- Remove: `04 America's Most Blunted (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 America's Most Blunted (instrumental).mp3` | 2018-04-29 10:26:47 | 213 kb/s (VBR) | 100.0% / 29 | 13 |
| `04 America's Most Blunted (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 289. `Madvillain/Madvillainy Instrumentals`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Figaro (instrumental).mp3`
- Selected: `10 Figaro (instrumental) 1.mp3`
- Remove: `10 Figaro (instrumental).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Figaro (instrumental).mp3` | 2018-04-29 10:26:48 | 171 kb/s (VBR) | 100.0% / 29 | 13 |
| `10 Figaro (instrumental) 1.mp3` | 2025-02-23 19:41:36 | 320 kb/s (CBR 320) | 100.0% / 29 | 13 |

### 290. `Makaya McCraven/Universal Beings`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Flipped OUT.mp3`
- Selected: `12 Flipped Out 1.mp3`
- Remove: `12 Flipped OUT.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Flipped Out 1.mp3` | 2020-07-27 14:24:30 | 320 kb/s (CBR 320) | 99.2% / 43 | 21 |
| `12 Flipped OUT.mp3` | 2018-12-09 22:34:39 | 320 kb/s (CBR 320) | 100.0% / 43 | 12 |

### 291. `Manassas/Manassas`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `20 The Treasure (Take One).mp3`
- Selected: `20 The Treasure (Take One).mp3`
- Remove: `20 The Treasure (take One) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `20 The Treasure (Take One).mp3` | 2020-04-06 23:48:19 | 320 kb/s (CBR 320) | 100.0% / 20 | 20 |
| `20 The Treasure (take One) 1.mp3` | 2020-04-06 23:48:19 | 320 kb/s (CBR 320) | 100.0% / 20 | 20 |

### 292. `Mark Ronson/Uptown Special`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Daffodils.mp3`
- Selected: `06 Daffodils 1.mp3`
- Remove: `06 Daffodils.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Daffodils 1.mp3` | 2018-04-29 12:04:09 | 245 kb/s (VBR) | 98.1% / 11 | 10 |
| `06 Daffodils.mp3` | 2021-04-18 19:51:53 | 263 kb/s (VBR) | 52.1% / 0 | 1 |

### 293. `Marvin Gaye/Live at the London Palladium`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `13 Got to Give It Up.mp3`
- Selected: `13 Got to Give It Up 1.mp3`
- Remove: `13 Got to Give It Up.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Got to Give It Up 1.mp3` | 2026-07-11 18:58:14 | 320 kb/s (CBR 320) | 100.0% / 12 | 12 |
| `13 Got to Give It Up.mp3` | 2024-03-14 23:20:20 | 320 kb/s (CBR 320) | 89.6% / 12 | 0 |

### 294. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 All the Time.mp3`
- Selected: `02 All the Time 1.mp3`
- Remove: `02 All the Time.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 All the Time.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `02 All the Time 1.mp3` | 2026-07-11 20:06:51 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 295. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Overture.mp3`
- Selected: `01 Overture 1.mp3`
- Remove: `01 Overture.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Overture.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `01 Overture 1.mp3` | 2026-07-11 20:06:51 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 296. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Here Am I.mp3`
- Selected: `06 Here Am I 1.mp3`
- Remove: `06 Here Am I.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Here Am I.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `06 Here Am I 1.mp3` | 2026-07-11 20:06:52 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 297. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Life Song.mp3`
- Selected: `11 Life Song 1.mp3`
- Remove: `11 Life Song.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Life Song.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `11 Life Song 1.mp3` | 2026-07-11 20:06:52 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 298. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Wanderlove.mp3`
- Selected: `04 Wanderlove 1.mp3`
- Remove: `04 Wanderlove.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Wanderlove.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `04 Wanderlove 1.mp3` | 2026-07-11 20:06:51 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 299. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Dylan Thomas.mp3`
- Selected: `03 Dylan Thomas 1.mp3`
- Remove: `03 Dylan Thomas.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Dylan Thomas.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `03 Dylan Thomas 1.mp3` | 2026-07-11 20:06:51 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 300. `Mason Williams/The Mason Williams Phonograph Record`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Sunflower.mp3`
- Selected: `12 Sunflower 1.mp3`
- Remove: `12 Sunflower.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Sunflower.mp3` | 2018-04-29 10:29:02 | 192 kb/s (CBR 192) | 96.2% / 11 | 11 |
| `12 Sunflower 1.mp3` | 2026-07-11 20:06:52 | 320 kb/s (CBR 320) | 96.2% / 11 | 11 |

### 301. `Maya Jane Coles/What They Say`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Simple Things.mp3`
- Selected: `03 Simple Things 1.mp3`
- Remove: `03 Simple Things.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Simple Things 1.mp3` | 2026-07-19 15:30:23 | 320 kb/s (CBR 320) | 98.9% / 4 | 3 |
| `03 Simple Things.mp3` | 2021-04-18 19:49:39 | 320 kb/s (CBR 320) | 96.6% / 4 | 0 |

### 302. `Maya Jane Coles/What They Say`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 What They Say.mp3`
- Selected: `01 What They Say 1.mp3`
- Remove: `01 What They Say.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 What They Say 1.mp3` | 2026-07-19 15:30:22 | 320 kb/s (CBR 320) | 98.9% / 4 | 3 |
| `01 What They Say.mp3` | 2022-12-05 22:41:12 | 320 kb/s (CBR 320) | 96.6% / 4 | 0 |

### 303. `Me and My Friends/Hide Your Way`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `01 All That Is You.mp3`
- Selected: `01 All That Is You.mp3`
- Remove: `01 All That Is You 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 All That Is You.mp3` | 2025-03-23 17:31:56 | 320 kb/s (CBR 320) | 88.6% / 6 | 6 |
| `01 All That Is You 1.mp3` | 2025-04-20 18:04:52 | 320 kb/s (CBR 320) | 88.6% / 6 | 0 |

### 304. `Muddy Waters/Muddy Waters at Newport 1960`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `13 Meanest Woman (Mono).mp3`
- Selected: `13 Meanest Woman (Mono).mp3`
- Remove: `13 Meanest Woman (mono) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Meanest Woman (Mono).mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `13 Meanest Woman (mono) 1.mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 305. `Muddy Waters/Muddy Waters at Newport 1960`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `11 Soon Forgotten (Mono).mp3`
- Selected: `11 Soon Forgotten (Mono).mp3`
- Remove: `11 Soon Forgotten (mono) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Soon Forgotten (Mono).mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `11 Soon Forgotten (mono) 1.mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 306. `Muddy Waters/Muddy Waters at Newport 1960`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `12 Tiger in Your Tank (Mono).mp3`
- Selected: `12 Tiger in Your Tank (Mono).mp3`
- Remove: `12 Tiger in Your Tank (mono) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Tiger in Your Tank (Mono).mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `12 Tiger in Your Tank (mono) 1.mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 307. `Muddy Waters/Muddy Waters at Newport 1960`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `10 I Got My Brand on You (Mono).mp3`
- Selected: `10 I Got My Brand on You (Mono).mp3`
- Remove: `10 I Got My Brand on You (mono) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 I Got My Brand on You (Mono).mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |
| `10 I Got My Brand on You (mono) 1.mp3` | 2020-04-06 23:55:13 | 320 kb/s (CBR 320) | 100.0% / 15 | 15 |

### 308. `Natalie Bergman/My Home Is Not In This World`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `02 Gunslinger.mp3`
- Selected: `02 Gunslinger.mp3`
- Remove: `02 Gunslinger 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Gunslinger.mp3` | 2026-04-11 19:24:17 | 320 kb/s (CBR 320) | 100.0% / 11 | 11 |
| `02 Gunslinger 1.mp3` | 2026-04-11 19:24:17 | 320 kb/s (CBR 320) | 100.0% / 11 | 11 |

### 309. `Orb/Abolition of the Royal Familia`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Pervitin (Empire Culling & The Hemlock Stone Version).mp3`
- Selected: `05 Pervitin (Empire Culling & The Hemlock Stone Version) 1.mp3`
- Remove: `05 Pervitin (Empire Culling & The Hemlock Stone Version).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Pervitin (Empire Culling & The Hemlock Stone Version) 1.mp3` | 2021-03-21 01:27:27 | 320 kb/s (CBR 320) | 100.0% / 23 | 12 |
| `05 Pervitin (Empire Culling & The Hemlock Stone Version).mp3` | 2021-03-14 00:55:53 | 320 kb/s (CBR 320) | 100.0% / 23 | 10 |

### 310. `Panda Bear & Sonic Boom/Reset`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Edge of the Edge.mp3`
- Selected: `04 Edge of the Edge 1.mp3`
- Remove: `04 Edge of the Edge.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Edge of the Edge 1.mp3` | 2026-07-14 14:23:52 | 320 kb/s (CBR 320) | 84.0% / 8 | 8 |
| `04 Edge of the Edge.mp3` | 2022-08-28 20:50:02 | 320 kb/s (CBR 320) | 84.0% / 8 | 7 |

### 311. `Panda Bear & Sonic Boom/Reset`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Everyday.mp3`
- Selected: `03 Everyday 1.mp3`
- Remove: `03 Everyday.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Everyday 1.mp3` | 2026-07-14 14:23:52 | 320 kb/s (CBR 320) | 84.0% / 8 | 8 |
| `03 Everyday.mp3` | 2022-08-28 20:50:02 | 320 kb/s (CBR 320) | 84.0% / 8 | 7 |

### 312. `Panda Bear & Sonic Boom/Reset`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Go On.mp3`
- Selected: `02 Go On 1.mp3`
- Remove: `02 Go On.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Go On 1.mp3` | 2026-07-14 14:23:52 | 320 kb/s (CBR 320) | 84.0% / 8 | 8 |
| `02 Go On.mp3` | 2022-08-28 20:57:22 | 320 kb/s (CBR 320) | 84.0% / 8 | 0 |

### 313. `Panda Bear & Sonic Boom/Reset`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Whirlpool.mp3`
- Selected: `06 Whirlpool 1.mp3`
- Remove: `06 Whirlpool.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Whirlpool 1.mp3` | 2026-07-14 14:23:52 | 320 kb/s (CBR 320) | 84.0% / 8 | 8 |
| `06 Whirlpool.mp3` | 2022-08-28 20:50:02 | 320 kb/s (CBR 320) | 84.0% / 8 | 7 |

### 314. `Panda Bear & Sonic Boom/Reset`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 Danger.mp3`
- Selected: `07 Danger 1.mp3`
- Remove: `07 Danger.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Danger 1.mp3` | 2026-07-14 14:23:52 | 320 kb/s (CBR 320) | 84.0% / 8 | 8 |
| `07 Danger.mp3` | 2022-08-28 20:50:02 | 320 kb/s (CBR 320) | 84.0% / 8 | 7 |

### 315. `Panda Bear & Sonic Boom/Reset`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 In My Body.mp3`
- Selected: `05 In My Body 1.mp3`
- Remove: `05 In My Body.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 In My Body 1.mp3` | 2026-07-14 14:23:52 | 320 kb/s (CBR 320) | 84.0% / 8 | 8 |
| `05 In My Body.mp3` | 2022-08-28 20:50:02 | 320 kb/s (CBR 320) | 84.0% / 8 | 7 |

### 316. `Patty Griffin/Impossible Dream`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 When It Don't Come Easy.mp3`
- Selected: `08 When It Don't Come Easy 1.mp3`
- Remove: `08 When It Don't Come Easy.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 When It Don't Come Easy 1.mp3` | 2022-01-23 22:56:20 | 320 kb/s (CBR 320) | 100.0% / 20 | 10 |
| `08 When It Don't Come Easy.mp3` | 2018-04-29 09:56:25 | 202 kb/s (VBR) | 100.0% / 20 | 9 |

### 317. `Phantogram/Voices`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Fall in Love.mp3`
- Selected: `03 Fall in Love 1.mp3`
- Remove: `03 Fall in Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Fall in Love 1.mp3` | 2026-07-13 22:42:58 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `03 Fall in Love.mp3` | 2022-12-05 22:40:02 | 320 kb/s (CBR 320) | 91.7% / 10 | 0 |

### 318. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Côme.mp3`
- Selected: `01 Côme 1.mp3`
- Remove: `01 Côme.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Côme 1.mp3` | 2026-07-14 14:20:45 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `01 Côme.mp3` | 2021-09-12 20:53:38 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 319. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Melody.mp3`
- Selected: `08 Melody 1.mp3`
- Remove: `08 Melody.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Melody 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `08 Melody.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 320. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `14 Peter Pan.mp3`
- Selected: `14 Peter Pan 1.mp3`
- Remove: `14 Peter Pan.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `14 Peter Pan 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 97.7% / 14 | 14 |
| `14 Peter Pan.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 97.7% / 13 | 12 |

### 321. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Jiminy.mp3`
- Selected: `11 Jiminy 1.mp3`
- Remove: `11 Jiminy.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Jiminy 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `11 Jiminy.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 322. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Feel Good.mp3`
- Selected: `07 Feel Good 1.mp3`
- Remove: `07 Feel Good.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Feel Good 1.mp3` | 2026-07-14 14:20:45 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `07 Feel Good.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 323. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Oasis.mp3`
- Selected: `09 Oasis 1.mp3`
- Remove: `09 Oasis.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Oasis 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `09 Oasis.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 324. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Magic.mp3`
- Selected: `03 Magic 1.mp3`
- Remove: `03 Magic.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Magic 1.mp3` | 2026-07-14 14:20:45 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `03 Magic.mp3` | 2021-09-12 20:53:38 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 325. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Requiem.mp3`
- Selected: `06 Requiem 1.mp3`
- Remove: `06 Requiem.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Requiem 1.mp3` | 2026-07-14 14:20:45 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `06 Requiem.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 326. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Bilboquet (Sirba).mp3`
- Selected: `12 Bilboquet (Sirba) 1.mp3`
- Remove: `12 Bilboquet (Sirba).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Bilboquet (Sirba) 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `12 Bilboquet (Sirba).mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 327. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Artemis.mp3`
- Selected: `10 Artemis 1.mp3`
- Remove: `10 Artemis.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Artemis 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `10 Artemis.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 328. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Tunnel.mp3`
- Selected: `05 Tunnel 1.mp3`
- Remove: `05 Tunnel.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Tunnel 1.mp3` | 2026-07-14 14:20:45 | 320 kb/s (CBR 320) | 97.7% / 14 | 14 |
| `05 Tunnel.mp3` | 2021-09-12 20:53:39 | 320 kb/s (CBR 320) | 97.7% / 13 | 12 |

### 329. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `13 Les Jolies Choses.mp3`
- Selected: `13 Les Jolies Choses 1.mp3`
- Remove: `13 Les Jolies Choses.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Les Jolies Choses 1.mp3` | 2026-07-14 14:20:46 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `13 Les Jolies Choses.mp3` | 2021-10-07 16:16:20 | 320 kb/s (CBR 320) | 99.8% / 13 | 0 |

### 330. `Polo & Pan/Cyclorama`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Ani Kuni.mp3`
- Selected: `02 Ani Kuni 1.mp3`
- Remove: `02 Ani Kuni.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Ani Kuni 1.mp3` | 2026-07-14 14:20:45 | 320 kb/s (CBR 320) | 100.0% / 14 | 14 |
| `02 Ani Kuni.mp3` | 2021-09-12 20:53:38 | 320 kb/s (CBR 320) | 99.8% / 13 | 12 |

### 331. `Prince/Rave Un2 the Joy Fantastic`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Undisputed.mp3`
- Selected: `02 Undisputed 1.mp3`
- Remove: `02 Undisputed.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Undisputed 1.mp3` | 2018-04-29 11:11:19 | 160 kb/s (CBR 160) | 100.0% / 18 | 17 |
| `02 Undisputed.mp3` | 2021-04-18 19:51:35 | 320 kb/s (CBR 320) | 97.9% / 18 | 0 |

### 332. `Ralphi Rosario feat. Xavier Gold/You Used to Hold Me`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 You Used to Hold Me (Riviera mix).mp3`
- Selected: `05 You Used to Hold Me (Riviera mix) 1.mp3`
- Remove: `05 You Used to Hold Me (Riviera mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 You Used to Hold Me (Riviera mix).mp3` | 2025-03-10 22:08:16 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `05 You Used to Hold Me (Riviera mix) 1.mp3` | 2026-07-19 14:51:07 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 333. `Ralphi Rosario feat. Xavier Gold/You Used to Hold Me`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 You Used to Hold Me (Kenny's mix).mp3`
- Selected: `01 You Used to Hold Me (Kenny's mix) 1.mp3`
- Remove: `01 You Used to Hold Me (Kenny's mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 You Used to Hold Me (Kenny's mix).mp3` | 2025-03-10 22:08:16 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `01 You Used to Hold Me (Kenny's mix) 1.mp3` | 2026-07-19 14:51:07 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 334. `Ralphi Rosario feat. Xavier Gold/You Used to Hold Me`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 You Used to Hold Me (You Used to Beat Me) (bonus Beats).mp3`
- Selected: `03 You Used to Hold Me (You Used to Beat Me) (bonus Beats) 1.mp3`
- Remove: `03 You Used to Hold Me (You Used to Beat Me) (bonus Beats).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 You Used to Hold Me (You Used to Beat Me) (bonus Beats).mp3` | 2025-03-10 22:08:16 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `03 You Used to Hold Me (You Used to Beat Me) (bonus Beats) 1.mp3` | 2026-07-19 14:51:07 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 335. `Ralphi Rosario feat. Xavier Gold/You Used to Hold Me`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 You Used to Hold Me (Mucho Michie House mix).mp3`
- Selected: `04 You Used to Hold Me (Mucho Michie House mix) 1.mp3`
- Remove: `04 You Used to Hold Me (Mucho Michie House mix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 You Used to Hold Me (Mucho Michie House mix).mp3` | 2025-03-10 22:08:16 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `04 You Used to Hold Me (Mucho Michie House mix) 1.mp3` | 2026-07-19 14:51:07 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 336. `Ralphi Rosario feat. Xavier Gold/You Used to Hold Me`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 You Used to Hold Me (a cappella).mp3`
- Selected: `02 You Used to Hold Me (a cappella) 1.mp3`
- Remove: `02 You Used to Hold Me (a cappella).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 You Used to Hold Me (a cappella).mp3` | 2025-03-10 22:08:16 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |
| `02 You Used to Hold Me (a cappella) 1.mp3` | 2026-07-19 14:51:07 | 320 kb/s (CBR 320) | 100.0% / 8 | 4 |

### 337. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Cocaine.mp3`
- Selected: `04 Cocaine 1.mp3`
- Remove: `04 Cocaine.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Cocaine 1.mp3` | 2022-08-07 16:44:10 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `04 Cocaine.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 338. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Mudbone (intro).mp3`
- Selected: `06 Mudbone (intro) 1.mp3`
- Remove: `06 Mudbone (intro).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Mudbone (intro) 1.mp3` | 2022-08-07 16:44:10 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `06 Mudbone (intro).mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 339. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 When Your Woman Leaves You.mp3`
- Selected: `08 When Your Woman Leaves You 1.mp3`
- Remove: `08 When Your Woman Leaves You.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 When Your Woman Leaves You 1.mp3` | 2022-08-07 16:44:11 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `08 When Your Woman Leaves You.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 340. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Women Are Beautiful.mp3`
- Selected: `10 Women Are Beautiful 1.mp3`
- Remove: `10 Women Are Beautiful.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Women Are Beautiful 1.mp3` | 2022-08-07 16:44:11 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `10 Women Are Beautiful.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 341. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Eulogy.mp3`
- Selected: `01 Eulogy 1.mp3`
- Remove: `01 Eulogy.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Eulogy 1.mp3` | 2022-08-07 16:44:10 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `01 Eulogy.mp3` | 2018-04-29 10:00:41 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 342. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 The Goodnight Kiss.mp3`
- Selected: `09 The Goodnight Kiss 1.mp3`
- Remove: `09 The Goodnight Kiss.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 The Goodnight Kiss 1.mp3` | 2022-08-07 16:44:11 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `09 The Goodnight Kiss.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 343. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Shortage of White People.mp3`
- Selected: `02 Shortage of White People 1.mp3`
- Remove: `02 Shortage of White People.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Shortage of White People 1.mp3` | 2022-08-07 16:44:10 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `02 Shortage of White People.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 344. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Mudbone - Little Feets.mp3`
- Selected: `07 Mudbone - Little Feets 1.mp3`
- Remove: `07 Mudbone - Little Feets.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Mudbone - Little Feets 1.mp3` | 2022-08-07 16:44:11 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `07 Mudbone - Little Feets.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 345. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 New Niggers.mp3`
- Selected: `03 New Niggers 1.mp3`
- Remove: `03 New Niggers.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 New Niggers 1.mp3` | 2022-08-07 16:44:10 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `03 New Niggers.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 346. `Richard Pryor/_.. Is It Something I Said_`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Just Us.mp3`
- Selected: `05 Just Us 1.mp3`
- Remove: `05 Just Us.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Just Us 1.mp3` | 2022-08-07 16:44:10 | 256 kb/s (CBR 256) | 100.0% / 31 | 21 |
| `05 Just Us.mp3` | 2018-04-29 10:00:46 | 192 kb/s (CBR 192) | 99.0% / 31 | 10 |

### 347. `Rihanna/Loud`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `05 Only Girl (in the World).mp3`
- Selected: `05 Only Girl (in the World).mp3`
- Remove: `05 Only Girl (in the World) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Only Girl (in the World).mp3` | 2021-04-18 19:47:27 | 320 kb/s (CBR 320) | 85.6% / 10 | 0 |
| `05 Only Girl (in the World) 1.mp3` | 2021-04-18 19:47:27 | 320 kb/s (CBR 320) | 85.6% / 10 | 0 |

### 348. `Robert Glasper Experiment/Black Radio`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Black Radio.mp3`
- Selected: `10 Black Radio 1.mp3`
- Remove: `10 Black Radio.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Black Radio 1.mp3` | 2020-01-04 20:59:44 | 320 kb/s (CBR 320) | 95.1% / 11 | 11 |
| `10 Black Radio.mp3` | 2021-04-18 19:50:15 | 320 kb/s (CBR 320) | 65.4% / 1 | 1 |

### 349. `Sad Night Dynamite/Sad Night Dynamite`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Krunk.mp3`
- Selected: `05 Krunk 1.mp3`
- Remove: `05 Krunk.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Krunk 1.mp3` | 2021-09-12 20:43:30 | 320 kb/s (CBR 320) | 93.1% / 9 | 9 |
| `05 Krunk.mp3` | 2021-06-15 21:44:14 | 320 kb/s (CBR 320) | 93.1% / 9 | 1 |

### 350. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 The Memphis Beat.mp3`
- Selected: `02 The Memphis Beat 1.mp3`
- Remove: `02 The Memphis Beat.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 The Memphis Beat 1.mp3` | 2024-03-15 21:40:18 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `02 The Memphis Beat.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 351. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Go-Go Girls.mp3`
- Selected: `04 Go-Go Girls 1.mp3`
- Remove: `04 Go-Go Girls.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Go-Go Girls 1.mp3` | 2024-03-15 21:40:18 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `04 Go-Go Girls.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 352. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `01 Wooly Bully.mp3`
- Selected: `01 Wooly Bully.mp3`
- Remove: `01 Wooly Bully 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Wooly Bully.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |
| `01 Wooly Bully 1.mp3` | 2024-03-17 19:13:23 | 320 kb/s (CBR 320) | 100.0% / 34 | 1 |

### 353. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Long Tall Sally.mp3`
- Selected: `12 Long Tall Sally 1.mp3`
- Remove: `12 Long Tall Sally.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Long Tall Sally 1.mp3` | 2024-03-15 21:40:19 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `12 Long Tall Sally.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 354. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Haunted House.mp3`
- Selected: `06 Haunted House 1.mp3`
- Remove: `06 Haunted House.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Haunted House 1.mp3` | 2024-03-15 21:40:19 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `06 Haunted House.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 355. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 I Found Love.mp3`
- Selected: `03 I Found Love 1.mp3`
- Remove: `03 I Found Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 I Found Love 1.mp3` | 2024-03-15 21:40:18 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `03 I Found Love.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 356. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Gangster of Love.mp3`
- Selected: `10 Gangster of Love 1.mp3`
- Remove: `10 Gangster of Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Gangster of Love 1.mp3` | 2024-03-15 21:40:19 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `10 Gangster of Love.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 357. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Shotgun.mp3`
- Selected: `08 Shotgun 1.mp3`
- Remove: `08 Shotgun.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Shotgun 1.mp3` | 2024-03-15 21:40:19 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `08 Shotgun.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 358. `Sam the Sham & the Pharaohs/Wooly Bully`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Mary Lee.mp3`
- Selected: `11 Mary Lee 1.mp3`
- Remove: `11 Mary Lee.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Mary Lee 1.mp3` | 2024-03-15 21:40:19 | 320 kb/s (CBR 320) | 100.0% / 34 | 21 |
| `11 Mary Lee.mp3` | 2023-03-26 02:41:04 | 320 kb/s (CBR 320) | 100.0% / 34 | 11 |

### 359. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Get Up Stand Up And Rock.mp3`
- Selected: `05 Get Up Stand Up And Rock 1.mp3`
- Remove: `05 Get Up Stand Up And Rock.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Get Up Stand Up And Rock 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `05 Get Up Stand Up And Rock.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 360. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Housecall (Your Body Can't Lie to Me).mp3`
- Selected: `01 Housecall (Your Body Can't Lie to Me) 1.mp3`
- Remove: `01 Housecall (Your Body Can't Lie to Me).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Housecall (Your Body Can't Lie to Me) 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `01 Housecall (Your Body Can't Lie to Me).mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 361. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Telephone Love Deh Pon Mi Mind.mp3`
- Selected: `04 Telephone Love Deh Pon Mi Mind 1.mp3`
- Remove: `04 Telephone Love Deh Pon Mi Mind.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Telephone Love Deh Pon Mi Mind 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `04 Telephone Love Deh Pon Mi Mind.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 362. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Ting-A-Ling.mp3`
- Selected: `03 Ting-A-Ling 1.mp3`
- Remove: `03 Ting-A-Ling.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Ting-A-Ling 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `03 Ting-A-Ling.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 363. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Mr. Tek It Back.mp3`
- Selected: `06 Mr. Tek It Back 1.mp3`
- Remove: `06 Mr. Tek It Back.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Mr. Tek It Back 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `06 Mr. Tek It Back.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 364. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Pay Down Pon It.mp3`
- Selected: `10 Pay Down Pon It 1.mp3`
- Remove: `10 Pay Down Pon It.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Pay Down Pon It 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `10 Pay Down Pon It.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 365. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Ting-A-Ling (The Original).mp3`
- Selected: `12 Ting-A-Ling (The Original) 1.mp3`
- Remove: `12 Ting-A-Ling (The Original).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Ting-A-Ling (The Original) 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `12 Ting-A-Ling (The Original).mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 366. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 The Jam.mp3`
- Selected: `07 The Jam 1.mp3`
- Remove: `07 The Jam.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 The Jam 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `07 The Jam.mp3` | 2021-11-21 21:26:55 | 192 kb/s (CBR 192) | 88.3% / 22 | 0 |

### 367. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Girls Whine.mp3`
- Selected: `02 Girls Whine 1.mp3`
- Remove: `02 Girls Whine.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Girls Whine 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `02 Girls Whine.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 368. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Roots & Culture.mp3`
- Selected: `08 Roots & Culture 1.mp3`
- Remove: `08 Roots & Culture.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Roots & Culture 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `08 Roots & Culture.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 369. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Twice My Age.mp3`
- Selected: `09 Twice My Age 1.mp3`
- Remove: `09 Twice My Age.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Twice My Age 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `09 Twice My Age.mp3` | 2022-09-25 19:26:27 | 192 kb/s (CBR 192) | 88.3% / 22 | 0 |

### 370. `Shabba Ranks/Rough & Ready, Volume II`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Respect.mp3`
- Selected: `11 Respect 1.mp3`
- Remove: `11 Respect.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Respect 1.mp3` | 2026-07-19 13:45:28 | 320 kb/s (CBR 320) | 99.4% / 22 | 11 |
| `11 Respect.mp3` | 2018-04-29 11:21:25 | 192 kb/s (CBR 192) | 98.3% / 22 | 9 |

### 371. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `14 Spend Some Cheese.mp3`
- Selected: `14 Spend Some Cheese 1.mp3`
- Remove: `14 Spend Some Cheese.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `14 Spend Some Cheese.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `14 Spend Some Cheese 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 372. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 The Hit.mp3`
- Selected: `12 The Hit 1.mp3`
- Remove: `12 The Hit.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 The Hit.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `12 The Hit 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 373. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `15 Get Out.mp3`
- Selected: `15 Get Out 1.mp3`
- Remove: `15 Get Out.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `15 Get Out.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 97.9% / 30 | 15 |
| `15 Get Out 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 97.9% / 30 | 15 |

### 374. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Bang.mp3`
- Selected: `03 Bang 1.mp3`
- Remove: `03 Bang.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Bang.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `03 Bang 1.mp3` | 2026-07-13 00:09:09 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 375. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Let Me See Your Hands.mp3`
- Selected: `05 Let Me See Your Hands 1.mp3`
- Remove: `05 Let Me See Your Hands.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Let Me See Your Hands.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `05 Let Me See Your Hands 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 376. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Niggas Gonna Die.mp3`
- Selected: `09 Niggas Gonna Die 1.mp3`
- Remove: `09 Niggas Gonna Die.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Niggas Gonna Die.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `09 Niggas Gonna Die 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 377. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `16 Commission.mp3`
- Selected: `16 Commission 1.mp3`
- Remove: `16 Commission.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `16 Commission.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `16 Commission 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 378. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Bad Boyz.mp3`
- Selected: `04 Bad Boyz 1.mp3`
- Remove: `04 Bad Boyz.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Bad Boyz.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 98.1% / 30 | 15 |
| `04 Bad Boyz 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 98.1% / 30 | 15 |

### 379. `Shyne/Shyne`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 The Life.mp3`
- Selected: `07 The Life 1.mp3`
- Remove: `07 The Life.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 The Life.mp3` | 2018-04-29 11:28:03 | 192 kb/s (CBR 192) | 100.0% / 30 | 15 |
| `07 The Life 1.mp3` | 2026-07-13 00:09:10 | 320 kb/s (CBR 320) | 100.0% / 30 | 15 |

### 380. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Cheap Thrills.mp3`
- Selected: `06 Cheap Thrills 1.mp3`
- Remove: `06 Cheap Thrills.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Cheap Thrills 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `06 Cheap Thrills.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 381. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Sweet Design.mp3`
- Selected: `10 Sweet Design 1.mp3`
- Remove: `10 Sweet Design.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Sweet Design 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `10 Sweet Design.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 382. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Bird Set Free.mp3`
- Selected: `01 Bird Set Free 1.mp3`
- Remove: `01 Bird Set Free.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Bird Set Free 1.mp3` | 2026-07-13 22:45:42 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `01 Bird Set Free.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 383. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Reaper.mp3`
- Selected: `07 Reaper 1.mp3`
- Remove: `07 Reaper.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Reaper 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `07 Reaper.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 384. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Unstoppable.mp3`
- Selected: `05 Unstoppable 1.mp3`
- Remove: `05 Unstoppable.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Unstoppable 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `05 Unstoppable.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 385. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Footprints.mp3`
- Selected: `09 Footprints 1.mp3`
- Remove: `09 Footprints.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Footprints 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `09 Footprints.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 386. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 One Million Bullets.mp3`
- Selected: `03 One Million Bullets 1.mp3`
- Remove: `03 One Million Bullets.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 One Million Bullets 1.mp3` | 2026-07-13 22:45:42 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `03 One Million Bullets.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 387. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 House on Fire.mp3`
- Selected: `08 House on Fire 1.mp3`
- Remove: `08 House on Fire.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 House on Fire 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `08 House on Fire.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 388. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Move Your Body.mp3`
- Selected: `04 Move Your Body 1.mp3`
- Remove: `04 Move Your Body.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Move Your Body 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `04 Move Your Body.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 389. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 Space Between.mp3`
- Selected: `12 Space Between 1.mp3`
- Remove: `12 Space Between.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Space Between 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `12 Space Between.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 390. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Alive.mp3`
- Selected: `02 Alive 1.mp3`
- Remove: `02 Alive.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Alive 1.mp3` | 2026-07-13 22:45:42 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `02 Alive.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 391. `Sia/This Is Acting`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `11 Broken Glass.mp3`
- Selected: `11 Broken Glass 1.mp3`
- Remove: `11 Broken Glass.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Broken Glass 1.mp3` | 2026-07-13 22:45:43 | 320 kb/s (CBR 320) | 100.0% / 18 | 18 |
| `11 Broken Glass.mp3` | 2018-04-29 13:00:54 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 392. `Smokey Robinson/A Quiet Storm`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Quiet Storm.mp3`
- Selected: `01 Quiet Storm 1.mp3`
- Remove: `01 Quiet Storm.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Quiet Storm 1.mp3` | 2026-07-11 20:22:06 | 320 kb/s (CBR 320) | 100.0% / 6 | 6 |
| `01 Quiet Storm.mp3` | 2024-03-14 22:20:33 | 261 kb/s (VBR) | 88.6% / 6 | 0 |

### 393. `Snakehips/never worry`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `02 Deal With It.mp3`
- Selected: `02 Deal With It.mp3`
- Remove: `02 Deal With It 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Deal With It 1.mp3` | 2023-07-16 22:30:48 | 263 kb/s (VBR) | 97.9% / 13 | 1 |
| `02 Deal With It.mp3` | 2023-05-28 20:51:14 | 320 kb/s (CBR 320) | 97.9% / 13 | 0 |

### 394. `Sofi Tukker/WET TENNIS`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Kakee.mp3`
- Selected: `01 Kakee 1.mp3`
- Remove: `01 Kakee.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Kakee 1.mp3` | 2022-05-14 16:52:11 | 320 kb/s (CBR 320) | 99.1% / 12 | 11 |
| `01 Kakee.mp3` | 2022-04-24 11:06:55 | 320 kb/s (CBR 320) | 94.5% / 12 | 0 |

### 395. `Spoon/Lucifer On The Sofa`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Wild.mp3`
- Selected: `04 Wild 1.mp3`
- Remove: `04 Wild.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Wild 1.mp3` | 2023-03-21 21:33:24 | 320 kb/s (CBR 320) | 98.3% / 12 | 11 |
| `04 Wild.mp3` | 2022-02-26 21:14:37 | 320 kb/s (CBR 320) | 81.2% / 12 | 0 |

### 396. `Stardust/Music Sounds Better With You`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Music Sounds Better With You (radio edit).mp3`
- Selected: `01 Music Sounds Better With You (radio edit) 1.mp3`
- Remove: `01 Music Sounds Better With You (radio edit).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Music Sounds Better With You (radio edit) 1.mp3` | 2025-03-16 08:17:55 | 320 kb/s (CBR 320) | 82.3% / 4 | 3 |
| `01 Music Sounds Better With You (radio edit).mp3` | 2018-04-29 10:40:07 | 203 kb/s (VBR) | 66.3% / 2 | 1 |

### 397. `Stardust/Music Sounds Better With You`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Music Sounds Better With You (12_ club mix).mp3`
- Selected: `02 Music Sounds Better With You (12_ club mix) 1.mp3`
- Remove: `02 Music Sounds Better With You (12_ club mix).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Music Sounds Better With You (12_ club mix) 1.mp3` | 2025-03-16 08:17:55 | 320 kb/s (CBR 320) | 82.3% / 4 | 3 |
| `02 Music Sounds Better With You (12_ club mix).mp3` | 2021-04-18 19:47:18 | 203 kb/s (VBR) | 65.6% / 2 | 0 |

### 398. `Steve Miller Band/Welcome to the Vault`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `2-08 Echoplex Blues (Instrumental).mp3`
- Selected: `2-08 Echoplex Blues (instrumental) 1.mp3`
- Remove: `2-08 Echoplex Blues (Instrumental).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `2-08 Echoplex Blues (instrumental) 1.mp3` | 2026-07-19 13:43:13 | 320 kb/s (CBR 320) | 100.0% / 51 | 51 |
| `2-08 Echoplex Blues (Instrumental).mp3` | 2022-12-05 22:40:53 | 320 kb/s (CBR 320) | 73.0% / 18 | 0 |

### 399. `Steve Winwood/Chronicles`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Valerie.mp3`
- Selected: `06 Valerie 1.mp3`
- Remove: `06 Valerie.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Valerie 1.mp3` | 2026-07-11 21:10:31 | 320 kb/s (CBR 320) | 100.0% / 9 | 9 |
| `06 Valerie.mp3` | 2022-09-25 19:29:23 | 320 kb/s (CBR 320) | 55.2% / 0 | 0 |

### 400. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `10 Mr. Tambourine Man.mp3`
- Selected: `10 Mr. Tambourine Man 1.mp3`
- Remove: `10 Mr. Tambourine Man.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Mr. Tambourine Man.mp3` | 2025-01-27 17:26:27 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `10 Mr. Tambourine Man 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 401. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Bang Bang.mp3`
- Selected: `02 Bang Bang 1.mp3`
- Remove: `02 Bang Bang.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Bang Bang.mp3` | 2025-01-27 17:26:24 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `02 Bang Bang 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 402. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 A Place in the Sun.mp3`
- Selected: `01 A Place in the Sun 1.mp3`
- Remove: `01 A Place in the Sun.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 A Place in the Sun.mp3` | 2025-01-27 17:26:24 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `01 A Place in the Sun 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 403. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Down to Earth.mp3`
- Selected: `03 Down to Earth 1.mp3`
- Remove: `03 Down to Earth.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Down to Earth.mp3` | 2025-01-27 17:26:25 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `03 Down to Earth 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 404. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 The Lonesome Road.mp3`
- Selected: `08 The Lonesome Road 1.mp3`
- Remove: `08 The Lonesome Road.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 The Lonesome Road.mp3` | 2025-01-27 17:26:27 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `08 The Lonesome Road 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 405. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 Sixteen Tons.mp3`
- Selected: `11 Sixteen Tons 1.mp3`
- Remove: `11 Sixteen Tons.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Sixteen Tons.mp3` | 2025-01-27 17:26:28 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `11 Sixteen Tons 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 406. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Sylvia.mp3`
- Selected: `06 Sylvia 1.mp3`
- Remove: `06 Sylvia.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Sylvia.mp3` | 2025-01-27 17:26:26 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `06 Sylvia 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 407. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 Angel Baby (Don't You Ever Leave Me).mp3`
- Selected: `09 Angel Baby (Don't You Ever Leave Me) 1.mp3`
- Remove: `09 Angel Baby (Don't You Ever Leave Me).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Angel Baby (Don't You Ever Leave Me).mp3` | 2025-01-27 17:26:27 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `09 Angel Baby (Don't You Ever Leave Me) 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 408. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 My World Is Empty Without You.mp3`
- Selected: `07 My World Is Empty Without You 1.mp3`
- Remove: `07 My World Is Empty Without You.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 My World Is Empty Without You.mp3` | 2025-01-27 17:26:26 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `07 My World Is Empty Without You 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 409. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Thank You Love.mp3`
- Selected: `04 Thank You Love 1.mp3`
- Remove: `04 Thank You Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Thank You Love.mp3` | 2025-01-27 17:26:25 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `04 Thank You Love 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 410. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Be Cool, Be Calm (And Keep Yourself Together).mp3`
- Selected: `05 Be Cool, Be Calm (And Keep Yourself Together) 1.mp3`
- Remove: `05 Be Cool, Be Calm (And Keep Yourself Together).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Be Cool, Be Calm (And Keep Yourself Together).mp3` | 2025-01-27 17:26:26 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `05 Be Cool, Be Calm (And Keep Yourself Together) 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 411. `Stevie Wonder/Down to Earth`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `12 Hey Love.mp3`
- Selected: `12 Hey Love 1.mp3`
- Remove: `12 Hey Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Hey Love.mp3` | 2025-01-27 17:26:28 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |
| `12 Hey Love 1.mp3` | 2026-07-11 19:47:40 | 320 kb/s (CBR 320) | 97.9% / 22 | 11 |

### 412. `Stringtronics/Mindbender`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `10 Tropicola.mp3`
- Selected: `10 Tropicola 1.mp3`
- Remove: `10 Tropicola.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Tropicola 1.mp3` | 2026-07-11 20:11:54 | 320 kb/s (CBR 320) | 100.0% / 11 | 11 |
| `10 Tropicola.mp3` | 2021-04-18 19:48:28 | 320 kb/s (CBR 320) | 72.7% / 11 | 0 |

### 413. `Taylor Swift/1989 (Taylor's version)`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `17 _Slut!_ (Taylor's version) (from The Vault).mp3`
- Selected: `17 _Slut!_ (Taylor's version) (from The Vault).mp3`
- Remove: `17 _Slut!_ (Taylor's version) (from The Vault) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `17 _Slut!_ (Taylor's version) (from The Vault).mp3` | 2024-02-27 18:32:26 | 320 kb/s (CBR 320) | 100.0% / 25 | 5 |
| `17 _Slut!_ (Taylor's version) (from The Vault) 1.mp3` | 2024-02-27 18:32:26 | 320 kb/s (CBR 320) | 100.0% / 25 | 5 |

### 414. `Taylor Swift/1989 (Taylor's version)`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `19 Now That We Don_t Talk (Taylor's version) (from The Vault).mp3`
- Selected: `19 Now That We Don_t Talk (Taylor's version) (from The Vault).mp3`
- Remove: `19 Now That We Don_t Talk (Taylor's version) (from The Vault) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `19 Now That We Don_t Talk (Taylor's version) (from The Vault).mp3` | 2024-02-27 18:32:40 | 320 kb/s (CBR 320) | 100.0% / 25 | 5 |
| `19 Now That We Don_t Talk (Taylor's version) (from The Vault) 1.mp3` | 2024-02-27 18:32:40 | 320 kb/s (CBR 320) | 100.0% / 25 | 5 |

### 415. `Taylor Swift/1989 (Taylor's version)`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `18 Say Don_t Go (Taylor's version) (from The Vault).mp3`
- Selected: `18 Say Don_t Go (Taylor's version) (from The Vault).mp3`
- Remove: `18 Say Don_t Go (Taylor's version) (from The Vault) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `18 Say Don_t Go (Taylor's version) (from The Vault).mp3` | 2024-02-27 18:32:34 | 320 kb/s (CBR 320) | 100.0% / 25 | 7 |
| `18 Say Don_t Go (Taylor's version) (from The Vault) 1.mp3` | 2024-02-27 18:32:34 | 320 kb/s (CBR 320) | 100.0% / 25 | 7 |

### 416. `Teena Marie/Robbery`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Dear Lover.mp3`
- Selected: `07 Dear Lover 1.mp3`
- Remove: `07 Dear Lover.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Dear Lover 1.mp3` | 2025-03-18 09:36:37 | 320 kb/s (CBR 320) | 95.6% / 8 | 8 |
| `07 Dear Lover.mp3` | 2022-12-05 22:22:07 | 265 kb/s (VBR) | 64.8% / 1 | 0 |

### 417. `Teena Marie/Robbery`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Cassanova Brown.mp3`
- Selected: `09 Cassanova Brown 1.mp3`
- Remove: `09 Cassanova Brown.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Cassanova Brown 1.mp3` | 2025-03-18 09:36:37 | 320 kb/s (CBR 320) | 95.6% / 8 | 8 |
| `09 Cassanova Brown.mp3` | 2021-04-18 19:50:59 | 320 kb/s (CBR 320) | 64.8% / 1 | 0 |

### 418. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 On a Quiet Night.mp3`
- Selected: `02 On a Quiet Night 1.mp3`
- Remove: `02 On a Quiet Night.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 On a Quiet Night 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `02 On a Quiet Night.mp3` | 2020-07-21 00:32:31 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 419. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Reputation.mp3`
- Selected: `06 Reputation 1.mp3`
- Remove: `06 Reputation.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Reputation 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `06 Reputation.mp3` | 2020-07-21 00:32:32 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 420. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 Happiness Is.mp3`
- Selected: `08 Happiness Is 1.mp3`
- Remove: `08 Happiness Is.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Happiness Is 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `08 Happiness Is.mp3` | 2020-07-21 00:32:32 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 421. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Windy.mp3`
- Selected: `05 Windy 1.mp3`
- Remove: `05 Windy.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Windy 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `05 Windy.mp3` | 2020-07-21 00:32:32 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 422. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 Sometime.mp3`
- Selected: `09 Sometime 1.mp3`
- Remove: `09 Sometime.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Sometime 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `09 Sometime.mp3` | 2020-07-21 00:32:32 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 423. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 We Love Us.mp3`
- Selected: `03 We Love Us 1.mp3`
- Remove: `03 We Love Us.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 We Love Us 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `03 We Love Us.mp3` | 2020-07-21 00:32:31 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 424. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 Requiem for the Masses.mp3`
- Selected: `11 Requiem for the Masses 1.mp3`
- Remove: `11 Requiem for the Masses.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Requiem for the Masses 1.mp3` | 2026-07-11 19:14:35 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `11 Requiem for the Masses.mp3` | 2020-07-21 00:32:32 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 425. `The Association/Insight Out`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 When Love Comes to Me.mp3`
- Selected: `04 When Love Comes to Me 1.mp3`
- Remove: `04 When Love Comes to Me.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 When Love Comes to Me 1.mp3` | 2026-07-11 19:14:34 | 320 kb/s (CBR 320) | 91.7% / 10 | 10 |
| `04 When Love Comes to Me.mp3` | 2020-07-21 00:32:31 | 320 kb/s (CBR 320) | 91.7% / 10 | 8 |

### 426. `The Chemical Brothers/For That Beautiful Feeling`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `07 The Weight.mp3`
- Selected: `07 The Weight.mp3`
- Remove: `07 The Weight 1.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 The Weight.mp3` | 2023-10-16 20:25:06 | 320 kb/s (CBR 320) | 95.6% / 10 | 0 |
| `07 The Weight 1.mp3` | 2023-10-16 19:33:42 | 273 kb/s (VBR) | 61.6% / 1 | 1 |

### 427. `The Cover Girls/Show Me`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Show Me.mp3`
- Selected: `01 Show Me 1.mp3`
- Remove: `01 Show Me.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Show Me 1.mp3` | 2026-07-11 21:05:42 | 320 kb/s (CBR 320) | 100.0% / 7 | 7 |
| `01 Show Me.mp3` | 2022-12-05 22:26:06 | 320 kb/s (CBR 320) | 47.7% / 0 | 0 |

### 428. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Can-U-Dance.mp3`
- Selected: `05 Can-U-Dance 1.mp3`
- Remove: `05 Can-U-Dance.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Can-U-Dance 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `05 Can-U-Dance.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 429. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Let No One Separate Us.mp3`
- Selected: `03 Let No One Separate Us 1.mp3`
- Remove: `03 Let No One Separate Us.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Let No One Separate Us 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `03 Let No One Separate Us.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 430. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Shoot 'em Up Movies.mp3`
- Selected: `02 Shoot 'em Up Movies 1.mp3`
- Remove: `02 Shoot 'em Up Movies.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Shoot 'em Up Movies 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `02 Shoot 'em Up Movies.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 431. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Eyes of a Stranger.mp3`
- Selected: `04 Eyes of a Stranger 1.mp3`
- Remove: `04 Eyes of a Stranger.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Eyes of a Stranger 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `04 Eyes of a Stranger.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 432. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 Eyes of a Stranger (reprise).mp3`
- Selected: `09 Eyes of a Stranger (reprise) 1.mp3`
- Remove: `09 Eyes of a Stranger (reprise).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Eyes of a Stranger (reprise) 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `09 Eyes of a Stranger (reprise).mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 433. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 She Wanted.mp3`
- Selected: `06 She Wanted 1.mp3`
- Remove: `06 She Wanted.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 She Wanted 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `06 She Wanted.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 434. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 So Many Thangz.mp3`
- Selected: `08 So Many Thangz 1.mp3`
- Remove: `08 So Many Thangz.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 So Many Thangz 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `08 So Many Thangz.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 435. `The Deele/Eyes of a Stranger`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 Hip Chic.mp3`
- Selected: `07 Hip Chic 1.mp3`
- Remove: `07 Hip Chic.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Hip Chic 1.mp3` | 2026-07-11 21:08:15 | 320 kb/s (CBR 320) | 87.9% / 8 | 8 |
| `07 Hip Chic.mp3` | 2020-07-21 00:17:58 | 320 kb/s (CBR 320) | 87.9% / 8 | 7 |

### 436. `The Family Daptone _ The 100 Knights Orchestra/Hey Brother (Do Unto Others) _ Soul Fugue`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Hey Brother (Do Unto Others).mp3`
- Selected: `01 Hey Brother (Do Unto Others) 1.mp3`
- Remove: `01 Hey Brother (Do Unto Others).mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Hey Brother (Do Unto Others) 1.mp3` | 2026-07-19 13:28:54 | 320 kb/s (CBR 320) | 97.7% / 1 | 1 |
| `01 Hey Brother (Do Unto Others).mp3` | 2021-04-18 19:46:21 | 252 kb/s (VBR) | 59.1% / 0 | 0 |

### 437. `The Jimi Hendrix Experience/Axis_ Bold as Love`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `01 EXP.mp3`
- Selected: `01 EXP.mp3`
- Remove: `01 EXP 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 EXP.mp3` | 2022-02-12 17:22:05 | 320 kb/s (CBR 320) | 100.0% / 12 | 10 |
| `01 EXP 1.mp3` | 2025-03-03 20:29:56 | 320 kb/s (CBR 320) | 69.3% / 3 | 3 |

### 438. `The Jimi Hendrix Experience/Axis_ Bold as Love`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `09 Castles Made of Sand.mp3`
- Selected: `09 Castles Made of Sand.mp3`
- Remove: `09 Castles Made of Sand 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Castles Made of Sand.mp3` | 2022-09-25 19:22:24 | 320 kb/s (CBR 320) | 100.0% / 12 | 1 |
| `09 Castles Made of Sand 1.mp3` | 2025-03-03 20:29:56 | 320 kb/s (CBR 320) | 69.3% / 3 | 3 |

### 439. `The Jimi Hendrix Experience/Axis_ Bold as Love`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `02 Up From the Skies.mp3`
- Selected: `02 Up From the Skies.mp3`
- Remove: `02 Up From the Skies 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Up From the Skies.mp3` | 2022-02-12 17:22:05 | 320 kb/s (CBR 320) | 100.0% / 12 | 10 |
| `02 Up From the Skies 1.mp3` | 2025-03-03 20:29:56 | 320 kb/s (CBR 320) | 69.3% / 3 | 3 |

### 440. `The Jimi Hendrix Experience/Axis_ Bold as Love`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `13 Bold as Love.mp3`
- Selected: `13 Bold as Love.mp3`
- Remove: `13 Bold as Love 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 Bold as Love.mp3` | 2022-02-12 17:22:05 | 320 kb/s (CBR 320) | 100.0% / 12 | 10 |
| `13 Bold as Love 1.mp3` | 2025-03-03 20:29:56 | 320 kb/s (CBR 320) | 69.3% / 3 | 3 |

### 441. `The Jimi Hendrix Experience/Electric Ladyland`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `15 All Along the Watchtower.mp3`
- Selected: `15 All Along the Watchtower.mp3`
- Remove: `15 All Along the Watchtower 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `15 All Along the Watchtower.mp3` | 2021-04-18 19:50:24 | 320 kb/s (CBR 320) | 100.0% / 15 | 1 |
| `15 All Along the Watchtower 1.mp3` | 2025-03-03 20:29:57 | 320 kb/s (CBR 320) | 63.9% / 4 | 4 |

### 442. `The Jimi Hendrix Experience/Electric Ladyland`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `07 Come On (Let the Good Times Roll).mp3`
- Selected: `07 Come On (Let the Good Times Roll).mp3`
- Remove: `07 Come On (Let the Good Times Roll) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Come On (Let the Good Times Roll).mp3` | 2020-04-07 11:26:27 | 320 kb/s (CBR 320) | 100.0% / 15 | 11 |
| `07 Come On (Let the Good Times Roll) 1.mp3` | 2025-03-03 20:29:57 | 320 kb/s (CBR 320) | 63.9% / 4 | 4 |

### 443. `The Jimi Hendrix Experience/Electric Ladyland`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `16 Voodoo Child (slight return).mp3`
- Selected: `16 Voodoo Child (slight return).mp3`
- Remove: `16 Voodoo Child (slight return) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `16 Voodoo Child (slight return).mp3` | 2021-04-18 19:50:24 | 320 kb/s (CBR 320) | 100.0% / 15 | 1 |
| `16 Voodoo Child (slight return) 1.mp3` | 2025-03-03 20:29:57 | 320 kb/s (CBR 320) | 63.9% / 4 | 4 |

### 444. `The Jimi Hendrix Experience/Electric Ladyland`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `02 Have You Ever Been (to Electric Ladyland).mp3`
- Selected: `02 Have You Ever Been (to Electric Ladyland).mp3`
- Remove: `02 Have You Ever Been (to Electric Ladyland) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Have You Ever Been (to Electric Ladyland).mp3` | 2020-04-07 11:26:26 | 320 kb/s (CBR 320) | 100.0% / 15 | 11 |
| `02 Have You Ever Been (to Electric Ladyland) 1.mp3` | 2025-03-03 20:29:57 | 320 kb/s (CBR 320) | 63.9% / 4 | 4 |

### 445. `The Jimi Hendrix Experience/Electric Ladyland`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `09 Burning of the Midnight Lamp.mp3`
- Selected: `09 Burning of the Midnight Lamp.mp3`
- Remove: `09 Burning of the Midnight Lamp 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Burning of the Midnight Lamp.mp3` | 2021-04-18 19:53:01 | 128 kb/s (CBR 128) | 100.0% / 15 | 1 |
| `09 Burning of the Midnight Lamp 1.mp3` | 2025-03-03 20:29:57 | 320 kb/s (CBR 320) | 63.9% / 4 | 4 |

### 446. `The Olympians/The Olympians`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Venus.mp3`
- Selected: `02 Venus 1.mp3`
- Remove: `02 Venus.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Venus 1.mp3` | 2026-07-13 22:47:02 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `02 Venus.mp3` | 2022-12-05 22:13:13 | 320 kb/s (CBR 320) | 58.3% / 0 | 0 |

### 447. `The Pentangle/Basket of Light`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `12 Cold Mountain (b-side single).mp3`
- Selected: `12 Cold Mountain (b-side single).mp3`
- Remove: `12 Cold Mountain (B-side single) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Cold Mountain (b-side single).mp3` | 2020-04-07 11:57:56 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |
| `12 Cold Mountain (B-side single) 1.mp3` | 2020-04-07 11:57:56 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 448. `The Pentangle/Basket of Light`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `13 I Saw an Angel (b-side single).mp3`
- Selected: `13 I Saw an Angel (b-side single).mp3`
- Remove: `13 I Saw an Angel (B-side single) 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `13 I Saw an Angel (b-side single).mp3` | 2020-04-07 11:57:56 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |
| `13 I Saw an Angel (B-side single) 1.mp3` | 2020-04-07 11:57:56 | 320 kb/s (CBR 320) | 100.0% / 13 | 13 |

### 449. `The Pointer Sisters/Special Things`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `07 Where Did the Time Go.mp3`
- Selected: `07 Where Did the Time Go.mp3`
- Remove: `07 Where Did the Time Go 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Where Did the Time Go.mp3` | 2025-03-21 18:51:33 | 320 kb/s (CBR 320) | 77.5% / 7 | 7 |
| `07 Where Did the Time Go 1.mp3` | 2025-03-11 23:45:00 | 320 kb/s (CBR 320) | 62.7% / 4 | 4 |

### 450. `The Pointer Sisters/Special Things`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `03 The Love Too Good to Last.mp3`
- Selected: `03 The Love Too Good to Last.mp3`
- Remove: `03 The Love Too Good to Last 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 The Love Too Good to Last.mp3` | 2025-03-21 18:51:33 | 320 kb/s (CBR 320) | 77.5% / 7 | 7 |
| `03 The Love Too Good to Last 1.mp3` | 2025-03-11 23:45:00 | 320 kb/s (CBR 320) | 62.7% / 4 | 4 |

### 451. `The Pointer Sisters/Special Things`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `05 Save This Night for Love.mp3`
- Selected: `05 Save This Night for Love.mp3`
- Remove: `05 Save This Night for Love 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Save This Night for Love.mp3` | 2025-03-21 18:51:33 | 320 kb/s (CBR 320) | 77.5% / 7 | 7 |
| `05 Save This Night for Love 1.mp3` | 2025-03-11 23:45:00 | 320 kb/s (CBR 320) | 62.7% / 4 | 4 |

### 452. `The Soul Surfers/Summer Madness`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Summer Madness, Pt. 2.mp3`
- Selected: `02 Summer Madness, Pt. 2 1.mp3`
- Remove: `02 Summer Madness, Pt. 2.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Summer Madness, Pt. 2.mp3` | 2021-04-18 19:52:06 | 228 kb/s (VBR) | 66.2% / 1 | 1 |
| `02 Summer Madness, Pt. 2 1.mp3` | 2026-07-13 23:55:38 | 320 kb/s (CBR 320) | 66.2% / 1 | 1 |

### 453. `The Soul Surfers/Summer Madness`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Summer Madness, Pt. 1.mp3`
- Selected: `01 Summer Madness, Pt. 1 1.mp3`
- Remove: `01 Summer Madness, Pt. 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Summer Madness, Pt. 1 1.mp3` | 2026-07-13 23:55:38 | 320 kb/s (CBR 320) | 95.0% / 2 | 1 |
| `01 Summer Madness, Pt. 1.mp3` | 2021-04-18 19:52:06 | 320 kb/s (CBR 320) | 37.5% / 0 | 1 |

### 454. `The Specials/More Specials`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `06 Sock It to 'em J.B..mp3`
- Selected: `06 Sock It to 'em J.B..mp3`
- Remove: `06 Sock It to 'Em J.B. 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Sock It to 'em J.B..mp3` | 2020-04-07 12:05:15 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `06 Sock It to 'Em J.B. 1.mp3` | 2020-04-07 12:05:15 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |

### 455. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Betcha by Golly, Wow.mp3`
- Selected: `03 Betcha by Golly, Wow 1.mp3`
- Remove: `03 Betcha by Golly, Wow.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Betcha by Golly, Wow 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `03 Betcha by Golly, Wow.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 456. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `08 Ebony Eyes.mp3`
- Selected: `08 Ebony Eyes 1.mp3`
- Remove: `08 Ebony Eyes.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Ebony Eyes 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `08 Ebony Eyes.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 457. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 You're a Big Girl Now.mp3`
- Selected: `05 You're a Big Girl Now 1.mp3`
- Remove: `05 You're a Big Girl Now.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 You're a Big Girl Now 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `05 You're a Big Girl Now.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 458. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 Country Living.mp3`
- Selected: `04 Country Living 1.mp3`
- Remove: `04 Country Living.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Country Living 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `04 Country Living.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 459. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Point of No Return.mp3`
- Selected: `02 Point of No Return 1.mp3`
- Remove: `02 Point of No Return.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Point of No Return 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `02 Point of No Return.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 460. `The Stylistics/The Stylistics`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 You Are Everything.mp3`
- Selected: `06 You Are Everything 1.mp3`
- Remove: `06 You Are Everything.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 You Are Everything 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `06 You Are Everything.mp3` | 2021-04-18 19:48:00 | 320 kb/s (CBR 320) | 87.5% / 8 | 0 |

### 461. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 If I Love You.mp3`
- Selected: `09 If I Love You 1.mp3`
- Remove: `09 If I Love You.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 If I Love You 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `09 If I Love You.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 462. `The Stylistics/The Stylistics`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Stop, Look, Listen (To Your Heart).mp3`
- Selected: `01 Stop, Look, Listen (To Your Heart) 1.mp3`
- Remove: `01 Stop, Look, Listen (To Your Heart).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Stop, Look, Listen (To Your Heart) 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `01 Stop, Look, Listen (To Your Heart).mp3` | 2021-04-18 19:53:40 | 320 kb/s (CBR 320) | 87.5% / 8 | 0 |

### 463. `The Stylistics/The Stylistics`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `07 People Make the World Go Round.mp3`
- Selected: `07 People Make the World Go Round 1.mp3`
- Remove: `07 People Make the World Go Round.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 People Make the World Go Round 1.mp3` | 2026-07-11 19:58:22 | 320 kb/s (CBR 320) | 87.5% / 8 | 8 |
| `07 People Make the World Go Round.mp3` | 2020-11-15 16:39:15 | 320 kb/s (CBR 320) | 87.5% / 8 | 6 |

### 464. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `06 Long Gone Lover.mp3`
- Selected: `06 Long Gone Lover 1.mp3`
- Remove: `06 Long Gone Lover.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Long Gone Lover.mp3` | 2021-04-11 02:25:36 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `06 Long Gone Lover 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 465. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `05 Come See About Me.mp3`
- Selected: `05 Come See About Me 1.mp3`
- Remove: `05 Come See About Me.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Come See About Me.mp3` | 2021-04-11 02:25:36 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `05 Come See About Me 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 466. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `10 Standing at the Crossroads of Love.mp3`
- Selected: `10 Standing at the Crossroads of Love 1.mp3`
- Remove: `10 Standing at the Crossroads of Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Standing at the Crossroads of Love.mp3` | 2021-04-11 02:25:36 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `10 Standing at the Crossroads of Love 1.mp3` | 2026-07-11 18:38:00 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 467. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `03 Baby Love.mp3`
- Selected: `03 Baby Love 1.mp3`
- Remove: `03 Baby Love.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Baby Love.mp3` | 2021-04-11 02:25:36 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `03 Baby Love 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 468. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `09 He Means the World to Me.mp3`
- Selected: `09 He Means the World to Me 1.mp3`
- Remove: `09 He Means the World to Me.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 He Means the World to Me.mp3` | 2021-04-11 02:25:36 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `09 He Means the World to Me 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 469. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `11 Your Kiss of Fire.mp3`
- Selected: `11 Your Kiss of Fire 1.mp3`
- Remove: `11 Your Kiss of Fire.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `11 Your Kiss of Fire.mp3` | 2021-04-11 02:25:37 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `11 Your Kiss of Fire 1.mp3` | 2026-07-11 18:38:00 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 470. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `12 Ask Any Girl.mp3`
- Selected: `12 Ask Any Girl 1.mp3`
- Remove: `12 Ask Any Girl.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 Ask Any Girl.mp3` | 2021-04-11 02:25:37 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `12 Ask Any Girl 1.mp3` | 2026-07-11 18:38:00 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 471. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `02 Run, Run, Run.mp3`
- Selected: `02 Run, Run, Run 1.mp3`
- Remove: `02 Run, Run, Run.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Run, Run, Run.mp3` | 2021-04-11 02:25:35 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `02 Run, Run, Run 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 472. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 Where Did Our Love Go.mp3`
- Selected: `01 Where Did Our Love Go 1.mp3`
- Remove: `01 Where Did Our Love Go.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Where Did Our Love Go.mp3` | 2021-04-11 02:25:35 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `01 Where Did Our Love Go 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 473. `The Supremes/Where Did Our Love Go`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `04 When the Lovelight Starts Shining Through His Eyes.mp3`
- Selected: `04 When the Lovelight Starts Shining Through His Eyes 1.mp3`
- Remove: `04 When the Lovelight Starts Shining Through His Eyes.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 When the Lovelight Starts Shining Through His Eyes.mp3` | 2021-04-11 02:25:36 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |
| `04 When the Lovelight Starts Shining Through His Eyes 1.mp3` | 2026-07-11 18:37:59 | 320 kb/s (CBR 320) | 95.8% / 11 | 11 |

### 474. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 This Is My Beloved.mp3`
- Selected: `09 This Is My Beloved 1.mp3`
- Remove: `09 This Is My Beloved.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 This Is My Beloved 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `09 This Is My Beloved.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 475. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Why Did You Leave Me Darling.mp3`
- Selected: `07 Why Did You Leave Me Darling 1.mp3`
- Remove: `07 Why Did You Leave Me Darling.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Why Did You Leave Me Darling 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `07 Why Did You Leave Me Darling.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 476. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 I Could Never Love Another (After Loving You).mp3`
- Selected: `01 I Could Never Love Another (After Loving You) 1.mp3`
- Remove: `01 I Could Never Love Another (After Loving You).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 I Could Never Love Another (After Loving You) 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `01 I Could Never Love Another (After Loving You).mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 477. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `12 No Man Can Love Her Like I Do.mp3`
- Selected: `12 No Man Can Love Her Like I Do 1.mp3`
- Remove: `12 No Man Can Love Her Like I Do.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `12 No Man Can Love Her Like I Do 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `12 No Man Can Love Her Like I Do.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 478. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 He Who Picks the Roses.mp3`
- Selected: `06 He Who Picks the Roses 1.mp3`
- Remove: `06 He Who Picks the Roses.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 He Who Picks the Roses 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `06 He Who Picks the Roses.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 479. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 Cindy.mp3`
- Selected: `02 Cindy 1.mp3`
- Remove: `02 Cindy.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Cindy 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `02 Cindy.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 480. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Fan the Flame.mp3`
- Selected: `05 Fan the Flame 1.mp3`
- Remove: `05 Fan the Flame.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Fan the Flame 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `05 Fan the Flame.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 481. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Please Return Your Love to Me.mp3`
- Selected: `04 Please Return Your Love to Me 1.mp3`
- Remove: `04 Please Return Your Love to Me.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Please Return Your Love to Me 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `04 Please Return Your Love to Me.mp3` | 2018-04-29 12:17:49 | 224 kb/s (CBR 224) | 98.9% / 22 | 10 |

### 482. `The Temptations/Wish It Would Rain`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 I Wish It Would Rain.mp3`
- Selected: `03 I Wish It Would Rain 1.mp3`
- Remove: `03 I Wish It Would Rain.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 I Wish It Would Rain 1.mp3` | 2026-07-11 19:50:42 | 320 kb/s (CBR 320) | 99.2% / 22 | 11 |
| `03 I Wish It Would Rain.mp3` | 2021-04-18 19:47:00 | 224 kb/s (CBR 224) | 94.7% / 22 | 0 |

### 483. `The Velvet Underground/Loaded`

**PROPOSED (high confidence):** keep canonical and remove suffixed copy

- Target: `10 Oh! Sweet Nuthin'.mp3`
- Selected: `10 Oh! Sweet Nuthin'.mp3`
- Remove: `10 Oh! Sweet Nuthin' 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `10 Oh! Sweet Nuthin'.mp3` | 2022-08-21 18:31:25 | 320 kb/s (CBR 320) | 100.0% / 18 | 3 |
| `10 Oh! Sweet Nuthin' 1.mp3` | 2022-08-20 21:48:34 | 320 kb/s (CBR 320) | 59.2% / 0 | 0 |

### 484. `The Velvet Underground/Loaded`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Rock & Roll.mp3`
- Selected: `03 Rock & Roll 1.mp3`
- Remove: `03 Rock & Roll.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Rock & Roll 1.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 12 |
| `03 Rock & Roll.mp3` | 2022-08-21 18:31:25 | 320 kb/s (CBR 320) | 100.0% / 17 | 3 |

### 485. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `01 Who Loves the Sun.mp3`
- Selected: `01 Who Loves the Sun.mp3`
- Remove: `01 Who Loves the Sun 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Who Loves the Sun.mp3` | 2022-08-21 18:31:24 | 320 kb/s (CBR 320) | 100.0% / 17 | 3 |
| `01 Who Loves the Sun 1.mp3` | 2022-08-20 21:42:12 | 320 kb/s (CBR 320) | 100.0% / 17 | 1 |

### 486. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `08 I Found a Reason.mp3`
- Selected: `08 I Found a Reason.mp3`
- Remove: `08 I Found a Reason 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 I Found a Reason.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |
| `08 I Found a Reason 1.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |

### 487. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `02 Sweet Jane.mp3`
- Selected: `02 Sweet Jane.mp3`
- Remove: `02 Sweet Jane 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 Sweet Jane.mp3` | 2022-08-21 18:31:24 | 320 kb/s (CBR 320) | 100.0% / 17 | 3 |
| `02 Sweet Jane 1.mp3` | 2022-08-20 21:42:12 | 320 kb/s (CBR 320) | 100.0% / 17 | 1 |

### 488. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `07 Lonesome Cowboy Bill.mp3`
- Selected: `07 Lonesome Cowboy Bill.mp3`
- Remove: `07 Lonesome Cowboy Bill 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Lonesome Cowboy Bill.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |
| `07 Lonesome Cowboy Bill 1.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |

### 489. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `06 Head Held High.mp3`
- Selected: `06 Head Held High.mp3`
- Remove: `06 Head Held High 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Head Held High.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |
| `06 Head Held High 1.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |

### 490. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `05 New Age.mp3`
- Selected: `05 New Age.mp3`
- Remove: `05 New Age 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 New Age.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |
| `05 New Age 1.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |

### 491. `The Velvet Underground/Loaded`

**PROPOSED (medium confidence):** keep canonical and remove suffixed copy

- Target: `09 Train Round the Bend.mp3`
- Selected: `09 Train Round the Bend.mp3`
- Remove: `09 Train Round the Bend 1.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Train Round the Bend.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |
| `09 Train Round the Bend 1.mp3` | 2022-08-21 01:26:48 | 320 kb/s (CBR 320) | 100.0% / 17 | 11 |

### 492. `Thundercat & Tame Impala/No More Lies`

**PROPOSED (medium confidence):** overwrite canonical with selected suffixed file

- Target: `01 No More Lies.mp3`
- Selected: `01 No More Lies 1.mp3`
- Remove: `01 No More Lies.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 No More Lies 1.mp3` | 2024-02-16 00:14:40 | 320 kb/s (CBR 320) | 100.0% / 1 | 1 |
| `01 No More Lies.mp3` | 2023-05-17 17:51:09 | 320 kb/s (CBR 320) | 100.0% / 1 | 0 |

### 493. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-09 M.E..mp3`
- Selected: `1-09 M.E. 1.mp3`
- Remove: `1-09 M.E..mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-09 M.E. 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-09 M.E..mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 494. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-06 Dirty Epic.mp3`
- Selected: `1-06 Dirty Epic 1.mp3`
- Remove: `1-06 Dirty Epic.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-06 Dirty Epic 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-06 Dirty Epic.mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 495. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-05 Tongue.mp3`
- Selected: `1-05 Tongue 1.mp3`
- Remove: `1-05 Tongue.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-05 Tongue 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-05 Tongue.mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 496. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-03 Surfboy.mp3`
- Selected: `1-03 Surfboy 1.mp3`
- Remove: `1-03 Surfboy.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-03 Surfboy 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-03 Surfboy.mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 497. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-07 Cowgirl.mp3`
- Selected: `1-07 Cowgirl 1.mp3`
- Remove: `1-07 Cowgirl.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-07 Cowgirl 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-07 Cowgirl.mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 498. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-04 Spoonman.mp3`
- Selected: `1-04 Spoonman 1.mp3`
- Remove: `1-04 Spoonman.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-04 Spoonman 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-04 Spoonman.mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 499. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-08 River of Bass.mp3`
- Selected: `1-08 River of Bass 1.mp3`
- Remove: `1-08 River of Bass.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-08 River of Bass 1.mp3` | 2023-05-28 20:41:52 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-08 River of Bass.mp3` | 2020-07-21 00:22:58 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 500. `Underworld/Dubnobasswithmyheadman`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `1-01 Dark & Long.mp3`
- Selected: `1-01 Dark & Long 1.mp3`
- Remove: `1-01 Dark & Long.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `1-01 Dark & Long 1.mp3` | 2023-05-28 20:41:51 | 320 kb/s (CBR 320) | 100.0% / 49 | 49 |
| `1-01 Dark & Long.mp3` | 2020-07-21 00:22:57 | 320 kb/s (CBR 320) | 86.1% / 8 | 8 |

### 501. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Summer Nights.mp3`
- Selected: `05 Summer Nights 1.mp3`
- Remove: `05 Summer Nights.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Summer Nights.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `05 Summer Nights 1.mp3` | 2026-07-11 20:36:10 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 502. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Good Enough.mp3`
- Selected: `01 Good Enough 1.mp3`
- Remove: `01 Good Enough.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Good Enough.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `01 Good Enough 1.mp3` | 2026-07-11 20:36:10 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 503. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 _5150_.mp3`
- Selected: `08 _5150_ 1.mp3`
- Remove: `08 _5150_.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 _5150_.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `08 _5150_ 1.mp3` | 2026-07-11 20:36:11 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 504. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Get Up.mp3`
- Selected: `03 Get Up 1.mp3`
- Remove: `03 Get Up.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Get Up.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `03 Get Up 1.mp3` | 2026-07-11 20:36:10 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 505. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Love Walks In.mp3`
- Selected: `07 Love Walks In 1.mp3`
- Remove: `07 Love Walks In.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Love Walks In.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `07 Love Walks In 1.mp3` | 2026-07-11 20:36:11 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 506. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Inside.mp3`
- Selected: `09 Inside 1.mp3`
- Remove: `09 Inside.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Inside.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `09 Inside 1.mp3` | 2026-07-11 20:36:11 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 507. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Best of Both Worlds.mp3`
- Selected: `06 Best of Both Worlds 1.mp3`
- Remove: `06 Best of Both Worlds.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Best of Both Worlds.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `06 Best of Both Worlds 1.mp3` | 2026-07-11 20:36:10 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 508. `Van Halen/5150`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Dreams.mp3`
- Selected: `04 Dreams 1.mp3`
- Remove: `04 Dreams.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Dreams.mp3` | 2018-04-29 12:31:14 | 224 kb/s (CBR 224) | 85.4% / 8 | 8 |
| `04 Dreams 1.mp3` | 2026-07-11 20:36:10 | 320 kb/s (CBR 320) | 85.4% / 8 | 8 |

### 509. `Walker & Royce/Feel The Vibe`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `Feel The Vibe.mp3`
- Selected: `Feel The Vibe 1.mp3`
- Remove: `Feel The Vibe.mp3`
- Deciding rule: 320 kb/s CBR preferred over VBR

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `Feel The Vibe.mp3` | 2023-02-26 17:44:04 | 259 kb/s (VBR) | 0.0% / 0 | 0 |
| `Feel The Vibe 1.mp3` | 2025-04-20 18:36:52 | 320 kb/s (CBR 320) | 0.0% / 0 | 0 |

### 510. `Yann Tiersen/All_juliet_Jun-04-222722-2025_CaseConflict`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Pell.mp3`
- Selected: `05 Pell 1.mp3`
- Remove: `05 Pell.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Pell 1.mp3` | 2019-02-16 12:23:03 | 320 kb/s (CBR 320) | 100.0% / 10 | 10 |
| `05 Pell.mp3` | 2021-04-18 19:52:20 | 320 kb/s (CBR 320) | 75.0% / 10 | 0 |

### 511. `Yeah Yeah Yeahs/Cool It Down`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Burning.mp3`
- Selected: `05 Burning 1.mp3`
- Remove: `05 Burning.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Burning 1.mp3` | 2022-11-20 14:12:39 | 320 kb/s (CBR 320) | 99.7% / 8 | 7 |
| `05 Burning.mp3` | 2022-09-07 13:50:39 | 320 kb/s (CBR 320) | 64.3% / 0 | 0 |

### 512. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `01 Rice.mp3`
- Selected: `01 Rice 1.mp3`
- Remove: `01 Rice.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `01 Rice 1.mp3` | 2024-01-31 21:03:47 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `01 Rice.mp3` | 2023-03-21 21:35:05 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 513. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `07 Ululation.mp3`
- Selected: `07 Ululation 1.mp3`
- Remove: `07 Ululation.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `07 Ululation 1.mp3` | 2024-01-31 21:03:48 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `07 Ululation.mp3` | 2023-03-21 21:35:07 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 514. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `04 Tell Somebody.mp3`
- Selected: `04 Tell Somebody 1.mp3`
- Remove: `04 Tell Somebody.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `04 Tell Somebody 1.mp3` | 2024-01-31 21:03:48 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `04 Tell Somebody.mp3` | 2023-03-21 21:35:06 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 515. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `08 Sink or Swim.mp3`
- Selected: `08 Sink or Swim 1.mp3`
- Remove: `08 Sink or Swim.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `08 Sink or Swim 1.mp3` | 2024-01-31 21:03:48 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `08 Sink or Swim.mp3` | 2023-03-21 21:35:07 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 516. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `09 Holy Moly.mp3`
- Selected: `09 Holy Moly 1.mp3`
- Remove: `09 Holy Moly.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `09 Holy Moly 1.mp3` | 2024-01-31 21:03:48 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `09 Holy Moly.mp3` | 2023-03-21 21:35:07 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 517. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `03 Drum.mp3`
- Selected: `03 Drum 1.mp3`
- Remove: `03 Drum.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `03 Drum 1.mp3` | 2024-01-31 21:03:47 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `03 Drum.mp3` | 2023-03-21 21:35:05 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 518. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 I Saw.mp3`
- Selected: `02 I Saw 1.mp3`
- Remove: `02 I Saw.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 I Saw 1.mp3` | 2024-01-31 21:03:47 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `02 I Saw.mp3` | 2023-03-21 21:35:05 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 519. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `05 Geronimo.mp3`
- Selected: `05 Geronimo 1.mp3`
- Remove: `05 Geronimo.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `05 Geronimo 1.mp3` | 2024-01-31 21:03:48 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `05 Geronimo.mp3` | 2023-03-21 21:35:06 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 520. `Young Fathers/Heavy Heavy`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `06 Shoot Me Down.mp3`
- Selected: `06 Shoot Me Down 1.mp3`
- Remove: `06 Shoot Me Down.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `06 Shoot Me Down 1.mp3` | 2024-01-31 21:03:48 | 320 kb/s (CBR 320) | 100.0% / 23 | 23 |
| `06 Shoot Me Down.mp3` | 2023-03-21 21:35:06 | 320 kb/s (CBR 320) | 88.5% / 9 | 9 |

### 521. `Your Smith/Bad Habit`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `02 The Spot.mp3`
- Selected: `02 The Spot 1.mp3`
- Remove: `02 The Spot.mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `02 The Spot 1.mp3` | 2026-07-13 23:09:19 | 320 kb/s (CBR 320) | 100.0% / 3 | 3 |
| `02 The Spot.mp3` | 2021-04-18 19:48:28 | 320 kb/s (CBR 320) | 50.0% / 0 | 0 |

### 522. `Yuksek/Dance_O_Drome (Deluxe)`

**PROPOSED (high confidence):** overwrite canonical with selected suffixed file

- Target: `18 Kwatamaja (Pete Herbert remix).mp3`
- Selected: `18 Kwatamaja (Pete Herbert remix) 1.mp3`
- Remove: `18 Kwatamaja (Pete Herbert remix).mp3`
- Deciding rule: best album-set ID3 match, then quality and recency

| File | Modified | Bitrate | ID3 similarity / supporting album tracks | Batch cohort |
|---|---:|---:|---:|---:|
| `18 Kwatamaja (Pete Herbert remix) 1.mp3` | 2024-06-14 13:53:04 | 320 kb/s (CBR 320) | 97.8% / 23 | 23 |
| `18 Kwatamaja (Pete Herbert remix).mp3` | 2024-06-14 14:09:24 | 320 kb/s (CBR 320) | 97.8% / 23 | 0 |
