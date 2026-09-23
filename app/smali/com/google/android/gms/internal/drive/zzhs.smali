.class public final Lcom/google/android/gms/internal/drive/zzhs;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lcom/google/android/gms/drive/metadata/internal/zzu;

.field public static final B:Lcom/google/android/gms/drive/metadata/internal/zzu;

.field public static final C:Lcom/google/android/gms/drive/metadata/internal/zzo;

.field public static final D:Lcom/google/android/gms/internal/drive/zzhy;

.field public static final E:Lcom/google/android/gms/internal/drive/zzia;

.field public static final F:Lcom/google/android/gms/drive/metadata/MetadataField;

.field public static final G:Lcom/google/android/gms/internal/drive/zzib;

.field public static final H:Lcom/google/android/gms/internal/drive/zzic;

.field public static final I:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final J:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final K:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final L:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final M:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final N:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final O:Lcom/google/android/gms/internal/drive/zzhz;

.field public static final P:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final Q:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final a:Lcom/google/android/gms/internal/drive/zzim;

.field public static final b:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final c:Lcom/google/android/gms/internal/drive/zzhv;

.field public static final d:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final e:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final f:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final g:Lcom/google/android/gms/drive/metadata/internal/zzi;

.field public static final h:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final i:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final j:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final k:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final l:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final m:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final n:Lcom/google/android/gms/drive/metadata/MetadataField;

.field public static final o:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final p:Lcom/google/android/gms/internal/drive/zzhw;

.field public static final q:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final r:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final s:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final t:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final u:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final v:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final w:Lcom/google/android/gms/drive/metadata/internal/zzb;

.field public static final x:Lcom/google/android/gms/internal/drive/zzhx;

.field public static final y:Lcom/google/android/gms/drive/metadata/internal/zzt;

