.class public Lcom/mycompany/app/pref/PrefMain;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:I

.field public static m:Z

.field public static n:Z

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:Z

.field public static t:Z

.field public static u:I

.field public static v:Z

.field public static w:I

.field public static x:Z

.field public static y:I

.field public static z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefMain"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefMain;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefMain;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefMain;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefMain;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefMain;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

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
    const-class v1, Lcom/mycompany/app/pref/PrefMain;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

    .line 64
    .line 65
    const-string v3, "PrefMain"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->R:Lcom/mycompany/app/pref/PrefMain;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

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
    const-string p1, "mGuideWall"

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
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->j:Z

    .line 19
    .line 20
    const-string p1, "mAdsSuccess"

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->k:Z

    .line 28
    .line 29
    const-string p1, "mAppRotate"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sput p1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 36
    .line 37
    const-string p1, "mDoubleBack"

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 44
    .line 45
    const-string p1, "mLastNoti"

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 52
    .line 53
    const/4 p1, 0x0

    sput p1, Lcom/mycompany/app/pref/PrefMain;->o:I

    .line 60
    .line 61
    sput p1, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 68
    .line 69
    sput p1, Lcom/mycompany/app/pref/PrefMain;->q:I

    .line 76
    .line 77
    sput p1, Lcom/mycompany/app/pref/PrefMain;->r:I

    .line 84
    .line 85
    const-string p1, "mCastOn"

    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 92
    .line 93
    const-string p1, "mCastLoop"

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 100
    .line 101
    const-string p1, "mStatusHeight"

    .line 102
    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    sput p1, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 108
    .line 109
    const-string p1, "mStatusConfirm"

    .line 110
    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->v:Z

    .line 116
    .line 117
    const-string p1, "mNaviHeight2"

    .line 118
    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    sput p1, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 124
    .line 125
    const-string p1, "mNaviConfirm"

    .line 126
    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    sput-boolean p1, Lcom/mycompany/app/pref/PrefMain;->x:Z

    .line 132
    .line 133
    const-string p1, "mMenuType"

    .line 134
    .line 135
    const/4 v1, 0x4

    .line 136
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sput p1, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 141
    .line 142
    const-string p1, "mMenuPort"

    .line 143
    .line 144
    const/4 v1, 0x5

    .line 145
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    sput p1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 150
    .line 151
    const-string p1, "mMenuPage"

    .line 152
    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    sput p1, Lcom/mycompany/app/pref/PrefMain;->A:I

    .line 158
    .line 159
    const-string p1, "mMenuItems"

    .line 160
    .line 161
    const-string v0, "3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,74,33,40"

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 168
    .line 169
    const-string p1, "mMidItems"

    .line 170
    .line 171
    const-string v0, "21,22,23,24,25"

    .line 172
    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 178
    .line 179
    const-string p1, "mTopItems"

    .line 180
    .line 181
    const-string v0, "63,1,31,35"

    .line 182
    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->D:Ljava/lang/String;

    .line 188
    .line 189
    const-string p1, "mBotItems"

    .line 190
    .line 191
    const-string v0, "26,27,28,29,30,2"

    .line 192
    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->E:Ljava/lang/String;

    .line 198
    .line 199
    const-string p1, "mBotLongs"

    .line 200
    .line 201
    const-string v0, "3,3,44,45,70,65"

    .line 202
    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->F:Ljava/lang/String;

    .line 208
    .line 209
    const-string p1, "mBotSwipe"

    .line 210
    .line 211
    const-string v0, "0,0,0,0,0,0"

    .line 212
    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->G:Ljava/lang/String;

    .line 218
    .line 219
    const-string p1, "mAddrItems2"

    .line 220
    .line 221
    const-string v0, "0,1,2"

    .line 222
    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    sput-object p1, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 228
    .line 229
    const-string p1, "mWidgetBook"

    .line 230
    .line 231
    const-string v0, ""

    .line 232
    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    sput-object p0, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 238
    .line 239
    const-string p0, "PrefMain"

    .line 240
    .line 241
    sput-object p0, Lcom/mycompany/app/pref/PrefMain;->i:Ljava/lang/String;

    .line 242
    .line 243
    return-void
.end method
