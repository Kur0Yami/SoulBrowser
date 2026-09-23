.class public Lcom/mycompany/app/pref/PrefWeb;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:I

.field public static D:I

.field public static E:Z

.field public static F:I

.field public static G:I

.field public static H:Z

.field public static I:Z

.field public static J:Z

.field public static K:I

.field public static L:I

.field public static M:Z

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static R:I

.field public static S:Z

.field public static T:Z

.field public static U:Z

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:Z

.field public static a0:I

.field public static b0:I

.field public static c0:I

.field public static d0:I

.field public static e0:Ljava/lang/String;

.field public static f0:I

.field public static g0:Ljava/lang/String;

.field public static h0:I

.field public static i0:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:I

.field public static o:Z

.field public static p:Z

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:I

.field public static y:Z

.field public static z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefWeb"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefWeb;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefWeb;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefWeb;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefWeb;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefWeb;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

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
    const-class v1, Lcom/mycompany/app/pref/PrefWeb;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

    .line 64
    .line 65
    const-string v3, "PrefWeb"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->a0:Lcom/mycompany/app/pref/PrefWeb;

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
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

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
    const-string p1, "mDeskLock"

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
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 19
    .line 20
    const-string p1, "mHomePage3"

    .line 21
    .line 22
    const-string v1, "file:///android_asset/shortcut.html"

    .line 23
    .line 24
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "mStartPage"

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 39
    .line 40
    const-string p1, "mTabPage"

    .line 41
    .line 42
    const-string v1, "..home_link"

    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 49
    .line 50
    const-string p1, "mHistoryTime"

    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 58
    .line 59
    const-string p1, "mAdsBlock"

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 67
    .line 68
    const-string p1, "mAreaBlock"

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 75
    .line 76
    const-string p1, "mPopBlock2"

    .line 77
    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 83
    .line 84
    const-string p1, "mDataDelete2"

    .line 85
    .line 86
    const/16 v2, 0x1e

    .line 87
    .line 88
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 93
    .line 94
    const-string p1, "mExitDelete2"

    .line 95
    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 101
    .line 102
    const-string p1, "mShowStatus"

    .line 103
    .line 104
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 109
    .line 110
    const-string p1, "mShowNavi"

    .line 111
    .line 112
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 117
    .line 118
    const-string p1, "mFixTop"

    .line 119
    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 125
    .line 126
    const-string p1, "mFixBot"

    .line 127
    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 133
    .line 134
    const-string p1, "mTabBar2"

    .line 135
    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 141
    .line 142
    const-string p1, "mTabAccent"

    .line 143
    .line 144
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 149
    .line 150
    const-string p1, "mTabColor"

    .line 151
    .line 152
    const/4 v3, 0x5

    .line 153
    invoke-virtual {p0, p1, v3}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 158
    .line 159
    const-string p1, "mTabRestore"

    .line 160
    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 166
    .line 167
    const-string p1, "mTabKeypad"

    .line 168
    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->B:Z

    .line 174
    .line 175
    const-string p1, "mTabSwipeUp3"

    .line 176
    .line 177
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 182
    .line 183
    const-string p1, "mTabSwipeDn3"

    .line 184
    .line 185
    const/16 v2, 0x26

    .line 186
    .line 187
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 192
    .line 193
    const-string p1, "mTabMulti"

    .line 194
    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->E:Z

    .line 200
    .line 201
    const-string p1, "mTabBarMenu"

    .line 202
    .line 203
    const/16 v2, 0x1fff

    .line 204
    .line 205
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    const/16 v2, 0x1ff

    if-ne p1, v2, :cond_tab_menu_3ff

    const/16 p1, 0x1fff

    goto :cond_tab_menu

    :cond_tab_menu_3ff
    const/16 v2, 0x3ff

    if-ne p1, v2, :cond_tab_menu_7ff

    const/16 p1, 0x1fff

    goto :cond_tab_menu

    :cond_tab_menu_7ff
    const/16 v2, 0x7ff

    if-ne p1, v2, :cond_tab_menu

    const/16 p1, 0x1fff

    :cond_tab_menu
    .line 209
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->a0:I

    const-string p1, "mTabFolderColor"

    const/high16 v2, -0x10000

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    const-string p1, "mLinkImageTab"

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefWeb;->c0:I

    const-string p1, "mPreviewUrlBar"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    const-string p1, "mTabBarOrder"

    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->e0:Ljava/lang/String;

    const-string p1, "mUrlBarMenu"

    const/16 v2, 0xff

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefWeb;->f0:I

    const-string p1, "mUrlBarOrder"

    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->g0:Ljava/lang/String;

    const-string p1, "mTextSelectMenu"

    const/16 v2, 0x7f

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/mycompany/app/pref/PrefWeb;->h0:I

    const-string p1, "mTextSelectOrder"

    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->i0:Ljava/lang/String;

    .line 210
    .line 211
    const-string p1, "mCookieType"

    .line 202
    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 208
    .line 209
    const-string p1, "mThirdType"

    .line 210
    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 216
    .line 217
    const-string p1, "mEnableJs"

    .line 218
    .line 219
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 224
    .line 225
    const-string p1, "mExitNoti"

    .line 226
    .line 227
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->I:Z

    .line 232
    .line 233
    const-string p1, "mThemeSys"

    .line 234
    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 240
    .line 241
    const-string p1, "mThemeUi"

    .line 242
    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 248
    .line 249
    const-string p1, "mThemeWeb"

    .line 250
    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 256
    .line 257
    const-string p1, "mThemeImg"

    .line 258
    .line 259
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 264
    .line 265
    const-string p1, "mImgBright"

    .line 266
    .line 267
    const/16 v2, 0x46

    .line 268
    .line 269
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 274
    .line 275
    const-string p1, "mThemeHead"

    .line 276
    .line 277
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 282
    .line 283
    const-string p1, "mHeadIndex"

    .line 284
    .line 285
    const/16 v2, 0x10

    .line 286
    .line 287
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 292
    .line 293
    const-string p1, "mQuickBack"

    .line 294
    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->S:Z

    .line 300
    .line 301
    const-string p1, "mQckBckSec"

    .line 302
    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->T:Z

    .line 308
    .line 309
    const-string p1, "mDarkHome"

    .line 310
    .line 311
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 316
    .line 317
    const-string p1, "mSugEng"

    .line 318
    .line 319
    const/4 v1, -0x1

    .line 320
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 325
    .line 326
    const-string p1, "mSugType3"

    .line 327
    .line 328
    const/16 v1, 0xe

    .line 329
    .line 330
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 335
    .line 336
    const-string p1, "mDownLimit"

    .line 337
    .line 338
    const/4 v1, 0x2

    .line 339
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 344
    .line 345
    const-string p1, "mDownBack"

    .line 346
    .line 347
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 352
    .line 353
    const-string p1, "mCheckDown"

    .line 354
    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 356
    .line 357
    .line 358
    move-result p0

    .line 359
    sput-boolean p0, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 360
    .line 361
    sget p0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 362
    .line 363
    if-ne p0, v1, :cond_2

    .line 364
    .line 365
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 366
    .line 367
    :cond_2
    sget p0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 368
    .line 369
    if-ne p0, v1, :cond_3

    .line 370
    .line 371
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 372
    .line 373
    :cond_3
    sget p0, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 374
    .line 375
    if-ne p0, v1, :cond_4

    .line 376
    .line 377
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m7()V

    .line 378
    .line 379
    .line 380
    :cond_4
    const-string p0, "PrefWeb"

    .line 381
    .line 382
    sput-object p0, Lcom/mycompany/app/pref/PrefWeb;->i:Ljava/lang/String;

    .line 383
    .line 384
    return-void
.end method

.method public static t(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

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
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->T:Z

    .line 17
    .line 18
    const-string v0, "mQckBckSec"

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->S:Z

    .line 25
    .line 26
    const-string v0, "mQuickBack"

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
