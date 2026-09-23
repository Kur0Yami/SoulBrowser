.class Lcom/mycompany/app/web/WebHmgDialog$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$21;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgDialog$21;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 3
    .line 4
    iput v0, v1, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/web/WebHmgDialog;->j0:Ljava/util/List;

    .line 7
    .line 8
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/web/WebHmgDialog;->z(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$21;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/web/WebHmgDialog$21;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/mycompany/app/web/WebHmgDialog;->f0:Lcom/mycompany/app/web/WebHmgTask;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v4, v3, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    if-ne v4, v5, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    const/4 v4, 0x0

    .line 21
    iput v4, v3, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    :cond_2
    iput-boolean v4, v3, Lcom/mycompany/app/web/WebHmgDialog;->w0:Z

    .line 32
    .line 33
    iget-object v6, v3, Lcom/mycompany/app/web/WebHmgDialog;->f0:Lcom/mycompany/app/web/WebHmgTask;

    .line 34
    .line 35
    invoke-virtual {v6}, Lcom/mycompany/app/web/WebHmgTask;->d()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/16 v7, 0x64

    .line 40
    .line 41
    if-ge v6, v7, :cond_3

    .line 42
    .line 43
    invoke-static {v3, v6}, Lcom/mycompany/app/web/WebHmgDialog;->s(Lcom/mycompany/app/web/WebHmgDialog;I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-boolean v7, v3, Lcom/mycompany/app/web/WebHmgDialog;->v0:Z

    .line 48
    .line 49
    if-eqz v7, :cond_4

    .line 50
    .line 51
    iput-boolean v4, v3, Lcom/mycompany/app/web/WebHmgDialog;->v0:Z

    .line 52
    .line 53
    invoke-static {v3, v6}, Lcom/mycompany/app/web/WebHmgDialog;->s(Lcom/mycompany/app/web/WebHmgDialog;I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iput v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_8

    .line 66
    .line 67
    :cond_5
    iget-boolean v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->w0:Z

    .line 68
    .line 69
    if-nez v5, :cond_6

    .line 70
    .line 71
    iput-boolean v4, v3, Lcom/mycompany/app/web/WebHmgDialog;->w0:Z

    .line 72
    .line 73
    :cond_6
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->f0:Lcom/mycompany/app/web/WebHmgTask;

    .line 74
    .line 75
    iget-boolean v5, v5, Lcom/mycompany/app/web/WebHmgTask;->f:Z

    .line 76
    .line 77
    if-eqz v5, :cond_7

    .line 78
    .line 79
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 80
    .line 81
    sget v6, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 82
    .line 83
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_7
    iget-boolean v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->w0:Z

    .line 88
    .line 89
    if-eqz v5, :cond_8

    .line 90
    .line 91
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 92
    .line 93
    sget v6, Lnet/kaki87/soul2/testing/R$string;->check_network:I

    .line 94
    .line 95
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    :cond_8
    :goto_1
    if-eqz v0, :cond_16

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_9

    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_9
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->h0:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v6, v3, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    if-eqz v6, :cond_a

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->K1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_a

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    const/16 v8, 0xc

    .line 134
    .line 135
    if-le v5, v8, :cond_b

    .line 136
    .line 137
    const-string v5, " | Hitomi.la"

    .line 138
    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_b

    .line 144
    .line 145
    invoke-static {v8, v4, v6}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    goto :goto_2

    .line 150
    :cond_a
    invoke-static {v5, v7}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->r1(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    :cond_b
    :goto_2
    iput-object v6, v3, Lcom/mycompany/app/web/WebHmgDialog;->i0:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->f0:Lcom/mycompany/app/web/WebHmgTask;

    .line 161
    .line 162
    const/4 v6, 0x0

    .line 163
    if-eqz v5, :cond_c

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebHmgTask;->g()V

    .line 166
    .line 167
    .line 168
    iput-object v6, v3, Lcom/mycompany/app/web/WebHmgDialog;->f0:Lcom/mycompany/app/web/WebHmgTask;

    .line 169
    .line 170
    :cond_c
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 171
    .line 172
    if-eqz v5, :cond_d

    .line 173
    .line 174
    invoke-static {v5, v7}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 175
    .line 176
    .line 177
    iput-object v6, v3, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 178
    .line 179
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    const/4 v8, -0x1

    .line 184
    move-object v12, v6

    .line 185
    move-object/from16 v16, v12

    .line 186
    .line 187
    move v9, v8

    .line 188
    move v13, v9

    .line 189
    move v6, v4

    .line 190
    :goto_3
    if-ge v6, v5, :cond_12

    .line 191
    .line 192
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v10, Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v10}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_e

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_e
    if-ne v13, v8, :cond_f

    .line 206
    .line 207
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    check-cast v9, Ljava/lang/String;

    .line 212
    .line 213
    move v13, v6

    .line 214
    move-object v12, v9

    .line 215
    move-object/from16 v16, v12

    .line 216
    .line 217
    move v9, v13

    .line 218
    goto :goto_4

    .line 219
    :cond_f
    if-ge v6, v13, :cond_10

    .line 220
    .line 221
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    move-object v12, v10

    .line 226
    check-cast v12, Ljava/lang/String;

    .line 227
    .line 228
    move v13, v6

    .line 229
    :cond_10
    if-le v6, v9, :cond_11

    .line 230
    .line 231
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    check-cast v9, Ljava/lang/String;

    .line 236
    .line 237
    move-object/from16 v16, v9

    .line 238
    .line 239
    move v9, v6

    .line 240
    :cond_11
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_12
    new-instance v6, Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 244
    .line 245
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 246
    .line 247
    .line 248
    iput v5, v6, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 249
    .line 250
    iput-object v0, v3, Lcom/mycompany/app/web/WebHmgDialog;->j0:Ljava/util/List;

    .line 251
    .line 252
    iput-object v6, v3, Lcom/mycompany/app/web/WebHmgDialog;->k0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 253
    .line 254
    iget-object v5, v3, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 255
    .line 256
    invoke-static {v5}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    iput-object v0, v5, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 261
    .line 262
    iput-object v1, v5, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 263
    .line 264
    iput-object v6, v5, Lcom/mycompany/app/data/DataUrl;->c:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 265
    .line 266
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    move/from16 v17, v9

    .line 271
    .line 272
    if-nez v0, :cond_13

    .line 273
    .line 274
    new-instance v9, Lcom/mycompany/app/web/WebHmgLoad;

    .line 275
    .line 276
    iget-object v10, v3, Lcom/mycompany/app/web/WebHmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 277
    .line 278
    iget-object v11, v3, Lcom/mycompany/app/web/WebHmgDialog;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 279
    .line 280
    new-instance v15, Lcom/mycompany/app/web/WebHmgDialog$27;

    .line 281
    .line 282
    invoke-direct {v15, v3}, Lcom/mycompany/app/web/WebHmgDialog$27;-><init>(Lcom/mycompany/app/web/WebHmgDialog;)V

    .line 283
    .line 284
    .line 285
    const/4 v14, 0x1

    .line 286
    invoke-direct/range {v9 .. v15}, Lcom/mycompany/app/web/WebHmgLoad;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;)V

    .line 287
    .line 288
    .line 289
    iput-object v9, v3, Lcom/mycompany/app/web/WebHmgDialog;->y0:Lcom/mycompany/app/web/WebHmgLoad;

    .line 290
    .line 291
    move v7, v4

    .line 292
    :cond_13
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_14

    .line 297
    .line 298
    new-instance v13, Lcom/mycompany/app/web/WebHmgLoad;

    .line 299
    .line 300
    iget-object v14, v3, Lcom/mycompany/app/web/WebHmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 301
    .line 302
    iget-object v15, v3, Lcom/mycompany/app/web/WebHmgDialog;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 303
    .line 304
    new-instance v0, Lcom/mycompany/app/web/WebHmgDialog$28;

    .line 305
    .line 306
    invoke-direct {v0, v3}, Lcom/mycompany/app/web/WebHmgDialog$28;-><init>(Lcom/mycompany/app/web/WebHmgDialog;)V

    .line 307
    .line 308
    .line 309
    const/16 v18, 0x0

    .line 310
    .line 311
    move-object/from16 v19, v0

    .line 312
    .line 313
    invoke-direct/range {v13 .. v19}, Lcom/mycompany/app/web/WebHmgLoad;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;)V

    .line 314
    .line 315
    .line 316
    iput-object v13, v3, Lcom/mycompany/app/web/WebHmgDialog;->z0:Lcom/mycompany/app/web/WebHmgLoad;

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_14
    move v4, v7

    .line 320
    :goto_5
    iget-object v0, v3, Lcom/mycompany/app/web/WebHmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 321
    .line 322
    if-eqz v0, :cond_15

    .line 323
    .line 324
    const-string v1, "0 / 0"

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    :cond_15
    if-eqz v4, :cond_16

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebHmgDialog;->I()V

    .line 332
    .line 333
    .line 334
    :cond_16
    :goto_6
    iget-object v0, v3, Lcom/mycompany/app/web/WebHmgDialog;->j0:Ljava/util/List;

    .line 335
    .line 336
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 337
    .line 338
    invoke-virtual {v3, v1, v0}, Lcom/mycompany/app/web/WebHmgDialog;->z(ILjava/util/List;)V

    .line 339
    .line 340
    .line 341
    return-void
.end method
