.class public Lcom/mycompany/app/pref/PrefPdf;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:Z

.field public static E:I

.field public static F:I

.field public static G:Z

.field public static H:I

.field public static I:Z

.field public static J:J

.field public static K:I

.field public static L:Z

.field public static M:J

.field public static N:I

.field public static O:J

.field public static P:Z

.field public static Q:Z

.field public static R:Z

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:I

.field public static n:Z

.field public static o:I

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefPdf"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefPdf;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefPdf;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefPdf;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefPdf;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefPdf;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefPdf;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

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
    const-class v1, Lcom/mycompany/app/pref/PrefPdf;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

    .line 64
    .line 65
    const-string v3, "PrefPdf"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->T:Lcom/mycompany/app/pref/PrefPdf;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

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
    const-string p1, "mGuideCrop"

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
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->j:Z

    .line 19
    .line 20
    const-string p1, "mCrop"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 28
    .line 29
    const-string p1, "mNotiCrop"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->l:Z

    .line 36
    .line 37
    const-string p1, "mScreenOff"

    .line 38
    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 44
    .line 45
    const-string p1, "mUserBright"

    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 52
    .line 53
    const-string p1, "mBright"

    .line 54
    .line 55
    const/16 v2, 0x5a

    .line 56
    .line 57
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 62
    .line 63
    const-string p1, "mOnlyHttps2"

    .line 64
    .line 65
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->p:Z

    .line 70
    .line 71
    const-string p1, "mSaveData"

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->q:Z

    .line 78
    .line 79
    const-string p1, "mBlockAmp"

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 86
    .line 87
    const-string p1, "mBlockSsl"

    .line 88
    .line 89
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->s:Z

    .line 94
    .line 95
    const-string p1, "mDebugMode"

    .line 96
    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 102
    .line 103
    const-string p1, "mFreshTabRestore"

    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->Q:Z

    const-string p1, "mErudaPreload"

    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->R:Z

    .line 102
    .line 103
    const-string p1, "mVideoIcon2"

    .line 104
    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 110
    .line 111
    const-string p1, "mIconLong"

    .line 112
    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 118
    .line 119
    const-string p1, "mAppBlock2"

    .line 120
    .line 121
    const/4 v2, 0x2

    .line 122
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 127
    .line 128
    const-string p1, "mMaxTexSize"

    .line 129
    .line 130
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->x:I

    .line 135
    .line 136
    const-string p1, "mMidHeight"

    .line 137
    .line 138
    sget v2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 139
    .line 140
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 145
    .line 146
    const-string p1, "mTopToBot"

    .line 147
    .line 148
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 153
    .line 154
    const-string p1, "mTopHeight"

    .line 155
    .line 156
    sget v2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 157
    .line 158
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 163
    .line 164
    const-string p1, "mBotHeight"

    .line 165
    .line 166
    sget v2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 167
    .line 168
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 173
    .line 174
    const-string p1, "mTabAdd"

    .line 175
    .line 176
    const/4 v2, 0x3

    .line 177
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 182
    .line 183
    const-string p1, "mTabClose"

    .line 184
    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 190
    .line 191
    const-string p1, "mTabWidth"

    .line 192
    .line 193
    sget v2, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 194
    .line 195
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 200
    .line 201
    const-string p1, "mTabHeight"

    .line 202
    .line 203
    sget v2, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 204
    .line 205
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 210
    .line 211
    const-string p1, "mQuickSmall"

    .line 212
    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 218
    .line 219
    const-string p1, "mAddrType2"

    .line 220
    .line 221
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 226
    .line 227
    const-string p1, "mFilterInit"

    .line 228
    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->I:Z

    .line 234
    .line 235
    const-string p1, "mFilterTime"

    .line 236
    .line 237
    const-wide/16 v2, 0x0

    .line 238
    .line 239
    invoke-virtual {p0, p1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->g(Ljava/lang/String;J)J

    .line 240
    .line 241
    .line 242
    move-result-wide v4

    .line 243
    sput-wide v4, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 244
    .line 245
    const-string p1, "mFilterDay"

    .line 246
    .line 247
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 252
    .line 253
    const-string p1, "mUserScript"

    .line 254
    .line 255
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 260
    .line 261
    const-string p1, "mScriptTime"

    .line 262
    .line 263
    invoke-virtual {p0, p1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->g(Ljava/lang/String;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v4

    .line 267
    sput-wide v4, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 268
    .line 269
    const-string p1, "mScriptDay"

    .line 270
    .line 271
    const/4 v0, 0x7

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 277
    .line 278
    const-string p1, "mPayTime"

    .line 279
    .line 280
    invoke-virtual {p0, p1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->g(Ljava/lang/String;J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v2

    .line 284
    sput-wide v2, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 285
    .line 286
    const-string p1, "mPayConfirm"

    .line 287
    .line 288
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    sput-boolean p0, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 293
    .line 294
    const-string p0, "PrefPdf"

    .line 295
    .line 296
    sput-object p0, Lcom/mycompany/app/pref/PrefPdf;->i:Ljava/lang/String;

    .line 297
    .line 298
    return-void
.end method
