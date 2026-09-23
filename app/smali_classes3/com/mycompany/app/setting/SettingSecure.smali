.class public Lcom/mycompany/app/setting/SettingSecure;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic d2:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogWebView;

.field public c2:Lcom/mycompany/app/dialog/DialogSetLock;


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
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->F:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/16 v3, 0x9

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sput v0, Lcom/mycompany/app/pref/PrefSecret;->F:I

    .line 13
    .line 14
    const-string v1, "mSecureDnt"

    .line 15
    .line 16
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->G:I

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    sput v0, Lcom/mycompany/app/pref/PrefSecret;->G:I

    .line 27
    .line 28
    const-string v1, "mSecureGpc"

    .line 29
    .line 30
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move v1, v2

    .line 34
    :cond_2
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->H:I

    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    if-eq v4, v5, :cond_3

    .line 38
    .line 39
    sput v5, Lcom/mycompany/app/pref/PrefSecret;->H:I

    .line 40
    .line 41
    const-string v1, "mSecureKey"

    .line 42
    .line 43
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    sput v0, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 52
    .line 53
    const-string v1, "mShotType"

    .line 54
    .line 55
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move v1, v2

    .line 59
    :cond_4
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSecret;->r:Z

    .line 60
    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    sput-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->r:Z

    .line 64
    .line 65
    const-string v0, "mShotSecret"

    .line 66
    .line 67
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_5
    return v1
.end method

