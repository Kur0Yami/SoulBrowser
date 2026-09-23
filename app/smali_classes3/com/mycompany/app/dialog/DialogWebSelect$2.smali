.class Lcom/mycompany/app/dialog/DialogWebSelect$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebSelect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebSelect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebSelect$2;->c:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebSelect$2;->c:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->c0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->d0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 6
    .line 7
    if-eqz v2, :cond_a

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x6

    .line 26
    const/16 v7, 0xb

    .line 27
    .line 28
    const/4 v8, 0x5

    .line 29
    const/16 v9, 0xa

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x4

    .line 33
    if-eqz v2, :cond_5

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_24:I

    .line 40
    .line 41
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 42
    .line 43
    invoke-direct {v1, v11, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 50
    .line 51
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_photo_camera_dark_24:I

    .line 52
    .line 53
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 54
    .line 55
    invoke-direct {v1, v9, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 62
    .line 63
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 64
    .line 65
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 66
    .line 67
    invoke-direct {v1, v8, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 74
    .line 75
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_videocam_dark_24:I

    .line 76
    .line 77
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camcorder:I

    .line 78
    .line 79
    invoke-direct {v1, v7, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 86
    .line 87
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_dark_24:I

    .line 88
    .line 89
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 90
    .line 91
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 98
    .line 99
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_dark_24:I

    .line 100
    .line 101
    sget v3, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 102
    .line 103
    invoke-direct {v1, v10, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_1
    and-int/lit8 v2, v1, 0x2

    .line 112
    .line 113
    if-ne v2, v5, :cond_2

    .line 114
    .line 115
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 116
    .line 117
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_24:I

    .line 118
    .line 119
    sget v12, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 120
    .line 121
    invoke-direct {v2, v11, v5, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 128
    .line 129
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_photo_camera_dark_24:I

    .line 130
    .line 131
    sget v12, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 132
    .line 133
    invoke-direct {v2, v9, v5, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_2
    and-int/lit8 v2, v1, 0x4

    .line 140
    .line 141
    if-ne v2, v11, :cond_3

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 144
    .line 145
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 146
    .line 147
    sget v9, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 148
    .line 149
    invoke-direct {v2, v8, v5, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 156
    .line 157
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_videocam_dark_24:I

    .line 158
    .line 159
    sget v8, Lnet/kaki87/soul2/testing/R$string;->camcorder:I

    .line 160
    .line 161
    invoke-direct {v2, v7, v5, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_3
    and-int/2addr v1, v3

    .line 168
    if-ne v1, v3, :cond_4

    .line 169
    .line 170
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 171
    .line 172
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_dark_24:I

    .line 173
    .line 174
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 175
    .line 176
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 183
    .line 184
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_dark_24:I

    .line 185
    .line 186
    sget v3, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 187
    .line 188
    invoke-direct {v1, v10, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_5
    if-nez v1, :cond_6

    .line 197
    .line 198
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 199
    .line 200
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 201
    .line 202
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 203
    .line 204
    invoke-direct {v1, v11, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 211
    .line 212
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_photo_camera_black_24:I

    .line 213
    .line 214
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 215
    .line 216
    invoke-direct {v1, v9, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 223
    .line 224
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 225
    .line 226
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 227
    .line 228
    invoke-direct {v1, v8, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 235
    .line 236
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_videocam_black_24:I

    .line 237
    .line 238
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camcorder:I

    .line 239
    .line 240
    invoke-direct {v1, v7, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 247
    .line 248
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_black_24:I

    .line 249
    .line 250
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 251
    .line 252
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 259
    .line 260
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 261
    .line 262
    sget v3, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 263
    .line 264
    invoke-direct {v1, v10, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_6
    and-int/lit8 v2, v1, 0x2

    .line 272
    .line 273
    if-ne v2, v5, :cond_7

    .line 274
    .line 275
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 276
    .line 277
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 278
    .line 279
    sget v12, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 280
    .line 281
    invoke-direct {v2, v11, v5, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 288
    .line 289
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_photo_camera_black_24:I

    .line 290
    .line 291
    sget v12, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 292
    .line 293
    invoke-direct {v2, v9, v5, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :cond_7
    and-int/lit8 v2, v1, 0x4

    .line 300
    .line 301
    if-ne v2, v11, :cond_8

    .line 302
    .line 303
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 304
    .line 305
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 306
    .line 307
    sget v9, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 308
    .line 309
    invoke-direct {v2, v8, v5, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 316
    .line 317
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_videocam_black_24:I

    .line 318
    .line 319
    sget v8, Lnet/kaki87/soul2/testing/R$string;->camcorder:I

    .line 320
    .line 321
    invoke-direct {v2, v7, v5, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    :cond_8
    and-int/2addr v1, v3

    .line 328
    if-ne v1, v3, :cond_9

    .line 329
    .line 330
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 331
    .line 332
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_black_24:I

    .line 333
    .line 334
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 335
    .line 336
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    :cond_9
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 343
    .line 344
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 345
    .line 346
    sget v3, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 347
    .line 348
    invoke-direct {v1, v10, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    :goto_0
    new-instance v3, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 355
    .line 356
    new-instance v8, Lcom/mycompany/app/dialog/DialogWebSelect$3;

    .line 357
    .line 358
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogWebSelect$3;-><init>(Lcom/mycompany/app/dialog/DialogWebSelect;)V

    .line 359
    .line 360
    .line 361
    const/4 v5, -0x1

    .line 362
    const/4 v6, 0x5

    .line 363
    const/4 v7, 0x0

    .line 364
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 365
    .line 366
    .line 367
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->g0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 368
    .line 369
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 370
    .line 371
    const/4 v2, 0x1

    .line 372
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 376
    .line 377
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->g0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->d0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 383
    .line 384
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebSelect$4;

    .line 385
    .line 386
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebSelect$4;-><init>(Lcom/mycompany/app/dialog/DialogWebSelect;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 390
    .line 391
    .line 392
    :cond_a
    :goto_1
    return-void
.end method