.field public static final z:Lcom/google/android/gms/drive/metadata/internal/zzs;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzim;->c:Lcom/google/android/gms/internal/drive/zzim;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->a:Lcom/google/android/gms/internal/drive/zzim;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 6
    .line 7
    const-string v1, "alternateLink"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->b:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhv;

    .line 15
    .line 16
    const-string v1, "hasCustomProperties"

    .line 17
    .line 18
    const-string v2, "sqlId"

    .line 19
    .line 20
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "customPropertiesExtra"

    .line 29
    .line 30
    const-string v3, "customPropertiesExtraHolder"

    .line 31
    .line 32
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "customProperties"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->c:Lcom/google/android/gms/internal/drive/zzhv;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 48
    .line 49
    const-string v1, "description"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->d:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 55
    .line 56
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 57
    .line 58
    const-string v1, "embedLink"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->e:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 66
    .line 67
    const-string v1, "fileExtension"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->f:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzi;

    .line 75
    .line 76
    const-string v1, "fileSize"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->g:Lcom/google/android/gms/drive/metadata/internal/zzi;

    .line 82
    .line 83
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 84
    .line 85
    const-string v1, "folderColorRgb"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->h:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 91
    .line 92
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 93
    .line 94
    const-string v1, "hasThumbnail"

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->i:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 100
    .line 101
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 102
    .line 103
    const-string v1, "indexableText"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->j:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 109
    .line 110
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 111
    .line 112
    const-string v1, "isAppData"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->k:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 118
    .line 119
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 120
    .line 121
    const-string v2, "isCopyable"

    .line 122
    .line 123
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->l:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 127
    .line 128
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 129
    .line 130
    const-string v2, "isEditable"

    .line 131
    .line 132
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->m:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 136
    .line 137
    new-instance v0, Lcom/google/android/gms/internal/drive/zzht;

    .line 138
    .line 139
    const-string v2, "trashed"

    .line 140
    .line 141
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 146
    .line 147
    const-string v5, "isExplicitlyTrashed"

    .line 148
    .line 149
    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->n:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 153
    .line 154
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 155
    .line 156
    const-string v3, "isLocalContentUpToDate"

    .line 157
    .line 158
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->o:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 162
    .line 163
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhw;

    .line 164
    .line 165
    const-string v3, "isPinned"

    .line 166
    .line 167
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->p:Lcom/google/android/gms/internal/drive/zzhw;

    .line 171
    .line 172
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 173
    .line 174
    const-string v3, "isOpenable"

    .line 175
    .line 176
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->q:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 180
    .line 181
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 182
    .line 183
    const-string v3, "isRestricted"

    .line 184
    .line 185
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->r:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 189
    .line 190
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 191
    .line 192
    const-string v3, "isShared"

    .line 193
    .line 194
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->s:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 198
    .line 199
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 200
    .line 201
    const-string v3, "isGooglePhotosFolder"

    .line 202
    .line 203
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->t:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 207
    .line 208
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 209
    .line 210
    const-string v3, "isGooglePhotosRootFolder"

    .line 211
    .line 212
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->u:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 216
    .line 217
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 218
    .line 219
    const-string v3, "isTrashable"

    .line 220
    .line 221
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->v:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 225
    .line 226
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 227
    .line 228
    const-string v3, "isViewed"

    .line 229
    .line 230
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->w:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 234
    .line 235
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhx;

    .line 236
    .line 237
    const-string v3, "mimeType"

    .line 238
    .line 239
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->x:Lcom/google/android/gms/internal/drive/zzhx;

    .line 243
    .line 244
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 245
    .line 246
    const-string v3, "originalFilename"

    .line 247
    .line 248
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->y:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 252
    .line 253
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzs;

    .line 254
    .line 255
    const-string v3, "ownerNames"

    .line 256
    .line 257
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-direct {v0, v3, v5, v4}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->z:Lcom/google/android/gms/drive/metadata/internal/zzs;

    .line 265
    .line 266
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzu;

    .line 267
    .line 268
    const-string v3, "lastModifyingUser"

    .line 269
    .line 270
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/internal/zzu;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->A:Lcom/google/android/gms/drive/metadata/internal/zzu;

    .line 274
    .line 275
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzu;

    .line 276
    .line 277
    const-string v3, "sharingUser"

    .line 278
    .line 279
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/internal/zzu;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->B:Lcom/google/android/gms/drive/metadata/internal/zzu;

    .line 283
    .line 284
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzo;

    .line 285
    .line 286
    const-string v3, "dbInstanceId"

    .line 287
    .line 288
    const-string v5, "parentsExtraHolder"

    .line 289
    .line 290
    const-string v6, "parentsExtra"

    .line 291
    .line 292
    filled-new-array {v6, v3, v5}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    const-string v5, "parents"

    .line 301
    .line 302
    invoke-direct {v0, v5, v4, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 303
    .line 304
    .line 305
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->C:Lcom/google/android/gms/drive/metadata/internal/zzo;

    .line 306
    .line 307
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhy;

    .line 308
    .line 309
    const-string v3, "quotaBytesUsed"

    .line 310
    .line 311
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->D:Lcom/google/android/gms/internal/drive/zzhy;

    .line 315
    .line 316
    new-instance v0, Lcom/google/android/gms/internal/drive/zzia;

    .line 317
    .line 318
    const-string v3, "starred"

    .line 319
    .line 320
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->E:Lcom/google/android/gms/internal/drive/zzia;

    .line 324
    .line 325
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhu;

    .line 326
    .line 327
    const-string v3, "thumbnail"

    .line 328
    .line 329
    invoke-direct {v0, v3, v4, v4}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 330
    .line 331
    .line 332
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->F:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 333
    .line 334
    new-instance v0, Lcom/google/android/gms/internal/drive/zzib;

    .line 335
    .line 336
    const-string v3, "title"

    .line 337
    .line 338
    invoke-direct {v0, v3}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->G:Lcom/google/android/gms/internal/drive/zzib;

    .line 342
    .line 343
    new-instance v0, Lcom/google/android/gms/internal/drive/zzic;

    .line 344
    .line 345
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->H:Lcom/google/android/gms/internal/drive/zzic;

    .line 349
    .line 350
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 351
    .line 352
    const-string v2, "webContentLink"

    .line 353
    .line 354
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->I:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 358
    .line 359
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 360
    .line 361
    const-string v2, "webViewLink"

    .line 362
    .line 363
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->J:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 367
    .line 368
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 369
    .line 370
    const-string v2, "uniqueIdentifier"

    .line 371
    .line 372
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->K:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 376
    .line 377
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 378
    .line 379
    const-string v2, "writersCanShare"

    .line 380
    .line 381
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->L:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 385
    .line 386
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 387
    .line 388
    const-string v2, "role"

    .line 389
    .line 390
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->M:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 394
    .line 395
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 396
    .line 397
    const-string v2, "md5Checksum"

    .line 398
    .line 399
    invoke-direct {v0, v2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->N:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 403
    .line 404
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhz;

    .line 405
    .line 406
    const-string v2, "inDriveSpace"

    .line 407
    .line 408
    const-string v3, "inGooglePhotosSpace"

    .line 409
    .line 410
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const-string v2, "spaces"

    .line 419
    .line 420
    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 421
    .line 422
    .line 423
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->O:Lcom/google/android/gms/internal/drive/zzhz;

    .line 424
    .line 425
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 426
    .line 427
    const-string v1, "recencyReason"

    .line 428
    .line 429
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->P:Lcom/google/android/gms/drive/metadata/internal/zzt;

    .line 433
    .line 434
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 435
    .line 436
    const-string v1, "subscribed"

    .line 437
    .line 438
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    sput-object v0, Lcom/google/android/gms/internal/drive/zzhs;->Q:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 442
    .line 443
    return-void
.end method
