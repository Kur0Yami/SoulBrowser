.class public Lcom/mycompany/app/pref/PrefZone;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:I

.field public static D:Z

.field public static E:Z

.field public static F:Z

.field public static G:Z

.field public static H:I

.field public static I:I

.field public static J:Z

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:I

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I

.field public static a0:I

.field public static b0:Z

.field public static c0:Z

.field public static d0:Z

.field public static e0:I

.field public static f0:I

.field public static g0:Ljava/lang/String;

.field public static h0:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static i0:Ljava/lang/String;

.field public static j:Z

.field public static j0:I

.field public static k:Z

.field public static k0:I

.field public static l:Ljava/lang/String;

.field public static l0:Z

.field public static m:Z

.field public static m0:Z

.field public static n:I

.field public static n0:Z

.field public static o:Z

.field public static o0:Z

.field public static p:Z

.field public static p0:Z

.field public static q:Z

.field public static q0:Z

.field public static r:I

.field public static r0:Z

.field public static s:Z

.field public static s0:Z

.field public static t:Z

.field public static t0:Z

.field public static u:Z

.field public static u0:I

.field public static v:Z

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefZone"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefZone;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefZone;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefZone;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefZone;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefZone;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

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
    const-class v1, Lcom/mycompany/app/pref/PrefZone;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

    .line 64
    .line 65
    const-string v3, "PrefZone"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->b0:Lcom/mycompany/app/pref/PrefZone;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p2}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

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
    const/4 p2, 0x3

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    move p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move p1, p2

    .line 28
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x1d

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x0

    .line 34
    if-lt v1, v2, :cond_3

    .line 35
    .line 36
    move v1, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move v1, v4

    .line 39
    :goto_2
    sget v2, Lcom/mycompany/app/main/MainApp;->D1:I

    .line 40
    .line 41
    const-string v5, "mHomeClose"

    .line 42
    .line 43
    invoke-virtual {p0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->j:Z

    .line 48
    .line 49
    const-string v5, "mUserFont"

    .line 50
    .line 51
    invoke-virtual {p0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 56
    .line 57
    const-string v5, "mFontPath"

    .line 58
    .line 59
    const-string v6, ""

    .line 60
    .line 61
    invoke-virtual {p0, v5, v6}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sput-object v5, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 66
    .line 67
    const-string v5, "mFontBold"

    .line 68
    .line 69
    invoke-virtual {p0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 74
    .line 75
    const-string v5, "mDownPos"

    .line 76
    .line 77
    invoke-virtual {p0, v5, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    sput v5, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 82
    .line 83
    const-string v5, "mShowPip"

    .line 84
    .line 85
    invoke-virtual {p0, v5, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 90
    .line 91
    const-string v5, "mShowFull"

    .line 92
    .line 93
    invoke-virtual {p0, v5, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 98
    .line 99
    const-string v5, "mShowDown"

    .line 100
    .line 101
    invoke-virtual {p0, v5, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 106
    .line 107
    const-string v5, "mYouPos"

    .line 108
    .line 109
    invoke-virtual {p0, v5, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    sput p2, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 114
    .line 115
    const-string p2, "mYouPip"

    .line 116
    .line 117
    invoke-virtual {p0, p2, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZone;->s:Z

    .line 122
    .line 123
    const-string p2, "mYouRate"

    .line 124
    .line 125
    invoke-virtual {p0, p2, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZone;->t:Z

    .line 130
    .line 131
    const-string p2, "mHideImage"

    .line 132
    .line 133
    invoke-virtual {p0, p2, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 138
    .line 139
    const-string p2, "mPreRaster"

    .line 140
    .line 141
    invoke-virtual {p0, p2, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZone;->v:Z

    .line 146
    .line 147
    const-string p2, "mTextSize"

    .line 148
    .line 149
    const/16 v5, 0x64

    .line 150
    .line 151
    invoke-virtual {p0, p2, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    sput p2, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 156
    .line 157
    const-string p2, "mScrollPos"

    .line 158
    .line 159
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    sput p1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 164
    .line 165
    const-string p1, "mShowUpPos"

    .line 166
    .line 167
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    sput p1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 172
    .line 173
    const-string p1, "mPullRefresh"

    .line 174
    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 180
    .line 181
    const-string p1, "mNotiShort"

    .line 182
    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->A:Z

    .line 188
    .line 189
    const-string p1, "mVolScroll"

    .line 190
    .line 191
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->B:Z

    .line 196
    .line 197
    const-string p1, "mTabListType"

    .line 198
    .line 199
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    sput p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 204
    .line 205
    const-string p1, "mTabMiniMode"

    .line 206
    .line 207
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 212
    .line 213
    const-string p1, "mSwipeDelete"

    .line 214
    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 220
    .line 221
    const-string p1, "mTabUndelete"

    .line 222
    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 228
    .line 229
    const-string p1, "mBackPlay"

    .line 230
    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->G:Z

    .line 236
    .line 237
    const-string p1, "mOpenLink4"

    .line 238
    .line 239
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    sput p1, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 244
    .line 245
    const-string p1, "mOpenImage3"

    .line 246
    .line 247
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    sput p1, Lcom/mycompany/app/pref/PrefZone;->I:I

    .line 252
    .line 253
    const-string p1, "mLinkImage"

    .line 254
    .line 255
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->J:Z

    .line 260
    .line 261
    const-string p1, "mGesTop"

    .line 262
    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    sput p1, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 268
    .line 269
    const-string p1, "mGesBot"

    .line 270
    .line 271
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    sput p1, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 276
    .line 277
    const-string p1, "mGesLeft"

    .line 278
    .line 279
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    sput p1, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 284
    .line 285
    const-string p1, "mGesRight"

    .line 286
    .line 287
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    sput p1, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 292
    .line 293
    const-string p1, "mGesCenter"

    .line 294
    .line 295
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    sput p1, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 300
    .line 301
    const-string p1, "mPortAreaTop"

    .line 302
    .line 303
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 304
    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    sput p1, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 310
    .line 311
    const-string p1, "mPortAreaBot"

    .line 312
    .line 313
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 314
    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    sput p1, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 320
    .line 321
    const-string p1, "mPortAreaLeft"

    .line 322
    .line 323
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    sput p1, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 328
    .line 329
    const-string p1, "mPortAreaRight"

    .line 330
    .line 331
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    sput p1, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 336
    .line 337
    const-string p1, "mLandAreaTop"

    .line 338
    .line 339
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 340
    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    sput p1, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 346
    .line 347
    const-string p1, "mLandAreaBot"

    .line 348
    .line 349
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 350
    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    sput p1, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 356
    .line 357
    const-string p1, "mLandAreaLeft"

    .line 358
    .line 359
    sget p2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 360
    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    sput p1, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 366
    .line 367
    const-string p1, "mLandAreaRight"

    .line 368
    .line 369
    sget p2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 370
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    sput p1, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 376
    .line 377
    const-string p1, "mGesUpLt3"

    .line 378
    .line 379
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    sput p1, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 384
    .line 385
    const-string p1, "mGesUpRt3"

    .line 386
    .line 387
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    sput p1, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 392
    .line 393
    const-string p1, "mGesDnLt3"

    .line 394
    .line 395
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    sput p1, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 400
    .line 401
    const-string p1, "mGesDnRt3"

    .line 402
    .line 403
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    sput p1, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 408
    .line 409
    const-string p1, "mGuideZoom"

    .line 410
    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->b0:Z

    .line 416
    .line 417
    const-string p1, "mPopNoti"

    .line 418
    .line 419
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->c0:Z

    .line 424
    .line 425
    const-string p1, "mSnkGuide"

    .line 426
    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->d0:Z

    invoke-static {p0}, Lcom/mycompany/app/pref/LinkMenuPrefs;->mask(Lcom/mycompany/app/pref/PrefCore;)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefZone;->e0:I

    .line 442
    .line 443
    const-string p1, "mUseImg5"

    .line 444
    .line 445
    const/16 p2, 0x1ffe

    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    sput p1, Lcom/mycompany/app/pref/PrefZone;->f0:I

    invoke-static {p0}, Lcom/mycompany/app/pref/LinkMenuPrefs;->order(Lcom/mycompany/app/pref/PrefCore;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mycompany/app/pref/PrefZone;->g0:Ljava/lang/String;

    .line 458
    .line 459
    const-string p1, "mImgOrder4"

    .line 460
    .line 461
    invoke-virtual {p0, p1, v6}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    sput-object p1, Lcom/mycompany/app/pref/PrefZone;->h0:Ljava/lang/String;

    .line 466
    .line 467
    const-string p1, "mSearchUse2"

    .line 468
    .line 469
    invoke-virtual {p0, p1, v6}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    sput-object p1, Lcom/mycompany/app/pref/PrefZone;->i0:Ljava/lang/String;

    .line 474
    .line 475
    const-string p1, "mMultiDown"

    .line 476
    .line 477
    const/16 p2, 0xa

    .line 478
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    sput p1, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 484
    .line 485
    const-string p1, "mRetryDown"

    .line 486
    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    sput p1, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 492
    .line 493
    const-string p1, "mNotiDown"

    .line 494
    .line 495
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 500
    .line 501
    const-string p1, "mNotiAddr"

    .line 502
    .line 503
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 508
    .line 509
    const-string p1, "mOcrUseIcon"

    .line 510
    .line 511
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 516
    .line 517
    const-string p1, "mOcrUsePack"

    .line 518
    .line 519
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 524
    .line 525
    const-string p1, "mOcrUseLoad"

    .line 526
    .line 527
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 532
    .line 533
    const-string p1, "mOcrUseTrns"

    .line 534
    .line 535
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 540
    .line 541
    const-string p1, "mOcrUseBack"

    .line 542
    .line 543
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 548
    .line 549
    const-string p1, "mOcrUseZoom"

    .line 550
    .line 551
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->s0:Z

    .line 556
    .line 557
    const-string p1, "mOcrGuide"

    .line 558
    .line 559
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 560
    .line 561
    .line 562
    move-result p1

    .line 563
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 564
    .line 565
    const-string p1, "mTailIp"

    .line 566
    .line 567
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 568
    .line 569
    .line 570
    move-result p0

    .line 571
    sput p0, Lcom/mycompany/app/pref/PrefZone;->u0:I

    .line 572
    .line 573
    const-string p0, "PrefZone"

    .line 574
    .line 575
    sput-object p0, Lcom/mycompany/app/pref/PrefZone;->i:Ljava/lang/String;

    .line 576
    .line 577
    return-void
.end method
