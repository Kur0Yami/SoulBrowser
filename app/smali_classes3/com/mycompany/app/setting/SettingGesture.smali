.class public Lcom/mycompany/app/setting/SettingGesture;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Z1:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Lcom/mycompany/app/dialog/DialogSetItem;


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

.method public static O0(Lcom/mycompany/app/setting/SettingGesture;II)V
    .locals 3

    .line 1
    if-ltz p2, :cond_a

    .line 2
    .line 3
    const/16 v0, 0x4b

    .line 4
    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x4

    .line 19
    const/16 v1, 0xf

    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 24
    .line 25
    if-ne v0, p2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    sput p2, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    const-string v2, "mGesUpLt3"

    .line 33
    .line 34
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/4 v0, 0x5

    .line 39
    if-ne p1, v0, :cond_5

    .line 40
    .line 41
    sget v0, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 42
    .line 43
    if-ne v0, p2, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    sput p2, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 49
    .line 50
    const-string v2, "mGesUpRt3"

    .line 51
    .line 52
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    const/4 v0, 0x6

    .line 57
    if-ne p1, v0, :cond_7

    .line 58
    .line 59
    sget v0, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 60
    .line 61
    if-ne v0, p2, :cond_6

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    sput p2, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 67
    .line 68
    const-string v2, "mGesDnLt3"

    .line 69
    .line 70
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_7
    const/4 v0, 0x7

    .line 75
    if-ne p1, v0, :cond_9

    .line 76
    .line 77
    sget v0, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 78
    .line 79
    if-ne v0, p2, :cond_8

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_8
    sput p2, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 85
    .line 86
    const-string v2, "mGesDnRt3"

    .line 87
    .line 88
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 92
    .line 93
    if-eqz p0, :cond_a

    .line 94
    .line 95
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 100
    .line 101
    .line 102
    :cond_a
    :goto_1
    return-void
.end method

