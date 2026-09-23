.class Lcom/mycompany/app/web/WebViewActivity$661;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$661;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$661;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Hc:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-nez v2, :cond_5

    .line 19
    .line 20
    iget v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ma:I

    .line 21
    .line 22
    if-eqz v7, :cond_5

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->g4:Lcom/mycompany/app/view/MyGesNoti;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyGesNoti;->e()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ma:I

    .line 32
    .line 33
    if-ne v2, v5, :cond_2

    .line 34
    .line 35
    sget v2, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 36
    .line 37
    invoke-virtual {v0, v6, v2}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_2
    if-ne v2, v3, :cond_3

    .line 43
    .line 44
    sget v2, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 45
    .line 46
    invoke-virtual {v0, v6, v2}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_3
    if-ne v2, v4, :cond_4

    .line 52
    .line 53
    sget v2, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 54
    .line 55
    invoke-virtual {v0, v6, v2}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_4
    const/4 v7, 0x4

    .line 61
    if-ne v2, v7, :cond_1b

    .line 62
    .line 63
    sget v2, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 64
    .line 65
    invoke-virtual {v0, v6, v2}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_5
    if-ne v2, v4, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Z6(I)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_6
    iget v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ga:I

    .line 78
    .line 79
    if-nez v7, :cond_12

    .line 80
    .line 81
    if-ne v2, v5, :cond_c

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->W5()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Y6(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    move v2, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_8
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :goto_0
    if-eqz v2, :cond_b

    .line 107
    .line 108
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 109
    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_9
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 118
    .line 119
    if-eqz v2, :cond_a

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Q7()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_a
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_4

    .line 130
    .line 131
    :cond_b
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->P6(ZZ)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :cond_c
    if-ne v2, v3, :cond_1a

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->V5()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_d

    .line 143
    .line 144
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Y6(I)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_d
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 152
    .line 153
    if-nez v2, :cond_e

    .line 154
    .line 155
    move v2, v1

    .line 156
    goto :goto_1

    .line 157
    :cond_e
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    :goto_1
    if-eqz v2, :cond_11

    .line 162
    .line 163
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 164
    .line 165
    if-eqz v2, :cond_f

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_f
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 173
    .line 174
    if-eqz v2, :cond_10

    .line 175
    .line 176
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_10
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Q7()V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_11
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->P6(ZZ)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_12
    if-ne v7, v5, :cond_19

    .line 189
    .line 190
    if-ne v2, v5, :cond_15

    .line 191
    .line 192
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 193
    .line 194
    if-eqz v2, :cond_14

    .line 195
    .line 196
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 197
    .line 198
    if-eqz v2, :cond_14

    .line 199
    .line 200
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 201
    .line 202
    if-nez v2, :cond_13

    .line 203
    .line 204
    move v2, v1

    .line 205
    goto :goto_2

    .line 206
    :cond_13
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    :goto_2
    if-eqz v2, :cond_14

    .line 211
    .line 212
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_14
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Q6(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_15
    if-ne v2, v3, :cond_18

    .line 223
    .line 224
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 225
    .line 226
    if-eqz v2, :cond_17

    .line 227
    .line 228
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 229
    .line 230
    if-eqz v2, :cond_17

    .line 231
    .line 232
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 233
    .line 234
    if-nez v2, :cond_16

    .line 235
    .line 236
    move v2, v1

    .line 237
    goto :goto_3

    .line 238
    :cond_16
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    :goto_3
    if-eqz v2, :cond_17

    .line 243
    .line 244
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_17
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Q6(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_18
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Q6(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_19
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Q6(I)V

    .line 259
    .line 260
    .line 261
    :cond_1a
    :goto_4
    move v5, v1

    .line 262
    :cond_1b
    :goto_5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F3()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_1d

    .line 267
    .line 268
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 269
    .line 270
    if-eqz v2, :cond_1c

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 273
    .line 274
    .line 275
    :cond_1c
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 276
    .line 277
    if-eqz v2, :cond_1d

    .line 278
    .line 279
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 280
    .line 281
    .line 282
    :cond_1d
    if-nez v5, :cond_1e

    .line 283
    .line 284
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->g4:Lcom/mycompany/app/view/MyGesNoti;

    .line 285
    .line 286
    if-eqz v2, :cond_1e

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyGesNoti;->d()V

    .line 289
    .line 290
    .line 291
    :cond_1e
    sget v2, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 292
    .line 293
    if-eqz v2, :cond_1f

    .line 294
    .line 295
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->v3:Lcom/mycompany/app/view/MyScrollBar;

    .line 296
    .line 297
    if-eqz v2, :cond_1f

    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 300
    .line 301
    .line 302
    :cond_1f
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 303
    .line 304
    if-eqz v2, :cond_20

    .line 305
    .line 306
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->M2:Lcom/mycompany/app/pull/MyPullView;

    .line 307
    .line 308
    if-eqz v2, :cond_20

    .line 309
    .line 310
    invoke-virtual {v2}, Lcom/mycompany/app/pull/MyPullView;->g()V

    .line 311
    .line 312
    .line 313
    :cond_20
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T3:Lcom/mycompany/app/wview/WebDownView;

    .line 314
    .line 315
    if-nez v2, :cond_21

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_21
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Oi:Z

    .line 319
    .line 320
    if-nez v2, :cond_22

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_22
    sget v2, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 324
    .line 325
    if-eq v2, v4, :cond_23

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_23
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_24

    .line 335
    .line 336
    move v2, v1

    .line 337
    goto :goto_6

    .line 338
    :cond_24
    const-string v4, "https://m.facebook.com/reel"

    .line 339
    .line 340
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    :goto_6
    if-nez v2, :cond_25

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_25
    iget-object v2, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 348
    .line 349
    if-nez v2, :cond_26

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_26
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$264;

    .line 353
    .line 354
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$264;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    .line 359
    .line 360
    :goto_7
    iput v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ga:I

    .line 361
    .line 362
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ha:I

    .line 363
    .line 364
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 365
    .line 366
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->la:I

    .line 367
    .line 368
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ma:I

    .line 369
    .line 370
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 371
    .line 372
    return-void
.end method
