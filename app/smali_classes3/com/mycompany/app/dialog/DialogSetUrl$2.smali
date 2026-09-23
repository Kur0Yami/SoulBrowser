.class Lcom/mycompany/app/dialog/DialogSetUrl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUrl$2;->c:Lcom/mycompany/app/dialog/DialogSetUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUrl$2;->c:Lcom/mycompany/app/dialog/DialogSetUrl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->i0:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->h0:Z

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->d0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 8
    .line 9
    if-eqz v3, :cond_7

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->a0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 23
    .line 24
    const/4 v4, 0x7

    .line 25
    const/4 v6, 0x6

    .line 26
    const/4 v7, 0x5

    .line 27
    const/4 v8, 0x4

    .line 28
    const/4 v9, 0x3

    .line 29
    const/4 v10, 0x2

    .line 30
    const/4 v11, 0x1

    .line 31
    const/4 v12, 0x0

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 37
    .line 38
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_dark_24:I

    .line 39
    .line 40
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_book:I

    .line 41
    .line 42
    invoke-direct {v1, v12, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 49
    .line 50
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_home_dark_24:I

    .line 51
    .line 52
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_quick:I

    .line 53
    .line 54
    invoke-direct {v1, v11, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 61
    .line 62
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_to_home_screen_dark_24:I

    .line 63
    .line 64
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_home_2:I

    .line 65
    .line 66
    invoke-direct {v1, v10, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 73
    .line 74
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_24:I

    .line 75
    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$string;->set_homepage:I

    .line 77
    .line 78
    invoke-direct {v1, v9, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 85
    .line 86
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_electric_bolt_dark_24:I

    .line 87
    .line 88
    sget v3, Lnet/kaki87/soul2/testing/R$string;->set_startpage:I

    .line 89
    .line 90
    invoke-direct {v1, v8, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 99
    .line 100
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_dark_24:I

    .line 101
    .line 102
    sget v13, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    .line 103
    .line 104
    invoke-direct {v2, v12, v3, v13}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 111
    .line 112
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    .line 113
    .line 114
    sget v12, Lnet/kaki87/soul2/testing/R$string;->share_url:I

    .line 115
    .line 116
    invoke-direct {v2, v11, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 123
    .line 124
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_paste_dark_24:I

    .line 125
    .line 126
    sget v12, Lnet/kaki87/soul2/testing/R$string;->paste_url:I

    .line 127
    .line 128
    invoke-direct {v2, v10, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 135
    .line 136
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_dark_24:I

    .line 137
    .line 138
    sget v10, Lnet/kaki87/soul2/testing/R$string;->open_copied_url:I

    .line 139
    .line 140
    invoke-direct {v2, v9, v3, v10}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 147
    .line 148
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_dark_24:I

    .line 149
    .line 150
    sget v9, Lnet/kaki87/soul2/testing/R$string;->open_new_tab:I

    .line 151
    .line 152
    invoke-direct {v2, v8, v3, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 159
    .line 160
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_dark_24:I

    .line 161
    .line 162
    sget v8, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 163
    .line 164
    invoke-direct {v2, v7, v3, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->c0:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_2

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 179
    .line 180
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_copyright_dark_24:I

    .line 181
    .line 182
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->c0:Ljava/lang/String;

    .line 183
    .line 184
    invoke-direct {v2, v6, v3, v7}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(IILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_2
    if-eqz v1, :cond_6

    .line 191
    .line 192
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 193
    .line 194
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_dark_24:I

    .line 195
    .line 196
    sget v3, Lnet/kaki87/soul2/testing/R$string;->view_certi:I

    .line 197
    .line 198
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_3
    if-eqz v2, :cond_4

    .line 207
    .line 208
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 209
    .line 210
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_black_24:I

    .line 211
    .line 212
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_book:I

    .line 213
    .line 214
    invoke-direct {v1, v12, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 221
    .line 222
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_home_black_24:I

    .line 223
    .line 224
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_quick:I

    .line 225
    .line 226
    invoke-direct {v1, v11, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 233
    .line 234
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_to_home_screen_black_24:I

    .line 235
    .line 236
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_home_2:I

    .line 237
    .line 238
    invoke-direct {v1, v10, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 245
    .line 246
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 247
    .line 248
    sget v3, Lnet/kaki87/soul2/testing/R$string;->set_homepage:I

    .line 249
    .line 250
    invoke-direct {v1, v9, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 257
    .line 258
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_electric_bolt_black_24:I

    .line 259
    .line 260
    sget v3, Lnet/kaki87/soul2/testing/R$string;->set_startpage:I

    .line 261
    .line 262
    invoke-direct {v1, v8, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_4
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 270
    .line 271
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_black_24:I

    .line 272
    .line 273
    sget v13, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    .line 274
    .line 275
    invoke-direct {v2, v12, v3, v13}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 282
    .line 283
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    .line 284
    .line 285
    sget v12, Lnet/kaki87/soul2/testing/R$string;->share_url:I

    .line 286
    .line 287
    invoke-direct {v2, v11, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 294
    .line 295
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_paste_black_24:I

    .line 296
    .line 297
    sget v12, Lnet/kaki87/soul2/testing/R$string;->paste_url:I

    .line 298
    .line 299
    invoke-direct {v2, v10, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 306
    .line 307
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_black_24:I

    .line 308
    .line 309
    sget v10, Lnet/kaki87/soul2/testing/R$string;->open_copied_url:I

    .line 310
    .line 311
    invoke-direct {v2, v9, v3, v10}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 318
    .line 319
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_black_24:I

    .line 320
    .line 321
    sget v9, Lnet/kaki87/soul2/testing/R$string;->open_new_tab:I

    .line 322
    .line 323
    invoke-direct {v2, v8, v3, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 330
    .line 331
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_black_24:I

    .line 332
    .line 333
    sget v8, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 334
    .line 335
    invoke-direct {v2, v7, v3, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->c0:Ljava/lang/String;

    .line 342
    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_5

    .line 348
    .line 349
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 350
    .line 351
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_copyright_black_24:I

    .line 352
    .line 353
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->c0:Ljava/lang/String;

    .line 354
    .line 355
    invoke-direct {v2, v6, v3, v7}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(IILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    :cond_5
    if-eqz v1, :cond_6

    .line 362
    .line 363
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 364
    .line 365
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 366
    .line 367
    sget v3, Lnet/kaki87/soul2/testing/R$string;->view_certi:I

    .line 368
    .line 369
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_6
    :goto_0
    new-instance v4, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 376
    .line 377
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetUrl$3;

    .line 378
    .line 379
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogSetUrl$3;-><init>(Lcom/mycompany/app/dialog/DialogSetUrl;)V

    .line 380
    .line 381
    .line 382
    const/4 v6, -0x1

    .line 383
    const/4 v7, 0x5

    .line 384
    const/4 v8, 0x0

    .line 385
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 386
    .line 387
    .line 388
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->g0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 389
    .line 390
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 391
    .line 392
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 396
    .line 397
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->g0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 400
    .line 401
    .line 402
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->d0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 403
    .line 404
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetUrl$4;

    .line 405
    .line 406
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetUrl$4;-><init>(Lcom/mycompany/app/dialog/DialogSetUrl;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 410
    .line 411
    .line 412
    :cond_7
    :goto_1
    return-void
.end method
