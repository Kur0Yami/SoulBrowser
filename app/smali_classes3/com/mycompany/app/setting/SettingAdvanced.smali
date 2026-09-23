.class public Lcom/mycompany/app/setting/SettingAdvanced;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic c2:I


# instance fields
.field public X1:Z

.field public Y1:Ljava/lang/String;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/dialog/DialogListBook;

.field public b2:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O0(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->q:Z

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->q:Z

    .line 12
    .line 13
    const-string v1, "mSaveData"

    .line 14
    .line 15
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->v:Z

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->v:Z

    .line 26
    .line 27
    const/16 v1, 0xf

    .line 28
    .line 29
    const-string v4, "mPreRaster"

    .line 30
    .line 31
    invoke-static {p0, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move v1, v3

    .line 35
    :cond_2
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    sput-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 40
    .line 41
    const-string v1, "mBlockAmp"

    .line 42
    .line 43
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move v1, v3

    .line 47
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 48
    .line 49
    const/16 v5, 0xe

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 54
    .line 55
    const-string v1, "mCookieType"

    .line 56
    .line 57
    invoke-static {p0, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/mycompany/app/main/MainApp;->M(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    move v1, v3

    .line 64
    :cond_4
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 65
    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 69
    .line 70
    const-string v1, "mThirdType"

    .line 71
    .line 72
    invoke-static {p0, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move v1, v3

    .line 76
    :cond_5
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 77
    .line 78
    if-nez v4, :cond_6

    .line 79
    .line 80
    sput-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 81
    .line 82
    const-string v1, "mEnableJs"

    .line 83
    .line 84
    invoke-static {p0, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move v1, v3

    .line 88
    :cond_6
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->p:Z

    .line 89
    .line 90
    if-eqz v4, :cond_7

    .line 91
    .line 92
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->p:Z

    .line 93
    .line 94
    const-string v1, "mOnlyHttps2"

    .line 95
    .line 96
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move v1, v3

    .line 100
    :cond_7
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->s:Z

    .line 101
    .line 102
    if-eqz v4, :cond_8

    .line 103
    .line 104
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->s:Z

    .line 105
    .line 106
    const-string v1, "mBlockSsl"

    .line 107
    .line 108
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move v1, v3

    .line 112
    :cond_8
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->Q:Z

    if-eqz v4, :cond_8a

    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->Q:Z

    const-string v1, "mFreshTabRestore"

    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    move v1, v3

    :cond_8a
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->R:Z

    if-eqz v4, :cond_8b

    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->R:Z

    const-string v1, "mErudaPreload"

    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    move v1, v3

    :cond_8b
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 113
    .line 114
    if-eqz v4, :cond_9

    .line 115
    .line 116
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 117
    .line 118
    const-string v0, "mDebugMode"

    .line 119
    .line 120
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return v3

    .line 124
    :cond_9
    return v1
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lnet/kaki87/soul2/testing/R$string;->accept_cookie_info_1:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$string;->accept_cookie_info_2:I

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    sget v4, Lnet/kaki87/soul2/testing/R$string;->java_script_info:I

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget v2, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v10, 0x0

    .line 74
    invoke-direct {v2, v10, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 81
    .line 82
    sget v17, Lnet/kaki87/soul2/testing/R$string;->save_data:I

    .line 83
    .line 84
    sget v18, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 85
    .line 86
    sget-boolean v20, Lcom/mycompany/app/pref/PrefPdf;->q:Z

    .line 87
    .line 88
    const/16 v21, 0x1

    .line 89
    .line 90
    const/16 v19, 0x1

    .line 91
    .line 92
    const/16 v16, 0x1

    .line 93
    .line 94
    invoke-direct/range {v15 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 101
    .line 102
    sget v18, Lnet/kaki87/soul2/testing/R$string;->pre_raster:I

    .line 103
    .line 104
    sget v19, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 105
    .line 106
    sget-boolean v21, Lcom/mycompany/app/pref/PrefZone;->v:Z

    .line 107
    .line 108
    const/16 v22, 0x1

    .line 109
    .line 110
    const/16 v20, 0x0

    .line 111
    .line 112
    const/16 v17, 0x2

    .line 113
    .line 114
    invoke-direct/range {v16 .. v22}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v2, v16

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 123
    .line 124
    sget v17, Lnet/kaki87/soul2/testing/R$string;->block_amp:I

    .line 125
    .line 126
    sget v18, Lnet/kaki87/soul2/testing/R$string;->block_amp_info:I

    .line 127
    .line 128
    sget-boolean v20, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 129
    .line 130
    const/16 v21, 0x1

    .line 131
    .line 132
    const/16 v19, 0x0

    .line 133
    .line 134
    const/16 v16, 0x3

    .line 135
    .line 136
    invoke-direct/range {v15 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v17, Lnet/kaki87/soul2/testing/R$string;->reload_saved_tabs:I

    sget v18, Lnet/kaki87/soul2/testing/R$string;->reload_saved_tabs_info:I

    sget-boolean v20, Lcom/mycompany/app/pref/PrefPdf;->Q:Z

    const/16 v21, 0x1

    const/16 v19, 0x2

    const/16 v16, 0x10

    invoke-direct/range {v15 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 143
    .line 144
    const/4 v3, 0x4

    .line 145
    invoke-direct {v2, v3, v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 152
    .line 153
    sget v6, Lnet/kaki87/soul2/testing/R$string;->accept_cookie:I

    .line 154
    .line 155
    sget-object v2, Lcom/mycompany/app/main/MainConst;->R:[I

    .line 156
    .line 157
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 158
    .line 159
    aget v7, v2, v3

    .line 160
    .line 161
    const/4 v9, 0x1

    .line 162
    const/4 v5, 0x5

    .line 163
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 170
    .line 171
    sget v17, Lnet/kaki87/soul2/testing/R$string;->third_cookie:I

    .line 172
    .line 173
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 174
    .line 175
    aget v18, v2, v3

    .line 176
    .line 177
    const/16 v19, 0x0

    .line 178
    .line 179
    const/16 v20, 0x2

    .line 180
    .line 181
    const/16 v16, 0x6

    .line 182
    .line 183
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 190
    .line 191
    const/4 v3, 0x7

    .line 192
    invoke-direct {v2, v3, v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 199
    .line 200
    sget v11, Lnet/kaki87/soul2/testing/R$string;->java_script:I

    .line 201
    .line 202
    sget-boolean v15, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 203
    .line 204
    const/4 v12, 0x1

    .line 205
    const/4 v13, 0x0

    .line 206
    move v2, v10

    .line 207
    const/16 v10, 0x8

    .line 208
    .line 209
    invoke-direct/range {v9 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 216
    .line 217
    sget v5, Lnet/kaki87/soul2/testing/R$string;->js_black:I

    .line 218
    .line 219
    sget v7, Lnet/kaki87/soul2/testing/R$string;->js_black_info:I

    .line 220
    .line 221
    const/4 v8, 0x2

    .line 222
    const/16 v4, 0x9

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 232
    .line 233
    const/16 v4, 0xa

    .line 234
    .line 235
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 242
    .line 243
    sget v7, Lnet/kaki87/soul2/testing/R$string;->only_https:I

    .line 244
    .line 245
    sget v8, Lnet/kaki87/soul2/testing/R$string;->only_https_info:I

    .line 246
    .line 247
    sget-boolean v10, Lcom/mycompany/app/pref/PrefPdf;->p:Z

    .line 248
    .line 249
    const/4 v11, 0x1

    .line 250
    const/4 v9, 0x1

    .line 251
    const/16 v6, 0xb

    .line 252
    .line 253
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 260
    .line 261
    sget v8, Lnet/kaki87/soul2/testing/R$string;->block_ssl:I

    .line 262
    .line 263
    sget v9, Lnet/kaki87/soul2/testing/R$string;->block_ssl_info:I

    .line 264
    .line 265
    sget-boolean v11, Lcom/mycompany/app/pref/PrefPdf;->s:Z

    .line 266
    .line 267
    const/4 v10, 0x2

    .line 268
    const/16 v7, 0xc

    .line 269
    .line 270
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 277
    .line 278
    const/16 v4, 0xd

    .line 279
    .line 280
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 287
    .line 288
    sget v7, Lnet/kaki87/soul2/testing/R$string;->debug_mode:I

    .line 289
    .line 290
    sget v8, Lnet/kaki87/soul2/testing/R$string;->debug_mode_info:I

    .line 291
    .line 292
    sget-boolean v10, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 293
    .line 294
    const/4 v11, 0x1

    .line 295
    const/4 v9, 0x1

    .line 296
    const/16 v6, 0xe

    .line 297
    .line 298
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v7, Lnet/kaki87/soul2/testing/R$string;->eruda_preload:I

    sget v8, Lnet/kaki87/soul2/testing/R$string;->eruda_preload_info:I

    sget-boolean v10, Lcom/mycompany/app/pref/PrefPdf;->R:Z

    const/4 v11, 0x1

    const/4 v9, 0x2

    const/16 v6, 0x11

    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 299
    .line 300
    .line 301
    const/16 v3, 0xf

    .line 302
    .line 303
    invoke-static {v1, v5, v3, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 304
    .line 305
    .line 306
    return-object v1
.end method

.method public final P0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :cond_0
    :goto_0
    move-object v2, p0

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    const/4 v0, 0x6

    .line 25
    if-ne p2, v0, :cond_4

    .line 26
    .line 27
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_4
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 31
    .line 32
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/mycompany/app/main/MainConst;->Q:[I

    .line 38
    .line 39
    array-length v1, v1

    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_2
    if-ge v3, v1, :cond_6

    .line 43
    .line 44
    sget-object v4, Lcom/mycompany/app/main/MainConst;->Q:[I

    .line 45
    .line 46
    aget v4, v4, v3

    .line 47
    .line 48
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 49
    .line 50
    sget-object v7, Lcom/mycompany/app/main/MainConst;->R:[I

    .line 51
    .line 52
    aget v7, v7, v4

    .line 53
    .line 54
    if-ne v0, v4, :cond_5

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_3

    .line 58
    :cond_5
    move v4, v2

    .line 59
    :goto_3
    invoke-direct {v6, v3, v7, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 71
    .line 72
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 73
    .line 74
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    new-instance v7, Lcom/mycompany/app/setting/SettingAdvanced$5;

    .line 77
    .line 78
    invoke-direct {v7, p0, v1, p2}, Lcom/mycompany/app/setting/SettingAdvanced$5;-><init>(Lcom/mycompany/app/setting/SettingAdvanced;II)V

    .line 79
    .line 80
    .line 81
    move-object v2, p0

    .line 82
    move-object v1, v0

    .line 83
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 89
    .line 90
    :goto_4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListBook;->q(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingAdvanced;->X1:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "EXTRA_PATH"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->Y1:Ljava/lang/String;

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->advanced:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 23
    .line 24
    .line 25
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingAdvanced$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingAdvanced$1;-><init>(Lcom/mycompany/app/setting/SettingAdvanced;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->Y1:Ljava/lang/String;

    .line 6
    .line 7
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
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->X1:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingAdvanced;->X1:Z

    .line 18
    .line 19
    return-void
.end method
