.class public Lcom/mycompany/app/pref/PrefList;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static A0:Z

.field public static B:I

.field public static B0:Z

.field public static C:Z

.field public static C0:Z

.field public static D:Z

.field public static D0:I

.field public static E:Z

.field public static E0:Z

.field public static F:Z

.field public static F0:Z

.field public static G:Z

.field public static G0:Z

.field public static H:I

.field public static H0:I

.field public static I:Z

.field public static I0:I

.field public static J:Z

.field public static J0:Z

.field public static K:Z

.field public static K0:Z

.field public static L:I

.field public static L0:Z

.field public static M:I

.field public static M0:I

.field public static N:Z

.field public static N0:I

.field public static O:Z

.field public static O0:Z

.field public static P:Z

.field public static P0:Z

.field public static Q:I

.field public static Q0:Z

.field public static R:I

.field public static R0:I

.field public static S:Z

.field public static S0:I

.field public static T:Z

.field public static T0:Z

.field public static U:Z

.field public static U0:Z

.field public static V:I

.field public static V0:Z

.field public static W:I

.field public static W0:I

.field public static X:Z

.field public static X0:I

.field public static Y:Z

.field public static Y0:Z

.field public static Z:Z

.field public static Z0:I

.field public static a0:I

.field public static a1:I

.field public static b0:I

.field public static b1:I

.field public static c0:Z

.field public static c1:Z

.field public static d0:Z

.field public static d1:Z

.field public static e0:Z

.field public static e1:Z

.field public static f0:I

.field public static f1:Z

.field public static g0:I

.field public static g1:Z

.field public static h0:Z

.field public static h1:I

.field public static i:Ljava/lang/String;

.field public static i0:Z

.field public static i1:Z

.field public static j:I

.field public static j0:Z

.field public static j1:Z

.field public static k:I

.field public static k0:I

.field public static k1:Z

.field public static l:I

.field public static l0:I

.field public static m:Z

.field public static m0:Z

.field public static n:Z

.field public static n0:Z

.field public static o:Z

.field public static o0:Z

.field public static p:Z

.field public static p0:I

.field public static q:Z

.field public static q0:I

.field public static r:I

.field public static r0:Z

.field public static s:I

.field public static s0:Z

.field public static t:Z

.field public static t0:Z

.field public static u:Z

.field public static u0:I

.field public static v:Z

.field public static v0:Z

.field public static w:I

.field public static w0:Z

.field public static x:Z

.field public static x0:Z

.field public static y:Z

.field public static y0:I

.field public static z:Z

