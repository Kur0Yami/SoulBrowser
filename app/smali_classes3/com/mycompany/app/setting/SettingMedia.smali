.class public Lcom/mycompany/app/setting/SettingMedia;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final d2:[I

.field public static final e2:[I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

.field public a2:Z

.field public b2:I

.field public c2:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 10
    .line 11
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 12
    .line 13
    sget v1, Lnet/kaki87/soul2/testing/R$string;->top_bar:I

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bot_bar:I

    .line 16
    .line 17
    sget v3, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 18
    .line 19
    filled-new-array {v0, v1, v2, v3}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/mycompany/app/setting/SettingMedia;->e2:[I

    .line 24
    .line 25
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

.method public static O0(Landroid/content/Context;)Z
    .locals 8

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
    const/4 v2, 0x5

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    sget-object v3, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 11
    .line 12
    aget v2, v3, v2

    .line 13
    .line 14
    sget v3, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    const/16 v5, 0xf

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v4, :cond_1

    .line 21
    .line 22
    sput v4, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 23
    .line 24
    const-string v3, "mDownPos"

    .line 25
    .line 26
    invoke-static {p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move v3, v6

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, v0

    .line 32
    :goto_0
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 33
    .line 34
    if-nez v7, :cond_2

    .line 35
    .line 36
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 37
    .line 38
    if-ne v7, v1, :cond_2

    .line 39
    .line 40
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 41
    .line 42
    invoke-static {v7, v2}, Ljava/lang/Float;->compare(FF)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    :cond_2
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 49
    .line 50
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 51
    .line 52
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->m:I

    .line 59
    .line 60
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v7, "mIconAlpha"

    .line 65
    .line 66
    invoke-virtual {v3, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v7, "mIconColor"

    .line 70
    .line 71
    invoke-virtual {v3, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v7, "mIconPos"

    .line 75
    .line 76
    invoke-virtual {v3, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 80
    .line 81
    .line 82
    move v3, v6

    .line 83
    :cond_3
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 84
    .line 85
    if-nez v7, :cond_4

    .line 86
    .line 87
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 88
    .line 89
    const-string v3, "mShowPip"

    .line 90
    .line 91
    invoke-static {p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move v3, v6

    .line 95
    :cond_4
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 96
    .line 97
    if-nez v7, :cond_5

    .line 98
    .line 99
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 100
    .line 101
    const-string v3, "mShowFull"

    .line 102
    .line 103
    invoke-static {p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move v3, v6

    .line 107
    :cond_5
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 108
    .line 109
    if-nez v7, :cond_6

    .line 110
    .line 111
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 112
    .line 113
    const-string v3, "mShowDown"

    .line 114
    .line 115
    invoke-static {p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move v3, v6

    .line 119
    :cond_6
    sget-object v7, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_7

    .line 126
    .line 127
    sget-object v7, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_7

    .line 134
    .line 135
    sget-object v7, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-nez v7, :cond_8

    .line 142
    .line 143
    :cond_7
    const-string v3, ""

    .line 144
    .line 145
    sput-object v3, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 146
    .line 147
    sput-object v3, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 148
    .line 149
    sput-object v3, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v7, "mPlayName2"

    .line 156
    .line 157
    invoke-virtual {v3, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v7, "mPlayPkg2"

    .line 161
    .line 162
    invoke-virtual {v3, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v7, "mPlayCls2"

    .line 166
    .line 167
    invoke-virtual {v3, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 171
    .line 172
    .line 173
    move v3, v6

    .line 174
    :cond_8
    sget v7, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 187
    .line 188
    if-eq v7, v4, :cond_a

    .line 189
    .line 190
    sput v4, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 191
    .line 192
    const-string v3, "mYouPos"

    .line 193
    .line 194
    invoke-static {p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    move v3, v6

    .line 198
    :cond_a
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 199
    .line 200
    if-nez v4, :cond_b

    .line 201
    .line 202
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 203
    .line 204
    if-ne v4, v1, :cond_b

    .line 205
    .line 206
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 207
    .line 208
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_c

    .line 213
    .line 214
    :cond_b
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 215
    .line 216
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 217
    .line 218
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 219
    .line 220
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->y:I

    .line 225
    .line 226
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v1, "mYpipAlpha"

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string v1, "mYpipColor"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v1, "mYpipPos"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 246
    .line 247
    .line 248
    move v3, v6

    .line 249
    :cond_c
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->s:Z

    .line 250
    .line 251
    if-nez v0, :cond_d

    .line 252
    .line 253
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->s:Z

    .line 254
    .line 255
    const-string v0, "mYouPip"

    .line 256
    .line 257
    invoke-static {p0, v5, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    move v3, v6

    .line 261
    :cond_d
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->t:Z

    .line 262
    .line 263
    if-nez v0, :cond_e

    .line 264
    .line 265
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->t:Z

    .line 266
    .line 267
    const-string v0, "mYouRate"

    .line 268
    .line 269
    invoke-static {p0, v5, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    move v3, v6

    .line 273
    :cond_e
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->T:Z

    .line 274
    .line 275
    const/16 v1, 0x10

    .line 276
    .line 277
    if-nez v0, :cond_f

    .line 278
    .line 279
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->T:Z

    .line 280
    .line 281
    const-string v0, "mAutoPlay"

    .line 282
    .line 283
    invoke-static {p0, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move v3, v6

    .line 287
    :cond_f
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->U:Z

    .line 288
    .line 289
    if-nez v0, :cond_10

    .line 290
    .line 291
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->U:Z

    .line 292
    .line 293
    const-string v0, "mYouUnmute"

    .line 294
    .line 295
    invoke-static {p0, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return v6

    .line 299
    :cond_10
    return v3
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    if-ne v1, v3, :cond_0

    .line 8
    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 10
    .line 11
    move v8, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v8, v2

    .line 14
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 15
    .line 16
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 17
    .line 18
    invoke-static {v1, v4}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 19
    .line 20
    .line 21
    move-result v12

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget v4, Lnet/kaki87/soul2/testing/R$string;->video_down_guide_1:I

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, "\n"

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget v5, Lnet/kaki87/soul2/testing/R$string;->video_down_guide_2:I

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget v4, Lnet/kaki87/soul2/testing/R$string;->cast_info_6:I

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v16

    .line 66
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_youtube_activity_2_dark_24:I

    .line 71
    .line 72
    :goto_1
    move/from16 v21, v1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_youtube_activity_2_black_24:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_2
    sget v1, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 79
    .line 80
    if-ne v1, v3, :cond_2

    .line 81
    .line 82
    sget v1, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 83
    .line 84
    move/from16 v26, v1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    move/from16 v26, v2

    .line 88
    .line 89
    :goto_3
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 90
    .line 91
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 92
    .line 93
    invoke-static {v1, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 94
    .line 95
    .line 96
    move-result v30

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    invoke-direct {v3, v2, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 112
    .line 113
    sget v6, Lnet/kaki87/soul2/testing/R$string;->video_manager:I

    .line 114
    .line 115
    sget v3, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 116
    .line 117
    sget-object v23, Lcom/mycompany/app/setting/SettingMedia;->e2:[I

    .line 118
    .line 119
    aget v7, v23, v3

    .line 120
    .line 121
    const/4 v9, 0x1

    .line 122
    const/4 v5, 0x1

    .line 123
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 130
    .line 131
    sget v11, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 132
    .line 133
    const/4 v13, 0x0

    .line 134
    const/4 v14, 0x0

    .line 135
    const/4 v10, 0x2

    .line 136
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 143
    .line 144
    sget v5, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v4, 0x3

    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 157
    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    const/16 v18, 0x2

    .line 161
    .line 162
    const/4 v14, 0x4

    .line 163
    const/4 v15, 0x0

    .line 164
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;ZI)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 171
    .line 172
    const/4 v4, 0x5

    .line 173
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 180
    .line 181
    sget v7, Lnet/kaki87/soul2/testing/R$string;->back_play:I

    .line 182
    .line 183
    sget v8, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 184
    .line 185
    sget-boolean v10, Lcom/mycompany/app/pref/PrefZone;->G:Z

    .line 186
    .line 187
    const/4 v11, 0x1

    .line 188
    const/4 v9, 0x1

    .line 189
    const/4 v6, 0x6

    .line 190
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 211
    .line 212
    const/16 v4, 0x8

    .line 213
    .line 214
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    new-instance v17, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 221
    .line 222
    const-string v20, "YouTube"

    .line 223
    .line 224
    const/16 v22, 0x0

    .line 225
    .line 226
    const/16 v18, 0x9

    .line 227
    .line 228
    const/16 v19, 0x0

    .line 229
    .line 230
    invoke-direct/range {v17 .. v22}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v3, v17

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v22, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 239
    .line 240
    sget v24, Lnet/kaki87/soul2/testing/R$string;->youtube_manager:I

    .line 241
    .line 242
    sget v3, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 243
    .line 244
    aget v25, v23, v3

    .line 245
    .line 246
    const/16 v27, 0x1

    .line 247
    .line 248
    const/16 v23, 0xa

    .line 249
    .line 250
    invoke-direct/range {v22 .. v27}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v3, v22

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    new-instance v27, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 259
    .line 260
    sget v29, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 261
    .line 262
    const/16 v31, 0x0

    .line 263
    .line 264
    const/16 v32, 0x0

    .line 265
    .line 266
    const/16 v28, 0xb

    .line 267
    .line 268
    invoke-direct/range {v27 .. v32}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v3, v27

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 277
    .line 278
    sget v6, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 279
    .line 280
    const/4 v8, 0x0

    .line 281
    const/4 v9, 0x2

    .line 282
    const/16 v5, 0xc

    .line 283
    .line 284
    const/4 v7, 0x0

    .line 285
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 292
    .line 293
    const/16 v4, 0xd

    .line 294
    .line 295
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 302
    .line 303
    sget v7, Lnet/kaki87/soul2/testing/R$string;->youtube_auto:I

    .line 304
    .line 305
    sget-boolean v10, Lcom/mycompany/app/pref/PrefZtwo;->T:Z

    .line 306
    .line 307
    const/4 v11, 0x1

    .line 308
    const/4 v9, 0x1

    .line 309
    const/16 v6, 0xe

    .line 310
    .line 311
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 318
    .line 319
    sget v8, Lnet/kaki87/soul2/testing/R$string;->youtube_unmute:I

    .line 320
    .line 321
    sget-boolean v11, Lcom/mycompany/app/pref/PrefZtwo;->U:Z

    .line 322
    .line 323
    const/4 v12, 0x1

    .line 324
    const/4 v10, 0x2

    .line 325
    const/16 v7, 0xf

    .line 326
    .line 327
    const/4 v9, 0x0

    .line 328
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 329
    .line 330
    .line 331
    const/16 v3, 0x10

    .line 332
    .line 333
    invoke-static {v1, v6, v3, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 334
    .line 335
    .line 336
    return-object v1
.end method

.method public final P0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 18
    .line 19
    :cond_2
    const/16 v0, 0xb

    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    const/4 v0, 0x0

    .line 26
    :goto_1
    iput p1, p0, Lcom/mycompany/app/setting/SettingMedia;->c2:I

    .line 27
    .line 28
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/setting/SettingMedia$6;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingMedia$6;-><init>(Lcom/mycompany/app/setting/SettingMedia;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p0, v0, v1}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 39
    .line 40
    new-instance v0, Lcom/mycompany/app/setting/SettingMedia$7;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMedia$7;-><init>(Lcom/mycompany/app/setting/SettingMedia;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final Q0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    const/16 v0, 0xa

    .line 25
    .line 26
    if-ne p2, v0, :cond_4

    .line 27
    .line 28
    sget v0, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_4
    sget v0, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 32
    .line 33
    :goto_1
    iput p2, p0, Lcom/mycompany/app/setting/SettingMedia;->b2:I

    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    move v1, p2

    .line 42
    :goto_2
    const/4 v2, 0x4

    .line 43
    if-ge v1, v2, :cond_6

    .line 44
    .line 45
    sget-object v2, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 46
    .line 47
    aget v2, v2, v1

    .line 48
    .line 49
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 50
    .line 51
    sget-object v4, Lcom/mycompany/app/setting/SettingMedia;->e2:[I

    .line 52
    .line 53
    aget v4, v4, v2

    .line 54
    .line 55
    if-ne v0, v2, :cond_5

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_5
    move v2, p2

    .line 60
    :goto_3
    invoke-direct {v3, v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 72
    .line 73
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 74
    .line 75
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 76
    .line 77
    new-instance v7, Lcom/mycompany/app/setting/SettingMedia$5;

    .line 78
    .line 79
    invoke-direct {v7, p0}, Lcom/mycompany/app/setting/SettingMedia$5;-><init>(Lcom/mycompany/app/setting/SettingMedia;)V

    .line 80
    .line 81
    .line 82
    move-object v2, p0

    .line 83
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 89
    .line 90
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
    sget p1, Lnet/kaki87/soul2/testing/R$string;->media:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingMedia$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMedia$1;-><init>(Lcom/mycompany/app/setting/SettingMedia;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVideo;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    :cond_2
    return-void
.end method
