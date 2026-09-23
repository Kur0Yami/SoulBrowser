.class public Lcom/mycompany/app/pref/PrefAlbum;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:Z

.field public static E:Z

.field public static F:Z

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Z

.field public static P:Z

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:I

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:I

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefAlbum"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefAlbum;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefAlbum;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefAlbum;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefAlbum;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefAlbum;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

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
    const-class v1, Lcom/mycompany/app/pref/PrefAlbum;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

    .line 64
    .line 65
    const-string v3, "PrefAlbum"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->M:Lcom/mycompany/app/pref/PrefAlbum;

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
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

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
    const-string p1, "mGuideDown"

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
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->j:Z

    .line 19
    .line 20
    const-string p1, "mImageType2"

    .line 21
    .line 22
    const/16 v1, 0x7e

    .line 23
    .line 24
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 29
    .line 30
    const-string p1, "mNotiIcon"

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->l:Z

    .line 37
    .line 38
    const-string p1, "mNotiQuick"

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 45
    .line 46
    const-string p1, "mNotiBackup"

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    const-string p1, "mGuideTab"

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 58
    .line 59
    const-string p1, "mNotiClean"

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->o:Z

    .line 66
    .line 67
    const-string p1, "mNotiClea2"

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->p:Z

    .line 74
    .line 75
    const-string p1, "mNotiBook"

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->q:Z

    .line 82
    .line 83
    const-string p1, "mFilterNoti2"

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->r:Z

    .line 90
    .line 91
    const-string p1, "mFilterAdd4"

    .line 92
    .line 93
    const-string v1, ""

    .line 94
    .line 95
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 100
    .line 101
    const-string p1, "mAdguardAdd2"

    .line 102
    .line 103
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 108
    .line 109
    const-string p1, "mTransMode2"

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 117
    .line 118
    const-string p1, "mTransIcon"

    .line 119
    .line 120
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 125
    .line 126
    const-string p1, "mTransPage"

    .line 127
    .line 128
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 133
    .line 134
    const-string p1, "mTransNoti"

    .line 135
    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->x:Z

    .line 141
    .line 142
    const-string p1, "mTransPick"

    .line 143
    .line 144
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 149
    .line 150
    const-string p1, "mTransCode"

    .line 151
    .line 152
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 157
    .line 158
    const-string p1, "mOcrLang"

    .line 159
    .line 160
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 165
    .line 166
    const-string p1, "mOcrZoom"

    .line 167
    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 173
    .line 174
    const-string p1, "mOcrBack"

    .line 175
    .line 176
    const/4 v3, 0x2

    .line 177
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 182
    .line 183
    const-string p1, "mOcrNoti"

    .line 184
    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->D:Z

    .line 190
    .line 191
    const-string p1, "mOcrAuto"

    .line 192
    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->E:Z

    .line 198
    .line 199
    const-string p1, "mOcrReload"

    .line 200
    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->F:Z

    .line 206
    .line 207
    const-string p1, "mDappName2"

    .line 208
    .line 209
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 214
    .line 215
    const-string p1, "mDappPkg2"

    .line 216
    .line 217
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 222
    .line 223
    const-string p1, "mDappCls2"

    .line 224
    .line 225
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 230
    .line 231
    const-string p1, "mPlayName2"

    .line 232
    .line 233
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 238
    .line 239
    const-string p1, "mPlayPkg2"

    .line 240
    .line 241
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 246
    .line 247
    const-string p1, "mPlayCls2"

    .line 248
    .line 249
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 254
    .line 255
    const-string p1, "mWebBookDir"

    .line 256
    .line 257
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->M:Ljava/lang/String;

    .line 262
    .line 263
    const-string p1, "mWebBookSec"

    .line 264
    .line 265
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->N:Ljava/lang/String;

    .line 270
    .line 271
    const-string p1, "mTabAnim"

    .line 272
    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 278
    .line 279
    const-string p1, "mLinkApp"

    .line 280
    .line 281
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    sput-boolean p0, Lcom/mycompany/app/pref/PrefAlbum;->P:Z

    .line 286
    .line 287
    const-string p0, "PrefAlbum"

    .line 288
    .line 289
    sput-object p0, Lcom/mycompany/app/pref/PrefAlbum;->i:Ljava/lang/String;

    .line 290
    .line 291
    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    :goto_0
    return-void

    .line 12
    :cond_1
    const-string v0, "mDappName2"

    .line 13
    .line 14
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "mDappPkg2"

    .line 20
    .line 21
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "mDappCls2"

    .line 27
    .line 28
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    :goto_0
    return-void

    .line 12
    :cond_1
    const-string v0, "mTransPick"

    .line 13
    .line 14
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "mTransCode"

    .line 20
    .line 21
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