.method public static P0(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget v0, Lnet/kaki87/soul2/testing/R$string;->lock_reset_info:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget v1, Lnet/kaki87/soul2/testing/R$string;->lock_reset_info:I

    .line 22
    .line 23
    const-string v2, "\n"

    .line 24
    .line 25
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->lock_secret_guide:I

    .line 29
    .line 30
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    move v9, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v9, v3

    .line 12
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move v15, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v15, v3

    .line 19
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget v4, Lnet/kaki87/soul2/testing/R$string;->keyboard_secure_info_1:I

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "\n"

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget v4, Lnet/kaki87/soul2/testing/R$string;->keyboard_secure_info_2:I

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v20

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 57
    .line 58
    invoke-direct {v4, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance v21, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 65
    .line 66
    sget-object v2, Lcom/mycompany/app/main/MainConst;->V:[I

    .line 67
    .line 68
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->F:I

    .line 69
    .line 70
    aget v24, v2, v4

    .line 71
    .line 72
    const/16 v25, 0x0

    .line 73
    .line 74
    const/16 v26, 0x1

    .line 75
    .line 76
    const/16 v22, 0x1

    .line 77
    .line 78
    const-string v23, "Do Not Track"

    .line 79
    .line 80
    invoke-direct/range {v21 .. v26}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 81
    .line 82
    .line 83
    move-object/from16 v4, v21

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance v21, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 89
    .line 90
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->G:I

    .line 91
    .line 92
    aget v24, v2, v4

    .line 93
    .line 94
    const/16 v26, 0x2

    .line 95
    .line 96
    const/16 v22, 0x2

    .line 97
    .line 98
    const-string v23, "Global Privacy Control"

    .line 99
    .line 100
    invoke-direct/range {v21 .. v26}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 101
    .line 102
    .line 103
    move-object/from16 v4, v21

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 109
    .line 110
    const/4 v5, 0x3

    .line 111
    invoke-direct {v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 118
    .line 119
    sget v18, Lnet/kaki87/soul2/testing/R$string;->keyboard_secure:I

    .line 120
    .line 121
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->H:I

    .line 122
    .line 123
    aget v19, v2, v4

    .line 124
    .line 125
    const/16 v21, 0x3

    .line 126
    .line 127
    const/16 v17, 0x4

    .line 128
    .line 129
    invoke-direct/range {v16 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    move-object/from16 v2, v16

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 138
    .line 139
    const/4 v4, 0x5

    .line 140
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 147
    .line 148
    sget v18, Lnet/kaki87/soul2/testing/R$string;->app_lock:I

    .line 149
    .line 150
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 151
    .line 152
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 153
    .line 154
    aget v19, v2, v4

    .line 155
    .line 156
    const/16 v20, 0x0

    .line 157
    .line 158
    const/16 v21, 0x1

    .line 159
    .line 160
    const/16 v17, 0x6

    .line 161
    .line 162
    invoke-direct/range {v16 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v2, v16

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 171
    .line 172
    sget v6, Lnet/kaki87/soul2/testing/R$string;->only_secret:I

    .line 173
    .line 174
    sget-boolean v8, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    const/4 v5, 0x7

    .line 178
    const/4 v7, 0x0

    .line 179
    move v10, v9

    .line 180
    invoke-direct/range {v4 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 187
    .line 188
    sget v2, Lnet/kaki87/soul2/testing/R$string;->lock_reset_target:I

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingSecure;->Q0()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 199
    .line 200
    invoke-static {v2}, Lcom/mycompany/app/setting/SettingSecure;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    const/4 v7, 0x2

    .line 205
    const/16 v6, 0x8

    .line 206
    .line 207
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 214
    .line 215
    const/16 v4, 0x9

    .line 216
    .line 217
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 224
    .line 225
    sget v7, Lnet/kaki87/soul2/testing/R$string;->android_shot:I

    .line 226
    .line 227
    sget-object v2, Lcom/mycompany/app/main/MainConst;->T:[I

    .line 228
    .line 229
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 230
    .line 231
    aget v8, v2, v4

    .line 232
    .line 233
    const/4 v9, 0x0

    .line 234
    const/4 v10, 0x1

    .line 235
    const/16 v6, 0xa

    .line 236
    .line 237
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 244
    .line 245
    sget v12, Lnet/kaki87/soul2/testing/R$string;->only_secret:I

    .line 246
    .line 247
    sget-boolean v14, Lcom/mycompany/app/pref/PrefSecret;->r:Z

    .line 248
    .line 249
    const/16 v17, 0x2

    .line 250
    .line 251
    const/16 v11, 0xb

    .line 252
    .line 253
    const/4 v13, 0x0

    .line 254
    move/from16 v16, v15

    .line 255
    .line 256
    invoke-direct/range {v10 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 257
    .line 258
    .line 259
    const/16 v2, 0xc

    .line 260
    .line 261
    invoke-static {v1, v10, v2, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 262
    .line 263
    .line 264
    return-object v1
.end method

.method public final Q0()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/16 v2, 0x7e

    .line 8
    .line 9
    const-string v3, ", "

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget v1, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_list:I

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_1
    const/4 v2, 0x2

    .line 81
    and-int/2addr v0, v2

    .line 82
    if-ne v0, v2, :cond_2

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    sget v2, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v0, v1

    .line 100
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 101
    .line 102
    const/4 v4, 0x4

    .line 103
    and-int/2addr v2, v4

    .line 104
    if-ne v2, v4, :cond_4

    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :goto_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_4
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 127
    .line 128
    const/16 v4, 0x8

    .line 129
    .line 130
    and-int/2addr v2, v4

    .line 131
    if-ne v2, v4, :cond_6

    .line 132
    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :goto_2
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_list:I

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_6
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 154
    .line 155
    const/16 v4, 0x10

    .line 156
    .line 157
    and-int/2addr v2, v4

    .line 158
    if-ne v2, v4, :cond_8

    .line 159
    .line 160
    if-nez v0, :cond_7

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :goto_3
    sget v2, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_8
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 181
    .line 182
    const/16 v4, 0x20

    .line 183
    .line 184
    and-int/2addr v2, v4

    .line 185
    if-ne v2, v4, :cond_a

    .line 186
    .line 187
    if-nez v0, :cond_9

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :goto_4
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_a
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 208
    .line 209
    const/16 v4, 0x40

    .line 210
    .line 211
    and-int/2addr v2, v4

    .line 212
    if-ne v2, v4, :cond_c

    .line 213
    .line 214
    if-nez v0, :cond_b

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    :goto_5
    sget v2, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 226
    .line 227
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :cond_c
    if-nez v0, :cond_d

    .line 235
    .line 236
    return-object v1

    .line 237
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    return-object v0
.end method

.method public final R0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

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
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->F:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_4
    const/4 v1, 0x2

    .line 31
    if-ne p2, v1, :cond_5

    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->G:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->H:I

    .line 37
    .line 38
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/mycompany/app/main/MainConst;->U:[I

    .line 44
    .line 45
    array-length v2, v2

    .line 46
    const/4 v3, 0x0

    .line 47
    move v4, v3

    .line 48
    :goto_2
    if-ge v4, v2, :cond_7

    .line 49
    .line 50
    sget-object v5, Lcom/mycompany/app/main/MainConst;->U:[I

    .line 51
    .line 52
    aget v5, v5, v4

    .line 53
    .line 54
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 55
    .line 56
    sget-object v8, Lcom/mycompany/app/main/MainConst;->V:[I

    .line 57
    .line 58
    aget v8, v8, v5

    .line 59
    .line 60
    if-ne v1, v5, :cond_6

    .line 61
    .line 62
    move v5, v0

    .line 63
    goto :goto_3

    .line 64
    :cond_6
    move v5, v3

    .line 65
    :goto_3
    invoke-direct {v7, v4, v8, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_7
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 77
    .line 78
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 79
    .line 80
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 81
    .line 82
    new-instance v8, Lcom/mycompany/app/setting/SettingSecure$7;

    .line 83
    .line 84
    invoke-direct {v8, p0, v2, p2}, Lcom/mycompany/app/setting/SettingSecure$7;-><init>(Lcom/mycompany/app/setting/SettingSecure;II)V

    .line 85
    .line 86
    .line 87
    move-object v3, p0

    .line 88
    move-object v2, v0

    .line 89
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 93
    .line 94
    iput-object v2, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 95
    .line 96
    :goto_4
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 12

    .line 1
    const/4 p3, 0x3

    .line 2
    if-ne p1, p3, :cond_1

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    :goto_0
    move v5, p2

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 21
    .line 22
    sget v8, Lnet/kaki87/soul2/testing/R$string;->app_lock:I

    .line 23
    .line 24
    sget-object p2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 25
    .line 26
    sget p3, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 27
    .line 28
    aget v9, p2, p3

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x1

    .line 32
    const/4 v7, 0x6

    .line 33
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v6}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 42
    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$string;->only_secret:I

    .line 44
    .line 45
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v1, 0x7

    .line 49
    const/4 v3, 0x0

    .line 50
    move v6, v5

    .line 51
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 58
    .line 59
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 60
    .line 61
    sget p2, Lnet/kaki87/soul2/testing/R$string;->lock_reset_target:I

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSecure;->Q0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/mycompany/app/setting/SettingSecure;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v3, 0x2

    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lnet/kaki87/soul2/testing/R$string;->security:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 13
    .line 14
    .line 15
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingSecure$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingSecure$1;-><init>(Lcom/mycompany/app/setting/SettingSecure;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 63
    .line 64
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetLock;->dismiss()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->V()V

    .line 79
    .line 80
    .line 81
    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->X()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
