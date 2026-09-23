.class public Lcom/mycompany/app/setting/SettingDisplay;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final p2:[I

.field public static final q2:[I

.field public static final r2:[I

.field public static final s2:[I

.field public static final t2:[I

.field public static final v2:[I

.field public static final w2:[I

.field public static final y2:[I

.field public static final z2:[I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/view/MyPopupMenu;

.field public c2:Lcom/mycompany/app/view/MyPopupMenu;

.field public d2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public f2:Lcom/mycompany/app/dialog/DialogSetHead;

.field public g2:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public h2:Lcom/mycompany/app/dialog/DialogSeekBright;

.field public i2:Z

.field public j2:Z

.field public k2:I

.field public l2:Z

.field public m2:I

.field public n2:I

.field public o2:I

.field public u2:Lcom/mycompany/app/dialog/DialogQuickColor;

.field public x2:Lcom/mycompany/app/view/MyPopupMenu;

.field public A2:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sput-object v2, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 8
    .line 9
    sget v2, Lnet/kaki87/soul2/testing/R$string;->theme_light:I

    .line 10
    .line 11
    sget v3, Lnet/kaki87/soul2/testing/R$string;->theme_dark:I

    .line 12
    .line 13
    filled-new-array {v2, v3}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sput-object v2, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    filled-new-array {v1, v2, v0}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->r2:[I

    .line 25
    .line 26
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->site_theme:I

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->user_defined:I

    .line 31
    .line 32
    filled-new-array {v0, v1, v2}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->s2:[I

    .line 37
    .line 38
    sget v0, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 39
    .line 40
    sget v1, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 43
    .line 44
    filled-new-array {v0, v1, v2}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->t2:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->v2:[I

    sget v0, Lnet/kaki87/soul2/testing/R$string;->link:I

    sget v1, Lnet/kaki87/soul2/testing/R$string;->image:I

    sget v2, Lnet/kaki87/soul2/testing/R$string;->last_active:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->w2:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->y2:[I

    sget v0, Lnet/kaki87/soul2/testing/R$string;->preview_url_top:I

    sget v1, Lnet/kaki87/soul2/testing/R$string;->preview_url_bottom:I

    sget v2, Lnet/kaki87/soul2/testing/R$string;->with_buttons:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/mycompany/app/setting/SettingDisplay;->z2:[I

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O0(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 16
    .line 17
    const-string v2, "%"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/support/v4/media/a;->g(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 32
    .line 33
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 34
    .line 35
    const/16 v3, 0xf

    .line 36
    .line 37
    invoke-virtual {v2, v3, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 41
    .line 42
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static P0(Landroid/content/Context;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    sget-object v3, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 11
    .line 12
    aget v3, v3, v2

    .line 13
    .line 14
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 15
    .line 16
    const/16 v5, 0xe

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 22
    .line 23
    const-string v4, "mThemeSys"

    .line 24
    .line 25
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move v4, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v0

    .line 31
    :goto_0
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 36
    .line 37
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 38
    .line 39
    const-string v4, "mThemeUi"

    .line 40
    .line 41
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move v4, v6

    .line 45
    :cond_2
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 46
    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 50
    .line 51
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 52
    .line 53
    const-string v4, "mThemeWeb"

    .line 54
    .line 55
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move v4, v6

    .line 59
    :cond_3
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 60
    .line 61
    if-nez v7, :cond_4

    .line 62
    .line 63
    sput-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 64
    .line 65
    const-string v4, "mThemeImg"

    .line 66
    .line 67
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move v4, v6

    .line 71
    :cond_4
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 72
    .line 73
    const/16 v8, 0x46

    .line 74
    .line 75
    if-eq v7, v8, :cond_5

    .line 76
    .line 77
    sput v8, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 78
    .line 79
    const-string v4, "mImgBright"

    .line 80
    .line 81
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move v4, v6

    .line 85
    :cond_5
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 86
    .line 87
    if-eq v7, v6, :cond_6

    .line 88
    .line 89
    sput v6, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 90
    .line 91
    const-string v4, "mThemeHead"

    .line 92
    .line 93
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move v4, v6

    .line 97
    :cond_6
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 98
    .line 99
    const/16 v8, 0x10

    .line 100
    .line 101
    if-eq v7, v8, :cond_7

    .line 102
    .line 103
    sput v8, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 104
    .line 105
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m7()V

    .line 106
    .line 107
    .line 108
    const-string v4, "mHeadIndex"

    .line 109
    .line 110
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move v4, v6

    .line 114
    :cond_7
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 115
    .line 116
    if-nez v7, :cond_8

    .line 117
    .line 118
    sput-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 119
    .line 120
    const-string v4, "mDarkHome"

    .line 121
    .line 122
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move v4, v6

    .line 126
    :cond_8
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    const/high16 v8, -0x10000

    if-eq v7, v8, :cond_8b

    sput v8, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    const-string v4, "mTabFolderColor"

    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    move v4, v6

    :cond_8b
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->c0:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8c

    sput v8, Lcom/mycompany/app/pref/PrefWeb;->c0:I

    const-string v4, "mLinkImageTab"

    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    move v4, v6

    :cond_8c
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    if-eqz v7, :cond_8d

    const/4 v8, 0x0

    sput v8, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    const-string v4, "mPreviewUrlBar"

    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    move v4, v6

    :cond_8d
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 127
    .line 128
    if-eqz v5, :cond_9

    .line 129
    .line 130
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 131
    .line 132
    const-string v4, "mScrFilUse"

    .line 133
    .line 134
    invoke-static {p0, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move v4, v6

    .line 138
    :cond_9
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 139
    .line 140
    const/16 v7, 0x3c

    .line 141
    .line 142
    if-ne v5, v7, :cond_a

    .line 143
    .line 144
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 145
    .line 146
    if-ne v5, v1, :cond_a

    .line 147
    .line 148
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 149
    .line 150
    invoke-static {v5, v3}, Ljava/lang/Float;->compare(FF)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_b

    .line 155
    .line 156
    :cond_a
    sput v7, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 157
    .line 158
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 159
    .line 160
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 161
    .line 162
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 167
    .line 168
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v3, "mScrFilAlpha"

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v3, "mScrFilColor"

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v3, "mScrFilPos"

    .line 183
    .line 184
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 188
    .line 189
    .line 190
    move v4, v6

    .line 191
    :cond_b
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 192
    .line 193
    const/16 v3, 0x5a

    .line 194
    .line 195
    if-nez v1, :cond_c

    .line 196
    .line 197
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 198
    .line 199
    if-eq v1, v3, :cond_d

    .line 200
    .line 201
    :cond_c
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 202
    .line 203
    sput v3, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 204
    .line 205
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v3, "mUserBright"

    .line 210
    .line 211
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v3, "mBright"

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 220
    .line 221
    .line 222
    move v4, v6

    .line 223
    :cond_d
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 224
    .line 225
    if-eqz v1, :cond_e

    .line 226
    .line 227
    sput v0, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 228
    .line 229
    const-string v1, "mScreenOff"

    .line 230
    .line 231
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    move v4, v6

    .line 235
    :cond_e
    sget v1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 236
    .line 237
    if-eqz v1, :cond_f

    .line 238
    .line 239
    sput v0, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 240
    .line 241
    const/4 v0, 0x5

    .line 242
    const-string v1, "mAppRotate"

    .line 243
    .line 244
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return v6

    .line 248
    :cond_f
    return v4
.end method

.method public static Q0(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "%"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 6
    .line 7
    sget-object v8, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 8
    .line 9
    aget v1, v8, v1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    xor-int/lit8 v14, v1, 0x1

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    sget v3, Lnet/kaki87/soul2/testing/R$string;->site_theme_info:I

    .line 26
    .line 27
    move/from16 v19, v3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move/from16 v19, v9

    .line 31
    .line 32
    :goto_0
    const/4 v10, 0x2

    .line 33
    if-eq v1, v10, :cond_1

    .line 34
    .line 35
    move/from16 v24, v2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move/from16 v24, v9

    .line 39
    .line 40
    :goto_1
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 41
    .line 42
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 43
    .line 44
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 45
    .line 46
    .line 47
    move-result v28

    .line 48
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 58
    .line 59
    const-string v4, "%"

    .line 60
    .line 61
    invoke-static {v3, v4, v1}, Landroid/support/v4/media/a;->g(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move/from16 v33, v9

    .line 66
    .line 67
    :goto_2
    move-object/from16 v32, v1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 77
    .line 78
    move/from16 v33, v3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_3
    sget v1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    sget v1, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 86
    .line 87
    move/from16 v38, v1

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_3
    move/from16 v38, v9

    .line 91
    .line 92
    :goto_4
    new-instance v11, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 98
    .line 99
    invoke-direct {v1, v9, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v4, 0x1

    .line 109
    const-string v2, "UI"

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 119
    .line 120
    sget v2, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 123
    .line 124
    aget v3, v8, v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v3, Lnet/kaki87/soul2/testing/R$string;->web_page_dark_info:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v39, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 133
    .line 134
    sget v41, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 135
    .line 136
    sget-boolean v44, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 137
    .line 138
    const/16 v45, 0x1

    .line 139
    .line 140
    const/16 v43, 0x2

    .line 141
    .line 142
    const/16 v40, 0x3

    .line 143
    .line 144
    const/16 v42, 0x0

    .line 145
    .line 146
    invoke-direct/range {v39 .. v45}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 147
    .line 148
    .line 149
    move-object/from16 v1, v39

    .line 150
    .line 151
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 155
    .line 156
    const/4 v2, 0x4

    .line 157
    invoke-direct {v1, v2, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance v39, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 164
    .line 165
    sget v41, Lnet/kaki87/soul2/testing/R$string;->dark_image:I

    .line 166
    .line 167
    sget v42, Lnet/kaki87/soul2/testing/R$string;->img_brt_info:I

    .line 168
    .line 169
    sget-boolean v44, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 170
    .line 171
    const/16 v43, 0x1

    .line 172
    .line 173
    const/16 v40, 0x5

    .line 174
    .line 175
    invoke-direct/range {v39 .. v45}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v1, v39

    .line 179
    .line 180
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move v1, v9

    .line 184
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 185
    .line 186
    sget v2, Lnet/kaki87/soul2/testing/R$string;->img_bright:I

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 193
    .line 194
    invoke-static {v2}, Lcom/mycompany/app/setting/SettingDisplay;->Q0(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v13

    .line 198
    const/4 v15, 0x0

    .line 199
    const/4 v12, 0x2

    .line 200
    move-object v2, v11

    .line 201
    const/4 v11, 0x6

    .line 202
    invoke-direct/range {v9 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 209
    .line 210
    const/4 v4, 0x7

    .line 211
    invoke-direct {v3, v4, v1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 218
    .line 219
    sget v17, Lnet/kaki87/soul2/testing/R$string;->header_title:I

    .line 220
    .line 221
    sget-object v3, Lcom/mycompany/app/setting/SettingDisplay;->s2:[I

    .line 222
    .line 223
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 224
    .line 225
    aget v18, v3, v4

    .line 226
    .line 227
    const/16 v20, 0x1

    .line 228
    .line 229
    const/16 v16, 0x8

    .line 230
    .line 231
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    new-instance v20, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 238
    .line 239
    sget v22, Lnet/kaki87/soul2/testing/R$string;->header_color:I

    .line 240
    .line 241
    sget v23, Lcom/mycompany/app/pref/PrefWeb;->Q:I

    .line 242
    .line 243
    const/16 v26, 0x0

    .line 244
    .line 245
    const/16 v27, 0x0

    .line 246
    .line 247
    const/16 v21, 0x9

    .line 248
    .line 249
    move/from16 v25, v24

    .line 250
    .line 251
    invoke-direct/range {v20 .. v27}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZII)V

    .line 252
    .line 253
    .line 254
    move-object/from16 v3, v20

    .line 255
    .line 256
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 260
    .line 261
    sget v6, Lnet/kaki87/soul2/testing/R$string;->dark_home:I

    .line 262
    .line 263
    sget v7, Lnet/kaki87/soul2/testing/R$string;->dark_home_info:I

    .line 264
    .line 265
    sget-boolean v9, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 266
    .line 267
    const/4 v10, 0x1

    .line 268
    const/4 v8, 0x0

    .line 269
    const/16 v5, 0xa

    .line 270
    .line 271
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v17, Lnet/kaki87/soul2/testing/R$string;->folder_color:I

    sget v18, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x13

    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v17, Lnet/kaki87/soul2/testing/R$string;->link_image_tab:I

    sget-object v3, Lcom/mycompany/app/setting/SettingDisplay;->w2:[I

    sget v4, Lcom/mycompany/app/pref/PrefWeb;->c0:I

    aget v18, v3, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x14

    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v17, Lnet/kaki87/soul2/testing/R$string;->preview_url_bar:I

    sget-object v3, Lcom/mycompany/app/setting/SettingDisplay;->z2:[I

    sget v4, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    aget v18, v3, v4

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v16, 0x15

    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 278
    .line 279
    const/16 v4, 0xb

    .line 280
    .line 281
    invoke-direct {v3, v4, v1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 288
    .line 289
    sget v7, Lnet/kaki87/soul2/testing/R$string;->screen_filter:I

    .line 290
    .line 291
    sget-object v3, Lcom/mycompany/app/main/MainConst;->X:[I

    .line 292
    .line 293
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 294
    .line 295
    aget v8, v3, v4

    .line 296
    .line 297
    const/4 v9, 0x0

    .line 298
    const/16 v6, 0xc

    .line 299
    .line 300
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    new-instance v25, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 307
    .line 308
    sget v27, Lnet/kaki87/soul2/testing/R$string;->filter_color:I

    .line 309
    .line 310
    const/16 v29, 0x2

    .line 311
    .line 312
    const/16 v30, 0x0

    .line 313
    .line 314
    const/16 v26, 0xd

    .line 315
    .line 316
    invoke-direct/range {v25 .. v30}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v3, v25

    .line 320
    .line 321
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 325
    .line 326
    const/16 v4, 0xe

    .line 327
    .line 328
    invoke-direct {v3, v4, v1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    new-instance v29, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 335
    .line 336
    sget v31, Lnet/kaki87/soul2/testing/R$string;->brightness:I

    .line 337
    .line 338
    const/16 v34, 0x1

    .line 339
    .line 340
    const/16 v30, 0xf

    .line 341
    .line 342
    invoke-direct/range {v29 .. v34}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v3, v29

    .line 346
    .line 347
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 351
    .line 352
    sget v6, Lnet/kaki87/soul2/testing/R$string;->screen_off:I

    .line 353
    .line 354
    sget-object v3, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 355
    .line 356
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 357
    .line 358
    aget v7, v3, v5

    .line 359
    .line 360
    sget-object v3, Lcom/mycompany/app/main/MainConst;->L:[I

    .line 361
    .line 362
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 363
    .line 364
    aget v8, v3, v5

    .line 365
    .line 366
    const/16 v5, 0x10

    .line 367
    .line 368
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    new-instance v34, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 375
    .line 376
    sget v36, Lnet/kaki87/soul2/testing/R$string;->screen_rotate:I

    .line 377
    .line 378
    sget-object v3, Lcom/mycompany/app/setting/SettingDisplay;->t2:[I

    .line 379
    .line 380
    sget v4, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 381
    .line 382
    aget v37, v3, v4

    .line 383
    .line 384
    const/16 v39, 0x2

    .line 385
    .line 386
    const/16 v35, 0x11

    .line 387
    .line 388
    invoke-direct/range {v34 .. v39}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v3, v34

    .line 392
    .line 393
    const/16 v4, 0x12

    .line 394
    .line 395
    invoke-static {v2, v3, v4, v1}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 396
    .line 397
    .line 398
    return-object v2
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->d2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->d2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->f2:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetHead;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->f2:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final V0()V
    .locals 1

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->u2:Lcom/mycompany/app/dialog/DialogQuickColor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickColor;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->u2:Lcom/mycompany/app/dialog/DialogQuickColor;

    :cond_0
    return-void
.end method

.method public final T0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->d2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->f2:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->h2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->u2:Lcom/mycompany/app/dialog/DialogQuickColor;

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final U0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :cond_0
    :goto_0
    move-object v3, p0

    .line 6
    goto :goto_4

    .line 7
    :cond_1
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_2
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const/4 v0, 0x1

    .line 25
    if-ne p2, v0, :cond_4

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_4
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 31
    .line 32
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    move v3, v2

    .line 39
    :goto_2
    const/4 v4, 0x2

    .line 40
    if-ge v3, v4, :cond_6

    .line 41
    .line 42
    sget-object v4, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 43
    .line 44
    aget v4, v4, v3

    .line 45
    .line 46
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 47
    .line 48
    sget-object v7, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 49
    .line 50
    aget v7, v7, v4

    .line 51
    .line 52
    if-ne v1, v4, :cond_5

    .line 53
    .line 54
    move v4, v0

    .line 55
    goto :goto_3

    .line 56
    :cond_5
    move v4, v2

    .line 57
    :goto_3
    invoke-direct {v5, v3, v7, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_6
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 69
    .line 70
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 71
    .line 72
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 73
    .line 74
    new-instance v8, Lcom/mycompany/app/setting/SettingDisplay$7;

    .line 75
    .line 76
    invoke-direct {v8, p0, v1, p2}, Lcom/mycompany/app/setting/SettingDisplay$7;-><init>(Lcom/mycompany/app/setting/SettingDisplay;II)V

    .line 77
    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 84
    .line 85
    iput-object v2, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 86
    .line 87
    :goto_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 11
    .line 12
    :cond_0
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 13
    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 17
    .line 18
    :cond_1
    sget p1, Lcom/mycompany/app/main/MainApp;->M1:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    move v0, v1

    .line 24
    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->X1:Z

    .line 25
    .line 26
    sget p1, Lnet/kaki87/soul2/testing/R$string;->display_title:I

    .line 27
    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 29
    .line 30
    .line 31
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 32
    .line 33
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    new-instance v0, Lcom/mycompany/app/setting/SettingDisplay$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingDisplay$1;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_done

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingDisplay;->R0()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingDisplay;->S0()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->h2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->h2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 76
    .line 77
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 98
    .line 99
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->x2:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz v0, :cond_x2_done

    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->x2:Lcom/mycompany/app/view/MyPopupMenu;

    :cond_x2_done
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay;->A2:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz v0, :cond_done

    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay;->A2:Lcom/mycompany/app/view/MyPopupMenu;

    :cond_done
    return-void
.end method
