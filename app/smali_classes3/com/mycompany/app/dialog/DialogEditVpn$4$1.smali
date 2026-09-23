.class Lcom/mycompany/app/dialog/DialogEditVpn$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditVpn$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditVpn$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn$4$1;->c:Lcom/mycompany/app/dialog/DialogEditVpn$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn$4$1;->c:Lcom/mycompany/app/dialog/DialogEditVpn$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditVpn$4;->c:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogEditVpn;->t0:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->D()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    move-object v7, v2

    .line 23
    move v5, v3

    .line 24
    move v6, v4

    .line 25
    :goto_0
    const/4 v8, 0x4

    .line 26
    if-ge v5, v8, :cond_f

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v8, ","

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 42
    .line 43
    add-int/lit8 v9, v5, 0x1

    .line 44
    .line 45
    aget-object v8, v8, v9

    .line 46
    .line 47
    invoke-static {v8, v4}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_2

    .line 56
    .line 57
    const-string v5, "x"

    .line 58
    .line 59
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_2
    const/4 v6, 0x2

    .line 65
    if-ge v5, v6, :cond_3

    .line 66
    .line 67
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->i6(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    :catch_0
    :cond_4
    :goto_2
    move v5, v3

    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_5
    const-string v5, ":"

    .line 83
    .line 84
    invoke-static {v8, v5}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    move v6, v3

    .line 89
    move v10, v6

    .line 90
    move v11, v10

    .line 91
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    const/16 v13, 0x8

    .line 96
    .line 97
    if-ge v6, v12, :cond_c

    .line 98
    .line 99
    const/16 v12, 0x3a

    .line 100
    .line 101
    invoke-virtual {v5, v12, v6}, Ljava/lang/String;->indexOf(II)I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-lt v12, v6, :cond_c

    .line 106
    .line 107
    if-ne v10, v13, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    if-eq v6, v12, :cond_9

    .line 111
    .line 112
    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    sub-int/2addr v14, v4

    .line 121
    if-ne v12, v14, :cond_8

    .line 122
    .line 123
    const/16 v14, 0x2e

    .line 124
    .line 125
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-lez v14, :cond_8

    .line 130
    .line 131
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->i6(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-nez v6, :cond_7

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    :try_start_0
    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const/16 v13, 0x10

    .line 146
    .line 147
    invoke-static {v6, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    if-ltz v6, :cond_4

    .line 152
    .line 153
    const v13, 0xffff

    .line 154
    .line 155
    .line 156
    if-le v6, v13, :cond_b

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_9
    if-eq v12, v4, :cond_a

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    sub-int/2addr v6, v4

    .line 166
    if-eq v12, v6, :cond_a

    .line 167
    .line 168
    if-eqz v11, :cond_a

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_a
    move v11, v4

    .line 172
    :cond_b
    :goto_4
    add-int/lit8 v6, v12, 0x1

    .line 173
    .line 174
    add-int/2addr v10, v4

    .line 175
    goto :goto_3

    .line 176
    :cond_c
    if-eq v10, v13, :cond_d

    .line 177
    .line 178
    if-eqz v11, :cond_4

    .line 179
    .line 180
    :cond_d
    move v5, v4

    .line 181
    :goto_5
    if-nez v5, :cond_e

    .line 182
    .line 183
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 184
    .line 185
    aget-object v4, v4, v9

    .line 186
    .line 187
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 191
    .line 192
    sget v5, Lnet/kaki87/soul2/testing/R$string;->noti_invalid:I

    .line 193
    .line 194
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    move v6, v3

    .line 202
    :goto_6
    move v5, v9

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_f
    if-eqz v6, :cond_10

    .line 206
    .line 207
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 208
    .line 209
    aget-object v4, v5, v4

    .line 210
    .line 211
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 215
    .line 216
    sget v5, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 217
    .line 218
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_11

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_11
    sget v4, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 234
    .line 235
    const/4 v5, -0x1

    .line 236
    if-ne v4, v5, :cond_12

    .line 237
    .line 238
    sget-object v4, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v4, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_12

    .line 245
    .line 246
    sget-object v4, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v4, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-nez v4, :cond_13

    .line 253
    .line 254
    :cond_12
    sput v5, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 255
    .line 256
    sput-object v1, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 257
    .line 258
    sput-object v2, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 261
    .line 262
    invoke-static {v1, v3}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string v2, "mVpnServer"

    .line 267
    .line 268
    sget v4, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 269
    .line 270
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string v2, "mVpnUrl"

    .line 274
    .line 275
    sget-object v4, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v2, "mVpnIps"

    .line 281
    .line 282
    sget-object v4, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 291
    .line 292
    if-eqz v1, :cond_13

    .line 293
    .line 294
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 295
    .line 296
    .line 297
    :cond_13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->dismiss()V

    .line 298
    .line 299
    .line 300
    :goto_8
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->q0:Z

    .line 301
    .line 302
    return-void
.end method
