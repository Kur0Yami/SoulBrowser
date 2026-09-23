.class public Lcom/mycompany/app/pref/PrefZtwo;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:Z

.field public static C:I

.field public static D:Z

.field public static E:Z

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:Z

.field public static K:Z

.field public static L:Ljava/lang/String;

.field public static M:I

.field public static N:I

.field public static O:Z

.field public static P:Ljava/lang/String;

.field public static Q:I

.field public static R:Ljava/lang/String;

.field public static S:I

.field public static T:Z

.field public static U:Z

.field public static V:Z

.field public static W:F

.field public static X:Z

.field public static Y:Z

.field public static Z:I

.field public static a0:Z

.field public static b0:I

.field public static c0:I

.field public static d0:I

.field public static e0:Z

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:Ljava/lang/String;

.field public static l:Z

.field public static m:I

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:I

.field public static q:Ljava/lang/String;

.field public static r:Z

.field public static s:Z

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:Z

.field public static z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefZtwo"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefZtwo;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefZtwo;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefZtwo;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefZtwo;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefZtwo;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

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
    const-class v1, Lcom/mycompany/app/pref/PrefZtwo;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

    .line 64
    .line 65
    const-string v3, "PrefZtwo"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->d0:Lcom/mycompany/app/pref/PrefZtwo;

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
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

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
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->b:Z

    .line 12
    .line 13
    xor-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    const-string v1, "mSearchType2"

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 23
    .line 24
    const-string v1, "mSearchUser"

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "mSearchForm2"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->l:Z

    .line 42
    .line 43
    const-string v1, "mSearchColor"

    .line 44
    .line 45
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 50
    .line 51
    const-string v1, "mSoulAgent"

    .line 52
    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sput-object v1, Lcom/mycompany/app/pref/PrefZtwo;->n:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "mSoulAgName"

    .line 60
    .line 61
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/mycompany/app/pref/PrefZtwo;->o:Ljava/lang/String;

    .line 66
    .line 67
    const-string v1, "mAgentType"

    .line 68
    .line 69
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 74
    .line 75
    const-string v1, "mAgentUser"

    .line 76
    .line 77
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sput-object v1, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 82
    .line 83
    const-string v1, "mTabIndi"

    .line 84
    .line 85
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->r:Z

    .line 90
    .line 91
    const-string v1, "mTabLoop"

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    invoke-virtual {p0, v1, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->s:Z

    .line 99
    .line 100
    const-string v1, "mSenseTop2"

    .line 101
    .line 102
    const/16 v5, 0x64

    .line 103
    .line 104
    invoke-virtual {p0, v1, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 109
    .line 110
    const-string v1, "mSenseBot2"

    .line 111
    .line 112
    invoke-virtual {p0, v1, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 117
    .line 118
    const-string v1, "mSenseLeft2"

    .line 119
    .line 120
    invoke-virtual {p0, v1, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 125
    .line 126
    const-string v1, "mSenseRight2"

    .line 127
    .line 128
    invoke-virtual {p0, v1, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 133
    .line 134
    const-string v1, "mSenseCenter2"

    .line 135
    .line 136
    invoke-virtual {p0, v1, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 141
    .line 142
    const-string v1, "mQuickDown2"

    .line 143
    .line 144
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 149
    .line 150
    const-string v1, "mTabDown2"

    .line 151
    .line 152
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->z:Z

    .line 157
    .line 158
    const-string v1, "mWebScale"

    .line 159
    .line 160
    invoke-virtual {p0, v1, v4}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 165
    .line 166
    const-string v1, "mAutoComp"

    .line 167
    .line 168
    invoke-virtual {p0, v1, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 173
    .line 174
    const-string v1, "mTabOpen2"

    .line 175
    .line 176
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 181
    .line 182
    const-string v1, "mScrollAnim"

    .line 183
    .line 184
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->D:Z

    .line 189
    .line 190
    const-string v1, "mAddPage"

    .line 191
    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 197
    .line 198
    const-string v0, "mTabLimit"

    .line 199
    .line 200
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 205
    .line 206
    const-string v0, "mTabMemory"

    .line 207
    .line 208
    const/4 v1, 0x5

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 214
    .line 215
    const-string v0, "mPageMemory"

    .line 216
    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 222
    .line 223
    const-string v0, "mDayMemory"

    .line 224
    .line 225
    const/4 v5, 0x2

    .line 226
    invoke-virtual {p0, v0, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 231
    .line 232
    const-string v0, "mNewsUse"

    .line 233
    .line 234
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 239
    .line 240
    const-string v0, "mNewsAllow"

    .line 241
    .line 242
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 247
    .line 248
    const-string v0, "mNewsUrl"

    .line 249
    .line 250
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sput-object v0, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 255
    .line 256
    const-string v0, "mNewsOpen"

    .line 257
    .line 258
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 263
    .line 264
    const-string v0, "mNewsLang2"

    .line 265
    .line 266
    const/4 v5, -0x1

    .line 267
    invoke-virtual {p0, v0, v5}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 272
    .line 273
    const-string v0, "mNewsTitle"

    .line 274
    .line 275
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 280
    .line 281
    const-string v0, "mNewsPick"

    .line 282
    .line 283
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sput-object v0, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 288
    .line 289
    const-string v0, "mNewsTopic"

    .line 290
    .line 291
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 296
    .line 297
    const-string v0, "mNewsSearch"

    .line 298
    .line 299
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sput-object v0, Lcom/mycompany/app/pref/PrefZtwo;->R:Ljava/lang/String;

    .line 304
    .line 305
    const-string v0, "mReadMode"

    .line 306
    .line 307
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 312
    .line 313
    const-string v0, "mAutoPlay"

    .line 314
    .line 315
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->T:Z

    .line 320
    .line 321
    const-string v0, "mYouUnmute"

    .line 322
    .line 323
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->U:Z

    .line 328
    .line 329
    const-string v0, "mYouSpdSave"

    .line 330
    .line 331
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->V:Z

    .line 336
    .line 337
    const-string v0, "mYouSpdRate"

    .line 338
    .line 339
    const/high16 v2, 0x3f800000    # 1.0f

    .line 340
    .line 341
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 346
    .line 347
    const-string v0, "mLocNoti"

    .line 348
    .line 349
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->X:Z

    .line 354
    .line 355
    const-string v0, "mLocTrans"

    .line 356
    .line 357
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 362
    .line 363
    const-string v0, "mRecentLimit"

    .line 364
    .line 365
    const/16 v2, 0x14

    .line 366
    .line 367
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 372
    .line 373
    const-string v0, "mRecentSecret"

    .line 374
    .line 375
    invoke-virtual {p0, v0, v3}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 380
    .line 381
    const-string v0, "mRecentLocal"

    .line 382
    .line 383
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 388
    .line 389
    const-string v0, "mRecentTitle"

    .line 390
    .line 391
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 396
    .line 397
    const-string v0, "mRecentTrans"

    .line 398
    .line 399
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 404
    .line 405
    const-string v0, "mNotiMenu"

    .line 406
    .line 407
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 408
    .line 409
    .line 410
    move-result p0

    .line 411
    sput-boolean p0, Lcom/mycompany/app/pref/PrefZtwo;->e0:Z

    .line 412
    .line 413
    if-eqz p1, :cond_2

    .line 414
    .line 415
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 416
    .line 417
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 418
    .line 419
    :cond_2
    const-string p0, "PrefZtwo"

    .line 420
    .line 421
    sput-object p0, Lcom/mycompany/app/pref/PrefZtwo;->i:Ljava/lang/String;

    .line 422
    .line 423
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
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

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
    const-string v0, "mAgentType"

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "mAgentUser"

    .line 20
    .line 21
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

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
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

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
    const-string v0, "mNewsTopic"

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "mNewsSearch"

    .line 20
    .line 21
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->R:Ljava/lang/String;

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

.method public static v(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->l:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->l:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "%s"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->l:Z

    .line 34
    .line 35
    :goto_0
    invoke-static {p0, v2}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :cond_3
    const-string v0, "mSearchType2"

    .line 43
    .line 44
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 45
    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "mSearchUser"

    .line 50
    .line 51
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "mSearchForm2"

    .line 57
    .line 58
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->l:Z

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "mSearchColor"

    .line 64
    .line 65
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 66
    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
