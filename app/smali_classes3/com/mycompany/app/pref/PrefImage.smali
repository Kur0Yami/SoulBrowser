.class public Lcom/mycompany/app/pref/PrefImage;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:F

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:I

.field public static l:I

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:I

.field public static q:Z

.field public static r:I

.field public static s:Z

.field public static t:I

.field public static u:I

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefImage"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefImage;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefImage;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefImage;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefImage;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefImage;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefImage;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

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
    const-class v1, Lcom/mycompany/app/pref/PrefImage;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

    .line 64
    .line 65
    const-string v3, "PrefImage"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->P:Lcom/mycompany/app/pref/PrefImage;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

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
    const-string p1, "mGuideTap"

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
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->j:Z

    .line 19
    .line 20
    const-string p1, "mIndex"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sput p1, Lcom/mycompany/app/pref/PrefImage;->k:I

    .line 28
    .line 29
    const-string p1, "mPage"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    const-string p1, "mRotate"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    sput p1, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 41
    .line 42
    const-string p1, "mShowThumb"

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 49
    .line 50
    const-string p1, "mShowGuide"

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->n:Z

    .line 57
    .line 58
    const-string p1, "mVolTurn"

    .line 59
    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 65
    .line 66
    const-string p1, "mScreenOff"

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sput p1, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 73
    .line 74
    const-string p1, "mUserBright3"

    .line 75
    .line 76
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->q:Z

    .line 81
    .line 82
    const-string p1, "mBright3"

    .line 83
    .line 84
    const/16 v0, 0x5a

    .line 85
    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    sput p1, Lcom/mycompany/app/pref/PrefImage;->r:I

    .line 91
    .line 92
    const-string p1, "mReverse"

    .line 93
    .line 94
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 99
    .line 100
    const-string p1, "mViewPort"

    .line 101
    .line 102
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    sput p1, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 107
    .line 108
    const-string p1, "mViewLand"

    .line 109
    .line 110
    const/4 v0, 0x3

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    sput p1, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 116
    .line 117
    const-string p1, "mFitPort"

    .line 118
    .line 119
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->v:Z

    .line 124
    .line 125
    const-string p1, "mFitLand"

    .line 126
    .line 127
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->w:Z

    .line 132
    .line 133
    const-string p1, "mSplitPort"

    .line 134
    .line 135
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->x:Z

    .line 140
    .line 141
    const-string p1, "mSplitLand"

    .line 142
    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    sput-boolean p1, Lcom/mycompany/app/pref/PrefImage;->y:Z

    .line 148
    .line 149
    const-string p1, "mMarginPort"

    .line 150
    .line 151
    const/4 v0, -0x1

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    sput p1, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 157
    .line 158
    const-string p1, "mMarginLand"

    .line 159
    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    sput p1, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 165
    .line 166
    sget-object p1, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 167
    .line 168
    const/4 v2, 0x5

    .line 169
    aget p1, p1, v2

    .line 170
    .line 171
    const-string v3, "mBackColor"

    .line 172
    .line 173
    invoke-virtual {p0, v3, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    sput p1, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 178
    .line 179
    sget-object p1, Lcom/mycompany/app/main/MainConst;->w:[F

    .line 180
    .line 181
    aget p1, p1, v2

    .line 182
    .line 183
    const-string v2, "mBackPos"

    .line 184
    .line 185
    invoke-virtual {p0, v2, p1}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    sput p1, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 190
    .line 191
    const-string p1, "mTapLeft"

    .line 192
    .line 193
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    sput p1, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 198
    .line 199
    const-string p1, "mTapRight"

    .line 200
    .line 201
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    sput p1, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 206
    .line 207
    const-string p1, "mPortAreaLeft"

    .line 208
    .line 209
    sget v1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 210
    .line 211
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    sput p1, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 216
    .line 217
    const-string p1, "mPortAreaRight"

    .line 218
    .line 219
    sget v1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 220
    .line 221
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    sput p1, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 226
    .line 227
    sget p1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 228
    .line 229
    mul-int/lit8 p1, p1, 0x2

    .line 230
    .line 231
    const-string v1, "mLandAreaLeft"

    .line 232
    .line 233
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    sput p1, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 238
    .line 239
    sget p1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 240
    .line 241
    mul-int/lit8 p1, p1, 0x2

    .line 242
    .line 243
    const-string v1, "mLandAreaRight"

    .line 244
    .line 245
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    sput p1, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 250
    const-string v1, "mPdfControlTimeout"

    const/4 p1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefImage;->J:I

    .line 251
    sget p0, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 252
    .line 253
    if-ne p0, v0, :cond_2

    .line 254
    .line 255
    sget p0, Lcom/mycompany/app/main/MainApp;->u1:I

    .line 256
    .line 257
    sput p0, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 258
    .line 259
    :cond_2
    sget p0, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 260
    .line 261
    if-ne p0, v0, :cond_3

    .line 262
    .line 263
    sget p0, Lcom/mycompany/app/main/MainApp;->u1:I

    .line 264
    .line 265
    sput p0, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 266
    .line 267
    :cond_3
    const-string p0, "PrefImage"

    .line 268
    .line 269
    sput-object p0, Lcom/mycompany/app/pref/PrefImage;->i:Ljava/lang/String;

    .line 270
    .line 271
    return-void
.end method
