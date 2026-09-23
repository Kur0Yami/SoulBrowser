.class public Lcom/mycompany/app/setting/SettingDown;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic j2:I


# instance fields
.field public X1:Ljava/lang/String;

.field public Y1:Ljava/lang/String;

.field public Z1:Ljava/lang/String;

.field public a2:Z

.field public b2:Ljava/util/ArrayList;

.field public c2:Ljava/lang/String;

.field public d2:Lcom/mycompany/app/view/MyPopupMenu;

.field public e2:Lcom/mycompany/app/view/MyPopupMenu;

.field public f2:Lcom/mycompany/app/view/MyPopupMenu;

.field public g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public h2:Lcom/mycompany/app/dialog/DialogSetDown;

.field public i2:Lcom/mycompany/app/dialog/DialogConfirm;


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
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    :cond_1
    const-string v1, ""

    .line 31
    .line 32
    sput-object v1, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 33
    .line 34
    sput-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 35
    .line 36
    sput-object v1, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "mDappName2"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "mDappPkg2"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "mDappCls2"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 58
    .line 59
    .line 60
    move v0, v2

    .line 61
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 62
    .line 63
    const/16 v3, 0xf

    .line 64
    .line 65
    const/16 v4, 0xa

    .line 66
    .line 67
    if-eq v1, v4, :cond_3

    .line 68
    .line 69
    sput v4, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 70
    .line 71
    const-string v0, "mMultiDown"

    .line 72
    .line 73
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move v0, v2

    .line 77
    :cond_3
    sget v1, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 78
    .line 79
    if-eq v1, v4, :cond_4

    .line 80
    .line 81
    sput v4, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 82
    .line 83
    const-string v0, "mRetryDown"

    .line 84
    .line 85
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move v0, v2

    .line 89
    :cond_4
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 90
    .line 91
    const/16 v4, 0xe

    .line 92
    .line 93
    const/4 v5, 0x2

    .line 94
    if-eq v1, v5, :cond_5

    .line 95
    .line 96
    sput v5, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 97
    .line 98
    const-string v0, "mDownLimit"

    .line 99
    .line 100
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move v0, v2

    .line 104
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 105
    .line 106
    if-eq v1, v5, :cond_6

    .line 107
    .line 108
    sput v5, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 109
    .line 110
    const-string v0, "mDownBack"

    .line 111
    .line 112
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move v0, v2

    .line 116
    :cond_6
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 117
    .line 118
    if-nez v1, :cond_7

    .line 119
    .line 120
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 121
    .line 122
    const-string v0, "mNotiDown"

    .line 123
    .line 124
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v2

    .line 128
    :cond_7
    return v0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 12
    .line 13
    :goto_0
    move-object v5, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_expire_1:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "\n"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget v3, Lnet/kaki87/soul2/testing/R$string;->down_limit_info:I

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$string;->down_back_info_1:I

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_back_info_2:I

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    const/4 v14, 0x0

    .line 93
    invoke-direct {v2, v14, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 100
    .line 101
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_manager:I

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x1

    .line 105
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 112
    .line 113
    sget v5, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 114
    .line 115
    iget-object v6, v0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 116
    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x2

    .line 119
    const/4 v4, 0x2

    .line 120
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 127
    .line 128
    const/4 v3, 0x3

    .line 129
    invoke-direct {v2, v3, v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 136
    .line 137
    sget v6, Lnet/kaki87/soul2/testing/R$string;->fast_down:I

    .line 138
    .line 139
    sget v2, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 140
    .line 141
    const-string v3, "x"

    .line 142
    .line 143
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    sget v8, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 148
    .line 149
    const/4 v9, 0x1

    .line 150
    const/4 v5, 0x4

    .line 151
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 158
    .line 159
    sget v18, Lnet/kaki87/soul2/testing/R$string;->retry_count:I

    .line 160
    .line 161
    sget v2, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 162
    .line 163
    const-string v3, ""

    .line 164
    .line 165
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v19

    .line 169
    sget v20, Lnet/kaki87/soul2/testing/R$string;->retry_count_info:I

    .line 170
    .line 171
    const/16 v21, 0x0

    .line 172
    .line 173
    const/16 v17, 0x5

    .line 174
    .line 175
    invoke-direct/range {v16 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v2, v16

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 184
    .line 185
    sget v8, Lnet/kaki87/soul2/testing/R$string;->down_limit:I

    .line 186
    .line 187
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingDown;->P0(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    const/4 v12, 0x0

    .line 194
    const/4 v13, 0x0

    .line 195
    const/4 v7, 0x6

    .line 196
    const/4 v11, 0x0

    .line 197
    invoke-direct/range {v6 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 204
    .line 205
    sget v13, Lnet/kaki87/soul2/testing/R$string;->down_back_time:I

    .line 206
    .line 207
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, " "

    .line 218
    .line 219
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_hour:I

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    const/16 v18, 0x0

    .line 238
    .line 239
    const/4 v12, 0x7

    .line 240
    const/16 v16, 0x0

    .line 241
    .line 242
    move/from16 v22, v14

    .line 243
    .line 244
    move-object v14, v2

    .line 245
    move/from16 v2, v22

    .line 246
    .line 247
    invoke-direct/range {v11 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 254
    .line 255
    sget v5, Lnet/kaki87/soul2/testing/R$string;->down_noti:I

    .line 256
    .line 257
    sget-boolean v8, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 258
    .line 259
    const/4 v9, 0x1

    .line 260
    const/4 v7, 0x2

    .line 261
    const/16 v4, 0x8

    .line 262
    .line 263
    const/4 v6, 0x0

    .line 264
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 271
    .line 272
    const/16 v4, 0x9

    .line 273
    .line 274
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 281
    .line 282
    sget v7, Lnet/kaki87/soul2/testing/R$string;->report_site:I

    .line 283
    .line 284
    sget v9, Lnet/kaki87/soul2/testing/R$string;->report_down:I

    .line 285
    .line 286
    const/4 v10, 0x1

    .line 287
    const/16 v6, 0xa

    .line 288
    .line 289
    const/4 v8, 0x0

    .line 290
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 297
    .line 298
    sget v8, Lnet/kaki87/soul2/testing/R$string;->video_down_guide_3:I

    .line 299
    .line 300
    const/4 v11, 0x2

    .line 301
    const/16 v7, 0xb

    .line 302
    .line 303
    const/4 v9, 0x0

    .line 304
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;ZI)V

    .line 305
    .line 306
    .line 307
    const/16 v3, 0xc

    .line 308
    .line 309
    invoke-static {v1, v6, v3, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 310
    .line 311
    .line 312
    return-object v1
.end method

.method public final P0(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    sget p1, Lnet/kaki87/soul2/testing/R$string;->not_allow:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    const-string v0, ""

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->i2:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->i2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final R0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->c2:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Z1:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Z1:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public final S0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->i2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 23
    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p1, v0, :cond_4

    .line 26
    .line 27
    sget v0, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :goto_1
    move v4, v1

    .line 31
    move v1, v0

    .line 32
    move v0, v4

    .line 33
    goto :goto_2

    .line 34
    :cond_4
    const/4 v1, 0x5

    .line 35
    if-ne p1, v1, :cond_5

    .line 36
    .line 37
    sget v1, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_5
    const/4 v0, 0x6

    .line 41
    if-ne p1, v0, :cond_6

    .line 42
    .line 43
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_6
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 47
    .line 48
    :goto_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 49
    .line 50
    new-instance v3, Lcom/mycompany/app/setting/SettingDown$11;

    .line 51
    .line 52
    invoke-direct {v3, p0, p1}, Lcom/mycompany/app/setting/SettingDown$11;-><init>(Lcom/mycompany/app/setting/SettingDown;I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, p0, v0, v1, v3}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 59
    .line 60
    new-instance p1, Lcom/mycompany/app/setting/SettingDown$12;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingDown$12;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-ne p1, v0, :cond_5

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_5

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 56
    .line 57
    new-instance p2, Lcom/mycompany/app/setting/SettingDown$7;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingDown$7;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingDown;->a2:Z

    .line 67
    .line 68
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "EXTRA_PATH"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown;->X1:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/16 v0, 0x13

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 20
    .line 21
    .line 22
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_set:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 26
    .line 27
    .line 28
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingDown$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingDown$1;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->X1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Z1:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->b2:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->c2:Ljava/lang/String;

    .line 14
    .line 15
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
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingDown;->Q0()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 53
    .line 54
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 64
    .line 65
    :cond_4
    return-void

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingDown;->Z1:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingDown;->a2:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingDown;->R0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingDown;->a2:Z

    .line 13
    .line 14
    return-void
.end method