.field public static z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefList"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefList;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefList;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefList;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefList;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefList;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefList;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

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
    const-class v1, Lcom/mycompany/app/pref/PrefList;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

    .line 64
    .line 65
    const-string v3, "PrefList"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Q:Lcom/mycompany/app/pref/PrefList;

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
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

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
    const-string p1, "mViewType"

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sput p1, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 19
    .line 20
    const-string p1, "mAlbumFold2"

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sput p1, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 28
    .line 29
    const-string p1, "mAlbumItem"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sput p1, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 36
    .line 37
    const-string p1, "mAlbumRvse"

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 44
    .line 45
    const-string p1, "mAlbumDetail"

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->n:Z

    .line 53
    .line 54
    const-string p1, "mAlbumSingle"

    .line 55
    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->o:Z

    .line 61
    .line 62
    const-string p1, "mAlbumRecent"

    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->p:Z

    .line 69
    .line 70
    const-string p1, "mAlbumContinue"

    .line 71
    .line 72
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 77
    .line 78
    const-string p1, "mCastType"

    .line 79
    .line 80
    const/4 v2, 0x5

    .line 81
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    sput p1, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 86
    .line 87
    const-string p1, "mCastItem"

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    sput p1, Lcom/mycompany/app/pref/PrefList;->s:I

    .line 94
    .line 95
    const-string p1, "mCastRvse"

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->t:Z

    .line 102
    .line 103
    const-string p1, "mCastDetail"

    .line 104
    .line 105
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->u:Z

    .line 110
    .line 111
    const-string p1, "mCastSingle"

    .line 112
    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->v:Z

    .line 118
    .line 119
    const-string p1, "mFileItem"

    .line 120
    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sput p1, Lcom/mycompany/app/pref/PrefList;->w:I

    .line 126
    .line 127
    const-string p1, "mFileRvse"

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->x:Z

    .line 134
    .line 135
    const-string p1, "mFileDetail"

    .line 136
    .line 137
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->y:Z

    .line 142
    .line 143
    const-string p1, "mFileSingle"

    .line 144
    .line 145
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->z:Z

    .line 150
    .line 151
    const-string p1, "mBookAlbumFold2"

    .line 152
    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    sput p1, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 158
    .line 159
    const-string p1, "mBookAlbumItem"

    .line 160
    .line 161
    const/4 v2, 0x3

    .line 162
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    sput p1, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 167
    .line 168
    const-string p1, "mBookAlbumRvse"

    .line 169
    .line 170
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 175
    .line 176
    const-string p1, "mBookAlbumDetail"

    .line 177
    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->D:Z

    .line 183
    .line 184
    const-string p1, "mBookAlbumSingle"

    .line 185
    .line 186
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->E:Z

    .line 191
    .line 192
    const-string p1, "mBookWebUser"

    .line 193
    .line 194
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 199
    .line 200
    const-string p1, "mBookWebFtop"

    .line 201
    .line 202
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->G:Z

    .line 207
    .line 208
    const-string p1, "mBookWebItem"

    .line 209
    .line 210
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    sput p1, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 215
    .line 216
    const-string p1, "mBookWebRvse"

    .line 217
    .line 218
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->I:Z

    .line 223
    .line 224
    const-string p1, "mBookWebDetail"

    .line 225
    .line 226
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->J:Z

    .line 231
    .line 232
    const-string p1, "mBookWebSingle"

    .line 233
    .line 234
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->K:Z

    .line 239
    .line 240
    const-string p1, "mBookHistFold2"

    .line 241
    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    sput p1, Lcom/mycompany/app/pref/PrefList;->L:I

    .line 247
    .line 248
    const-string p1, "mBookHistItem"

    .line 249
    .line 250
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    sput p1, Lcom/mycompany/app/pref/PrefList;->M:I

    .line 255
    .line 256
    const-string p1, "mBookHistRvse"

    .line 257
    .line 258
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->N:Z

    .line 263
    .line 264
    const-string p1, "mBookHistDetail"

    .line 265
    .line 266
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->O:Z

    .line 271
    .line 272
    const-string p1, "mBookHistSingle"

    .line 273
    .line 274
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->P:Z

    .line 279
    .line 280
    const-string p1, "mBookAdsFold"

    .line 281
    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    sput p1, Lcom/mycompany/app/pref/PrefList;->Q:I

    .line 287
    .line 288
    const-string p1, "mBookAdsItem"

    .line 289
    .line 290
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    sput p1, Lcom/mycompany/app/pref/PrefList;->R:I

    .line 295
    .line 296
    const-string p1, "mBookAdsRvse"

    .line 297
    .line 298
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->S:Z

    .line 303
    .line 304
    const-string p1, "mBookAdsDetail"

    .line 305
    .line 306
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->T:Z

    .line 311
    .line 312
    const-string p1, "mBookAdsSingle"

    .line 313
    .line 314
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->U:Z

    .line 319
    .line 320
    const-string p1, "mBookOverFold"

    .line 321
    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    sput p1, Lcom/mycompany/app/pref/PrefList;->V:I

    .line 327
    .line 328
    const-string p1, "mBookOverItem"

    .line 329
    .line 330
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    sput p1, Lcom/mycompany/app/pref/PrefList;->W:I

    .line 335
    .line 336
    const-string p1, "mBookOverRvse"

    .line 337
    .line 338
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->X:Z

    .line 343
    .line 344
    const-string p1, "mBookOverDetail"

    .line 345
    .line 346
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->Y:Z

    .line 351
    .line 352
    const-string p1, "mBookOverSingle"

    .line 353
    .line 354
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->Z:Z

    .line 359
    .line 360
    const-string p1, "mBookPopFold"

    .line 361
    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    sput p1, Lcom/mycompany/app/pref/PrefList;->a0:I

    .line 367
    .line 368
    const-string p1, "mBookPopItem"

    .line 369
    .line 370
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    sput p1, Lcom/mycompany/app/pref/PrefList;->b0:I

    .line 375
    .line 376
    const-string p1, "mBookPopRvse"

    .line 377
    .line 378
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->c0:Z

    .line 383
    .line 384
    const-string p1, "mBookPopDetail"

    .line 385
    .line 386
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->d0:Z

    .line 391
    .line 392
    const-string p1, "mBookPopSingle"

    .line 393
    .line 394
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->e0:Z

    .line 399
    .line 400
    const-string p1, "mBookLinkFold"

    .line 401
    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    sput p1, Lcom/mycompany/app/pref/PrefList;->f0:I

    .line 407
    .line 408
    const-string p1, "mBookLinkItem"

    .line 409
    .line 410
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    sput p1, Lcom/mycompany/app/pref/PrefList;->g0:I

    .line 415
    .line 416
    const-string p1, "mBookLinkRvse"

    .line 417
    .line 418
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->h0:Z

    .line 423
    .line 424
    const-string p1, "mBookLinkDetail"

    .line 425
    .line 426
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->i0:Z

    .line 431
    .line 432
    const-string p1, "mBookLinkSingle"

    .line 433
    .line 434
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->j0:Z

    .line 439
    .line 440
    const-string p1, "mBookBlockFold"

    .line 441
    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    sput p1, Lcom/mycompany/app/pref/PrefList;->k0:I

    .line 447
    .line 448
    const-string p1, "mBookBlockItem"

    .line 449
    .line 450
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    sput p1, Lcom/mycompany/app/pref/PrefList;->l0:I

    .line 455
    .line 456
    const-string p1, "mBookBlockRvse"

    .line 457
    .line 458
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->m0:Z

    .line 463
    .line 464
    const-string p1, "mBookBlockDetail"

    .line 465
    .line 466
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->n0:Z

    .line 471
    .line 472
    const-string p1, "mBookBlockSingle"

    .line 473
    .line 474
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->o0:Z

    .line 479
    .line 480
    const-string p1, "mBookDcFold"

    .line 481
    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    sput p1, Lcom/mycompany/app/pref/PrefList;->p0:I

    .line 487
    .line 488
    const-string p1, "mBookDcItem"

    .line 489
    .line 490
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    sput p1, Lcom/mycompany/app/pref/PrefList;->q0:I

    .line 495
    .line 496
    const-string p1, "mBookDcRvse"

    .line 497
    .line 498
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->r0:Z

    .line 503
    .line 504
    const-string p1, "mBookDcDetail"

    .line 505
    .line 506
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 507
    .line 508
    .line 509
    move-result p1

    .line 510
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->s0:Z

    .line 511
    .line 512
    const-string p1, "mBookDcSingle"

    .line 513
    .line 514
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->t0:Z

    .line 519
    .line 520
    const-string p1, "mBookFilterItem"

    .line 521
    .line 522
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    sput p1, Lcom/mycompany/app/pref/PrefList;->u0:I

    .line 527
    .line 528
    const-string p1, "mBookFilterRvse"

    .line 529
    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->v0:Z

    .line 535
    .line 536
    const-string p1, "mBookFilterDetail"

    .line 537
    .line 538
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->w0:Z

    .line 543
    .line 544
    const-string p1, "mBookFilterSingle"

    .line 545
    .line 546
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->x0:Z

    .line 551
    .line 552
    const-string p1, "mBookJavaFold"

    .line 553
    .line 554
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    sput p1, Lcom/mycompany/app/pref/PrefList;->y0:I

    .line 559
    .line 560
    const-string p1, "mBookJavaItem"

    .line 561
    .line 562
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 563
    .line 564
    .line 565
    move-result p1

    .line 566
    sput p1, Lcom/mycompany/app/pref/PrefList;->z0:I

    .line 567
    .line 568
    const-string p1, "mBookJavaRvse"

    .line 569
    .line 570
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->A0:Z

    .line 575
    .line 576
    const-string p1, "mBookJavaDetail"

    .line 577
    .line 578
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 579
    .line 580
    .line 581
    move-result p1

    .line 582
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->B0:Z

    .line 583
    .line 584
    const-string p1, "mBookJavaSingle"

    .line 585
    .line 586
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->C0:Z

    .line 591
    .line 592
    const-string p1, "mBookScrItem"

    .line 593
    .line 594
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 595
    .line 596
    .line 597
    move-result p1

    .line 598
    sput p1, Lcom/mycompany/app/pref/PrefList;->D0:I

    .line 599
    .line 600
    const-string p1, "mBookScrRvse"

    .line 601
    .line 602
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 603
    .line 604
    .line 605
    move-result p1

    .line 606
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->E0:Z

    .line 607
    .line 608
    const-string p1, "mBookScrDetail"

    .line 609
    .line 610
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->F0:Z

    .line 615
    .line 616
    const-string p1, "mBookScrSingle"

    .line 617
    .line 618
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 619
    .line 620
    .line 621
    move-result p1

    .line 622
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->G0:Z

    .line 623
    .line 624
    const-string p1, "mBookTmemFold"

    .line 625
    .line 626
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 627
    .line 628
    .line 629
    move-result p1

    .line 630
    sput p1, Lcom/mycompany/app/pref/PrefList;->H0:I

    .line 631
    .line 632
    const-string p1, "mBookTmemItem"

    .line 633
    .line 634
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 635
    .line 636
    .line 637
    move-result p1

    .line 638
    sput p1, Lcom/mycompany/app/pref/PrefList;->I0:I

    .line 639
    .line 640
    const-string p1, "mBookTmemRvse"

    .line 641
    .line 642
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->J0:Z

    .line 647
    .line 648
    const-string p1, "mBookTmemDetail"

    .line 649
    .line 650
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->K0:Z

    .line 655
    .line 656
    const-string p1, "mBookTmemSingle"

    .line 657
    .line 658
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 659
    .line 660
    .line 661
    move-result p1

    .line 662
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->L0:Z

    .line 663
    .line 664
    const-string p1, "mBookTransFold"

    .line 665
    .line 666
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    sput p1, Lcom/mycompany/app/pref/PrefList;->M0:I

    .line 671
    .line 672
    const-string p1, "mBookTransItem"

    .line 673
    .line 674
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    sput p1, Lcom/mycompany/app/pref/PrefList;->N0:I

    .line 679
    .line 680
    const-string p1, "mBookTransRvse"

    .line 681
    .line 682
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 683
    .line 684
    .line 685
    move-result p1

    .line 686
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->O0:Z

    .line 687
    .line 688
    const-string p1, "mBookTransDetail"

    .line 689
    .line 690
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->P0:Z

    .line 695
    .line 696
    const-string p1, "mBookTransSingle"

    .line 697
    .line 698
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 699
    .line 700
    .line 701
    move-result p1

    .line 702
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->Q0:Z

    .line 703
    .line 704
    const-string p1, "mBookPmsFold"

    .line 705
    .line 706
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    sput p1, Lcom/mycompany/app/pref/PrefList;->R0:I

    .line 711
    .line 712
    const-string p1, "mBookPmsItem"

    .line 713
    .line 714
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 715
    .line 716
    .line 717
    move-result p1

    .line 718
    sput p1, Lcom/mycompany/app/pref/PrefList;->S0:I

    .line 719
    .line 720
    const-string p1, "mBookPmsRvse"

    .line 721
    .line 722
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 723
    .line 724
    .line 725
    move-result p1

    .line 726
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->T0:Z

    .line 727
    .line 728
    const-string p1, "mBookPmsDetail"

    .line 729
    .line 730
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 731
    .line 732
    .line 733
    move-result p1

    .line 734
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->U0:Z

    .line 735
    .line 736
    const-string p1, "mBookPmsSingle"

    .line 737
    .line 738
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 739
    .line 740
    .line 741
    move-result p1

    .line 742
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->V0:Z

    .line 743
    .line 744
    const-string p1, "mBookUserFold"

    .line 745
    .line 746
    const/4 v3, 0x6

    .line 747
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 748
    .line 749
    .line 750
    move-result p1

    .line 751
    sput p1, Lcom/mycompany/app/pref/PrefList;->W0:I

    .line 752
    .line 753
    const-string p1, "mBookUserItem"

    .line 754
    .line 755
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    sput p1, Lcom/mycompany/app/pref/PrefList;->X0:I

    .line 760
    .line 761
    const-string p1, "mBookUserRvse"

    .line 762
    .line 763
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 764
    .line 765
    .line 766
    move-result p1

    .line 767
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->Y0:Z

    .line 768
    .line 769
    const-string p1, "mBookDownType"

    .line 770
    .line 771
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 772
    .line 773
    .line 774
    move-result p1

    .line 775
    sput p1, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 776
    .line 777
    const-string p1, "mBookDownFold2"

    .line 778
    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 780
    .line 781
    .line 782
    move-result p1

    .line 783
    sput p1, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 784
    .line 785
    const-string p1, "mBookDownItem"

    .line 786
    .line 787
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 788
    .line 789
    .line 790
    move-result p1

    .line 791
    sput p1, Lcom/mycompany/app/pref/PrefList;->b1:I

    .line 792
    .line 793
    const-string p1, "mBookDownRvse"

    .line 794
    .line 795
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 796
    .line 797
    .line 798
    move-result p1

    .line 799
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->c1:Z

    .line 800
    .line 801
    const-string p1, "mBookDownDetail"

    .line 802
    .line 803
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 804
    .line 805
    .line 806
    move-result p1

    .line 807
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->d1:Z

    .line 808
    .line 809
    const-string p1, "mBookDownSingle"

    .line 810
    .line 811
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 812
    .line 813
    .line 814
    move-result p1

    .line 815
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->e1:Z

    .line 816
    .line 817
    const-string p1, "mBookMemoDetail"

    .line 818
    .line 819
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 820
    .line 821
    .line 822
    move-result p1

    .line 823
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->f1:Z

    .line 824
    .line 825
    const-string p1, "mBookMemoSingle"

    .line 826
    .line 827
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 828
    .line 829
    .line 830
    move-result p1

    .line 831
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->g1:Z

    .line 832
    .line 833
    const-string p1, "mGdriveItem"

    .line 834
    .line 835
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 836
    .line 837
    .line 838
    move-result p1

    .line 839
    sput p1, Lcom/mycompany/app/pref/PrefList;->h1:I

    .line 840
    .line 841
    const-string p1, "mGdriveRvse"

    .line 842
    .line 843
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 844
    .line 845
    .line 846
    move-result p1

    .line 847
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->i1:Z

    .line 848
    .line 849
    const-string p1, "mGdriveDetail"

    .line 850
    .line 851
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 852
    .line 853
    .line 854
    move-result p1

    .line 855
    sput-boolean p1, Lcom/mycompany/app/pref/PrefList;->j1:Z

    .line 856
    .line 857
    const-string p1, "mGdriveSingle"

    .line 858
    .line 859
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 860
    .line 861
    .line 862
    move-result p0

    .line 863
    sput-boolean p0, Lcom/mycompany/app/pref/PrefList;->k1:Z

    .line 864
    .line 865
    const-string p0, "PrefList"

    .line 866
    .line 867
    sput-object p0, Lcom/mycompany/app/pref/PrefList;->i:Ljava/lang/String;

    .line 868
    .line 869
    return-void
.end method
