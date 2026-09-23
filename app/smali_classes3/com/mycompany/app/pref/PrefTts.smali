.class public Lcom/mycompany/app/pref/PrefTts;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Z

.field public static D:Z

.field public static E:Z

.field public static F:I

.field public static G:I

.field public static H:Z

.field public static I:Z

.field public static J:I

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Ljava/lang/String;

.field public static l:F

.field public static m:F

.field public static n:Z

.field public static o:F

.field public static p:F

.field public static q:F

.field public static r:F

.field public static s:Z

.field public static t:Z

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
    const-string v0, "PrefTts"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefTts;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefTts;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefTts;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefTts;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefTts;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefTts;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

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
    const-class v1, Lcom/mycompany/app/pref/PrefTts;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

    .line 64
    .line 65
    const-string v3, "PrefTts"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Y:Lcom/mycompany/app/pref/PrefTts;

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
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

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
    const-string p1, "mTtsMode"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 19
    .line 20
    const-string p1, "mTtsLang"

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sput-object p1, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "mTtsRate"

    .line 31
    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sput p1, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 39
    .line 40
    const-string p1, "mTtsPitch"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sput p1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 47
    .line 48
    const-string p1, "mTtsIcon"

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->n:Z

    .line 56
    .line 57
    const-string p1, "mTtsLtX"

    .line 58
    .line 59
    const/high16 v3, -0x40800000    # -1.0f

    .line 60
    .line 61
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sput p1, Lcom/mycompany/app/pref/PrefTts;->o:F

    .line 66
    .line 67
    const-string p1, "mTtsRtX"

    .line 68
    .line 69
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    sput p1, Lcom/mycompany/app/pref/PrefTts;->p:F

    .line 74
    .line 75
    const-string p1, "mTtsUpY"

    .line 76
    .line 77
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sput p1, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 82
    .line 83
    const-string p1, "mTtsDnY"

    .line 84
    .line 85
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->e(Ljava/lang/String;F)F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    sput p1, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 90
    .line 91
    const-string p1, "mCheckBack"

    .line 92
    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->s:Z

    .line 98
    .line 99
    const-string p1, "mCheckEle3"

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 106
    .line 107
    const-string p1, "mCheckOver2"

    .line 108
    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    sput p1, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 114
    .line 115
    const-string p1, "mAutoGroup"

    .line 116
    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->v:Z

    .line 122
    .line 123
    const-string p1, "mAppKeypad"

    .line 124
    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 130
    .line 131
    const-string p1, "mSkipKeypad"

    .line 132
    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->x:Z

    .line 138
    .line 139
    const-string p1, "mVpnMode"

    .line 140
    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 146
    .line 147
    const-string p1, "mVpnServer"

    .line 148
    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    sput p1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 154
    .line 155
    const-string p1, "mVpnUrl"

    .line 156
    .line 157
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    sput-object p1, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 162
    .line 163
    const-string p1, "mVpnIps"

    .line 164
    .line 165
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    sput-object p1, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 170
    .line 171
    const-string p1, "mVpnGuide"

    .line 172
    .line 173
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->C:Z

    .line 178
    .line 179
    const-string p1, "mTabLast"

    .line 180
    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->D:Z

    .line 186
    .line 187
    const-string p1, "mLastExit"

    .line 188
    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 194
    .line 195
    const-string p1, "mWebLand1"

    .line 196
    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    sput p1, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 202
    .line 203
    const-string p1, "mWebLand2"

    .line 204
    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    sput p1, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 210
    .line 211
    const-string p1, "mHandMode"

    .line 212
    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 218
    .line 219
    const-string p1, "mHandNoti"

    .line 220
    .line 221
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->I:Z

    .line 226
    .line 227
    const-string p1, "mHandTop2"

    .line 228
    .line 229
    const/16 v0, 0x3c

    .line 230
    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    sput p0, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 236
    .line 237
    const-string p0, "PrefTts"

    .line 238
    .line 239
    sput-object p0, Lcom/mycompany/app/pref/PrefTts;->i:Ljava/lang/String;

    .line 240
    .line 241
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
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

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
    const-string v0, "mTtsLtX"

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefTts;->o:F

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string v0, "mTtsRtX"

    .line 20
    .line 21
    sget v1, Lcom/mycompany/app/pref/PrefTts;->p:F

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 24
    .line 25
    .line 26
    const-string v0, "mTtsUpY"

    .line 27
    .line 28
    sget v1, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 31
    .line 32
    .line 33
    const-string v0, "mTtsDnY"

    .line 34
    .line 35
    sget v1, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
