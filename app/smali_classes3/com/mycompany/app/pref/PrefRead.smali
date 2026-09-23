.class public Lcom/mycompany/app/pref/PrefRead;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:Z

.field public static D:Z

.field public static E:Z

.field public static F:Z

.field public static G:Z

.field public static H:Z

.field public static I:Z

.field public static J:Z

.field public static K:Z

.field public static L:Z

.field public static M:Z

.field public static N:Z

.field public static O:Z

.field public static P:I

.field public static Q:I

.field public static R:I

.field public static S:F

.field public static T:I

.field public static U:I

.field public static V:F

.field public static W:I

.field public static X:I

.field public static Y:F

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:I

.field public static n:Z

.field public static o:Ljava/lang/String;

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefRead"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/mycompany/app/pref/PrefRead;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefRead;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefRead;->i:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefRead;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefRead;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefRead;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 43
    .line 44
    move p1, v2

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    monitor-exit v3

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_3
    iget-object v1, v1, Lcom/mycompany/app/pref/PrefCore;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    const-class v1, Lcom/mycompany/app/pref/PrefRead;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 64
    .line 65
    const-string v3, "PrefRead"

    .line 66
    .line 67
    invoke-virtual {p1, p0, v3}, Lcom/mycompany/app/pref/PrefCore;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    move p1, v2

    .line 72
    goto :goto_2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    throw p0

    .line 76
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 77
    .line 78
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->j()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    :cond_5
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->U:Lcom/mycompany/app/pref/PrefRead;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const-string p1, "mGuideRead"

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->j:Z

    .line 19
    .line 20
    const-string p1, "mGuideTxt"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->k:Z

    .line 27
    .line 28
    const-string p1, "mGuideSrc"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->l:Z

    .line 35
    .line 36
    const-string p1, "mTextSize"

    .line 37
    .line 38
    const/16 v1, 0x64

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sput p1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 45
    .line 46
    const-string p1, "mUserFont"

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 54
    .line 55
    const-string p1, "mFontPath"

    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sput-object p1, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 64
    .line 65
    const-string p1, "mFontBold"

    .line 66
    .line 67
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 72
    .line 73
    const-string p1, "mGuideDown"

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->q:Z

    .line 80
    .line 81
    const-string p1, "mGuidePrev"

    .line 82
    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->r:Z

    .line 88
    .line 89
    const-string p1, "mGuideSort"

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->s:Z

    .line 96
    .line 97
    const-string p1, "mGuideMemo"

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->t:Z

    .line 104
    .line 105
    const-string p1, "mGuideEdIc3"

    .line 106
    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->u:Z

    .line 112
    .line 113
    const-string p1, "mGuideLayout"

    .line 114
    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->v:Z

    .line 120
    .line 121
    const-string p1, "mGuideSpace"

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->w:Z

    .line 128
    .line 129
    const-string p1, "mGuideSwipe"

    .line 130
    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->x:Z

    .line 136
    .line 137
    const-string p1, "mGuideGesture"

    .line 138
    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->y:Z

    .line 144
    .line 145
    const-string p1, "mGuideSense"

    .line 146
    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->z:Z

    .line 152
    .line 153
    const-string p1, "mGuideHand"

    .line 154
    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->A:Z

    .line 160
    .line 161
    const-string p1, "mGuideCap2"

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->B:Z

    .line 168
    .line 169
    const-string p1, "mGuideFilter"

    .line 170
    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->C:Z

    .line 176
    .line 177
    const-string p1, "mGuideLicense"

    .line 178
    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->D:Z

    .line 184
    .line 185
    const-string p1, "mGuideTts"

    .line 186
    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->E:Z

    .line 192
    .line 193
    const-string p1, "mNotiEdit"

    .line 194
    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    const-string p1, "mNotiPath"

    .line 199
    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->F:Z

    .line 205
    .line 206
    const-string p1, "mNotiRead"

    .line 207
    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->G:Z

    .line 213
    .line 214
    const-string p1, "mNotiArea"

    .line 215
    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 221
    .line 222
    const-string p1, "mNotiAre2"

    .line 223
    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->I:Z

    .line 229
    .line 230
    const-string p1, "mNotiAre3"

    .line 231
    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 237
    .line 238
    const-string p1, "mNotiAre4"

    .line 239
    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->K:Z

    .line 245
    .line 246
    const-string p1, "mAutoSpeak"

    .line 247
    .line 248
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->L:Z

    .line 253
    .line 254
    const-string p1, "mAutoTrans"

    .line 255
    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->M:Z

    .line 261
    .line 262
    const-string p1, "mViewTrans"

    .line 263
    .line 264
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->N:Z

    .line 269
    .line 270
    const-string p1, "mAreaMulti"

    .line 271
    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->O:Z

    .line 277
    .line 278
    const-string p1, "mPenSize"

    .line 279
    .line 280
    const/16 v2, 0xa

    .line 281
    .line 282
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    sput p1, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 287
    .line 288
    const-string p1, "mPenAlpha"

    .line 289
    .line 290
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    sput p1, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 295
    .line 296
    sget-object p1, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 297
    .line 298
    aget v3, p1, v0

    .line 299
    .line 300
    const-string v4, "mPenColor"

    .line 301
    .line 302
    invoke-virtual {p0, v4, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    sput v3, Lcom/mycompany/app/pref/PrefRead;->R:I

    .line 307
    .line 308
    sget-object v3, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 309
    .line 310
    aget v0, v3, v0

    .line 311
    .line 312
    const-string v4, "mPenPos"

    .line 313
    .line 314
    invoke-virtual {p0, v4, v0}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    sput v0, Lcom/mycompany/app/pref/PrefRead;->S:F

    .line 319
    .line 320
    const-string v0, "mEraseSize"

    .line 321
    .line 322
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    sput v0, Lcom/mycompany/app/pref/PrefRead;->T:I

    .line 327
    .line 328
    const-string v0, "mTextColor"

    .line 329
    .line 330
    aget p1, p1, v1

    .line 331
    .line 332
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    sput p1, Lcom/mycompany/app/pref/PrefRead;->U:I

    .line 337
    .line 338
    const-string p1, "mTextPos"

    .line 339
    .line 340
    aget v0, v3, v1

    .line 341
    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    sput p1, Lcom/mycompany/app/pref/PrefRead;->V:F

    .line 347
    .line 348
    const-string p1, "mReadAlpha"

    .line 349
    .line 350
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    sput p1, Lcom/mycompany/app/pref/PrefRead;->W:I

    .line 355
    .line 356
    sget-object p1, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 357
    .line 358
    const/4 v0, 0x3

    .line 359
    aget p1, p1, v0

    .line 360
    .line 361
    const-string v1, "mReadColor"

    .line 362
    .line 363
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    sput p1, Lcom/mycompany/app/pref/PrefRead;->X:I

    .line 368
    .line 369
    const-string p1, "mReadPos"

    .line 370
    .line 371
    aget v0, v3, v0

    .line 372
    .line 373
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    sput p0, Lcom/mycompany/app/pref/PrefRead;->Y:F

    .line 378
    .line 379
    sget p0, Lcom/mycompany/app/pref/PrefRead;->X:I

    .line 380
    .line 381
    sget p1, Lcom/mycompany/app/pref/PrefRead;->W:I

    .line 382
    .line 383
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 384
    .line 385
    .line 386
    const-string p0, "PrefRead"

    .line 387
    .line 388
    sput-object p0, Lcom/mycompany/app/pref/PrefRead;->i:Ljava/lang/String;

    .line 389
    .line 390
    return-void
.end method