.method public static P0(Landroid/content/Context;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    move v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v1, v0

    .line 15
    :goto_0
    sget v2, Lcom/mycompany/app/main/MainApp;->D1:I

    .line 16
    .line 17
    sget v4, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-ne v4, v5, :cond_2

    .line 21
    .line 22
    sget v4, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 23
    .line 24
    if-ne v4, v5, :cond_2

    .line 25
    .line 26
    sget v4, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 27
    .line 28
    if-ne v4, v1, :cond_2

    .line 29
    .line 30
    sget v4, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 31
    .line 32
    if-ne v4, v1, :cond_2

    .line 33
    .line 34
    sget v4, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 35
    .line 36
    if-ne v4, v3, :cond_2

    .line 37
    .line 38
    sget v4, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 39
    .line 40
    sget v6, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 41
    .line 42
    if-ne v4, v6, :cond_2

    .line 43
    .line 44
    sget v4, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 45
    .line 46
    if-ne v4, v6, :cond_2

    .line 47
    .line 48
    sget v4, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 49
    .line 50
    if-ne v4, v2, :cond_2

    .line 51
    .line 52
    sget v4, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 53
    .line 54
    if-ne v4, v2, :cond_2

    .line 55
    .line 56
    sget v4, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 57
    .line 58
    if-ne v4, v6, :cond_2

    .line 59
    .line 60
    sget v4, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 61
    .line 62
    if-ne v4, v6, :cond_2

    .line 63
    .line 64
    sget v4, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 65
    .line 66
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 67
    .line 68
    if-ne v4, v6, :cond_2

    .line 69
    .line 70
    sget v4, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 71
    .line 72
    if-eq v4, v6, :cond_3

    .line 73
    .line 74
    :cond_2
    sput v5, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 75
    .line 76
    sput v5, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 77
    .line 78
    sput v1, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 79
    .line 80
    sput v1, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 81
    .line 82
    sput v3, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 83
    .line 84
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 85
    .line 86
    sput v1, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 87
    .line 88
    sput v1, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 89
    .line 90
    sput v2, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 91
    .line 92
    sput v2, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 93
    .line 94
    sput v1, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 95
    .line 96
    sput v1, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 97
    .line 98
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 99
    .line 100
    sput v1, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 101
    .line 102
    sput v1, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 103
    .line 104
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "mGesTop"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "mGesBot"

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v2, "mGesLeft"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v2, "mGesRight"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v2, "mGesCenter"

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "mPortAreaTop"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v2, "mPortAreaBot"

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "mPortAreaLeft"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v2, "mPortAreaRight"

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v2, "mLandAreaTop"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v2, "mLandAreaBot"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v2, "mLandAreaLeft"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v2, "mLandAreaRight"

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 174
    .line 175
    .line 176
    :cond_3
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 177
    .line 178
    const/16 v2, 0x64

    .line 179
    .line 180
    if-ne v1, v2, :cond_4

    .line 181
    .line 182
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 183
    .line 184
    if-ne v1, v2, :cond_4

    .line 185
    .line 186
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 187
    .line 188
    if-ne v1, v2, :cond_4

    .line 189
    .line 190
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 191
    .line 192
    if-ne v1, v2, :cond_4

    .line 193
    .line 194
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 195
    .line 196
    if-eq v1, v2, :cond_5

    .line 197
    .line 198
    :cond_4
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 199
    .line 200
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 201
    .line 202
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 203
    .line 204
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 205
    .line 206
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 207
    .line 208
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const-string v2, "mSenseTop2"

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v2, "mSenseBot2"

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v2, "mSenseLeft2"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v2, "mSenseRight2"

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v2, "mSenseCenter2"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 238
    .line 239
    .line 240
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 241
    .line 242
    const/16 v2, 0xf

    .line 243
    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    sput v0, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 247
    .line 248
    const-string v1, "mGesUpLt3"

    .line 249
    .line 250
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    move v1, v5

    .line 254
    goto :goto_1

    .line 255
    :cond_6
    move v1, v0

    .line 256
    :goto_1
    sget v3, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 257
    .line 258
    if-eqz v3, :cond_7

    .line 259
    .line 260
    sput v0, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 261
    .line 262
    const-string v1, "mGesUpRt3"

    .line 263
    .line 264
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    move v1, v5

    .line 268
    :cond_7
    sget v3, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 269
    .line 270
    if-eqz v3, :cond_8

    .line 271
    .line 272
    sput v0, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 273
    .line 274
    const-string v1, "mGesDnLt3"

    .line 275
    .line 276
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    move v1, v5

    .line 280
    :cond_8
    sget v3, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 281
    .line 282
    if-eqz v3, :cond_9

    .line 283
    .line 284
    sput v0, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 285
    .line 286
    const-string v1, "mGesDnRt3"

    .line 287
    .line 288
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 289
    .line 290
    .line 291
    move v1, v5

    .line 292
    :cond_9
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->E:Z

    .line 293
    .line 294
    if-eqz v2, :cond_a

    .line 295
    .line 296
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->E:Z

    .line 297
    .line 298
    const/16 v0, 0xe

    .line 299
    .line 300
    const-string v1, "mTabMulti"

    .line 301
    .line 302
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return v5

    .line 306
    :cond_a
    return v1
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->swipe:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->move_up:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->move_down:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$string;->move_left:I

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget v5, Lnet/kaki87/soul2/testing/R$string;->move_right:I

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, " + "

    .line 34
    .line 35
    invoke-static {v1, v6, v3}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-static {v1, v6, v5}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v2, v6, v3}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v17

    .line 47
    invoke-static {v2, v6, v5}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v18

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tab_gesture:I

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, " "

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    sget v3, Lnet/kaki87/soul2/testing/R$string;->two_finger:I

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    sget v3, Lnet/kaki87/soul2/testing/R$string;->two_finger_info_1:I

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, "\n"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$string;->two_finger_info_2:I

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v22

    .line 115
    new-instance v15, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v11, 0x1

    .line 124
    invoke-direct {v2, v10, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 131
    .line 132
    const/4 v12, 0x3

    .line 133
    if-eqz v2, :cond_0

    .line 134
    .line 135
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 136
    .line 137
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_range_dark_24:I

    .line 138
    .line 139
    const/4 v7, 0x1

    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v3, 0x1

    .line 142
    const/4 v6, 0x0

    .line 143
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 150
    .line 151
    sget v5, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 152
    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x2

    .line 155
    const/4 v4, 0x2

    .line 156
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 163
    .line 164
    invoke-direct {v2, v12, v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 171
    .line 172
    move v2, v10

    .line 173
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_up_left_dark_24:I

    .line 174
    .line 175
    sget v3, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 176
    .line 177
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    const/4 v12, 0x1

    .line 182
    const/4 v13, 0x0

    .line 183
    const/4 v8, 0x4

    .line 184
    move/from16 v25, v11

    .line 185
    .line 186
    move v11, v3

    .line 187
    move/from16 v3, v25

    .line 188
    .line 189
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 196
    .line 197
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_up_right_dark_24:I

    .line 198
    .line 199
    sget v4, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 200
    .line 201
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    move-object v5, v15

    .line 206
    const/4 v15, 0x0

    .line 207
    const/16 v16, 0x0

    .line 208
    .line 209
    const/4 v11, 0x5

    .line 210
    move-object v12, v1

    .line 211
    move-object v9, v5

    .line 212
    move-object v1, v14

    .line 213
    move v14, v4

    .line 214
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 221
    .line 222
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_left_dark_24:I

    .line 223
    .line 224
    sget v4, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 225
    .line 226
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    const/4 v11, 0x6

    .line 231
    move-object/from16 v12, v17

    .line 232
    .line 233
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 240
    .line 241
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_right_dark_24:I

    .line 242
    .line 243
    sget v4, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 244
    .line 245
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    const/4 v15, 0x2

    .line 250
    const/4 v11, 0x7

    .line 251
    move-object/from16 v12, v18

    .line 252
    .line 253
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_0
    move-object v3, v14

    .line 262
    move-object v14, v1

    .line 263
    move-object v1, v3

    .line 264
    move v5, v10

    .line 265
    move v3, v11

    .line 266
    move-object v10, v9

    .line 267
    move-object v9, v15

    .line 268
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 269
    .line 270
    move v6, v5

    .line 271
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_range_black_24:I

    .line 272
    .line 273
    const/4 v7, 0x1

    .line 274
    const/4 v8, 0x0

    .line 275
    const/4 v3, 0x1

    .line 276
    move v13, v6

    .line 277
    const/4 v6, 0x0

    .line 278
    move v15, v13

    .line 279
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 286
    .line 287
    sget v5, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 288
    .line 289
    const/4 v7, 0x0

    .line 290
    const/4 v8, 0x2

    .line 291
    const/4 v4, 0x2

    .line 292
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 299
    .line 300
    invoke-direct {v2, v12, v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 307
    .line 308
    move-object v5, v9

    .line 309
    move-object v9, v10

    .line 310
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_up_left_black_24:I

    .line 311
    .line 312
    sget v2, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 313
    .line 314
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    const/4 v12, 0x1

    .line 319
    const/4 v13, 0x0

    .line 320
    const/4 v8, 0x4

    .line 321
    move v3, v11

    .line 322
    move v11, v2

    .line 323
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 330
    .line 331
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_up_right_black_24:I

    .line 332
    .line 333
    sget v2, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 334
    .line 335
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    move v6, v15

    .line 340
    const/4 v15, 0x0

    .line 341
    const/16 v16, 0x0

    .line 342
    .line 343
    const/4 v11, 0x5

    .line 344
    move-object v12, v14

    .line 345
    move v14, v2

    .line 346
    move v2, v6

    .line 347
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 354
    .line 355
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_left_black_24:I

    .line 356
    .line 357
    sget v4, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 358
    .line 359
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    const/4 v11, 0x6

    .line 364
    move-object/from16 v12, v17

    .line 365
    .line 366
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 373
    .line 374
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_right_black_24:I

    .line 375
    .line 376
    sget v4, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 377
    .line 378
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 379
    .line 380
    .line 381
    move-result v14

    .line 382
    const/4 v15, 0x2

    .line 383
    const/4 v11, 0x7

    .line 384
    move-object/from16 v12, v18

    .line 385
    .line 386
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;IIII)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :goto_0
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 393
    .line 394
    const/16 v6, 0x8

    .line 395
    .line 396
    invoke-direct {v4, v6, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 403
    .line 404
    sget-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->E:Z

    .line 405
    .line 406
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 407
    .line 408
    .line 409
    const/4 v7, 0x6

    .line 410
    iput v7, v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 411
    .line 412
    const/16 v7, 0x9

    .line 413
    .line 414
    iput v7, v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 415
    .line 416
    iput-object v1, v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->d:Ljava/lang/String;

    .line 417
    .line 418
    const/4 v1, 0x0

    .line 419
    iput-object v1, v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 420
    .line 421
    iput-boolean v6, v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 422
    .line 423
    iput v3, v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->u:I

    .line 424
    .line 425
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    new-instance v19, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 429
    .line 430
    const/16 v23, 0x0

    .line 431
    .line 432
    const/16 v24, 0x2

    .line 433
    .line 434
    const/16 v20, 0xa

    .line 435
    .line 436
    const/16 v21, 0x0

    .line 437
    .line 438
    invoke-direct/range {v19 .. v24}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;ZI)V

    .line 439
    .line 440
    .line 441
    move-object/from16 v1, v19

    .line 442
    .line 443
    const/16 v3, 0xb

    .line 444
    .line 445
    invoke-static {v5, v1, v3, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 446
    .line 447
    .line 448
    return-object v5
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lnet/kaki87/soul2/testing/R$string;->gesture:I

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
    new-instance v0, Lcom/mycompany/app/setting/SettingGesture$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingGesture$1;-><init>(Lcom/mycompany/app/setting/SettingGesture;)V

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
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 30
    .line 31
    :cond_1
    return-void
.end method
