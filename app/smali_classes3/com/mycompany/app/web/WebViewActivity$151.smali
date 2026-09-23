.class Lcom/mycompany/app/web/WebViewActivity$151;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$151;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$151;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->jg:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->jg:Z

    .line 7
    .line 8
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->kg:Z

    .line 9
    .line 10
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->lg:Z

    .line 11
    .line 12
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->mg:Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;

    .line 13
    .line 14
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->ng:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->mg:Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;

    .line 18
    .line 19
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ng:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 20
    .line 21
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 22
    .line 23
    if-eqz v7, :cond_27

    .line 24
    .line 25
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    if-nez v8, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 32
    .line 33
    const/4 v10, 0x2

    .line 34
    const/4 v11, 0x1

    .line 35
    if-eqz v9, :cond_3

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    iget-object v3, v7, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ge v3, v10, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v3, v7, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 52
    .line 53
    if-lez v3, :cond_6

    .line 54
    .line 55
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-virtual {v0, v1, v11, v6}, Lcom/mycompany/app/web/WebViewActivity;->k6(IZLcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 59
    .line 60
    .line 61
    if-eqz v5, :cond_26

    .line 62
    .line 63
    invoke-interface {v5, v11}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    if-eqz v3, :cond_6

    .line 68
    .line 69
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/mycompany/app/web/WebNestView;->goBack()V

    .line 72
    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 77
    .line 78
    .line 79
    :cond_4
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-interface {v5, v11}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 85
    .line 86
    return-void

    .line 87
    :cond_6
    :goto_0
    sget-boolean v3, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 88
    .line 89
    if-eqz v3, :cond_10

    .line 90
    .line 91
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 92
    .line 93
    if-nez v3, :cond_10

    .line 94
    .line 95
    sget-boolean v1, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 96
    .line 97
    if-eqz v1, :cond_d

    .line 98
    .line 99
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_7

    .line 106
    .line 107
    move v1, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_7
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->o:Z

    .line 110
    .line 111
    :goto_1
    if-eqz v1, :cond_a

    .line 112
    .line 113
    iput-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->P1:Z

    .line 114
    .line 115
    if-eqz v6, :cond_8

    .line 116
    .line 117
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 118
    .line 119
    .line 120
    :cond_8
    if-eqz v5, :cond_9

    .line 121
    .line 122
    invoke-interface {v5, v2}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 123
    .line 124
    .line 125
    :cond_9
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 126
    .line 127
    return-void

    .line 128
    :cond_a
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->g3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-nez v1, :cond_d

    .line 135
    .line 136
    if-eqz v6, :cond_b

    .line 137
    .line 138
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 139
    .line 140
    .line 141
    :cond_b
    if-eqz v5, :cond_c

    .line 142
    .line 143
    invoke-interface {v5, v2}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 144
    .line 145
    .line 146
    :cond_c
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 147
    .line 148
    return-void

    .line 149
    :cond_d
    iput-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 150
    .line 151
    sget v1, Lnet/kaki87/soul2/testing/R$string;->last_page_noti:I

    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 154
    .line 155
    .line 156
    if-eqz v6, :cond_e

    .line 157
    .line 158
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 159
    .line 160
    .line 161
    :cond_e
    if-eqz v5, :cond_f

    .line 162
    .line 163
    invoke-interface {v5, v11}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 164
    .line 165
    .line 166
    :cond_f
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 167
    .line 168
    return-void

    .line 169
    :cond_10
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-nez v3, :cond_11

    .line 176
    .line 177
    move v3, v2

    .line 178
    goto :goto_2

    .line 179
    :cond_11
    iget-boolean v3, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->o:Z

    .line 180
    .line 181
    :goto_2
    if-eqz v3, :cond_14

    .line 182
    .line 183
    iput-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->P1:Z

    .line 184
    .line 185
    if-eqz v6, :cond_12

    .line 186
    .line 187
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 188
    .line 189
    .line 190
    :cond_12
    if-eqz v5, :cond_13

    .line 191
    .line 192
    invoke-interface {v5, v2}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 193
    .line 194
    .line 195
    :cond_13
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 196
    .line 197
    return-void

    .line 198
    :cond_14
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 199
    .line 200
    if-eqz v3, :cond_17

    .line 201
    .line 202
    if-eqz v6, :cond_15

    .line 203
    .line 204
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 205
    .line 206
    .line 207
    :cond_15
    if-eqz v5, :cond_16

    .line 208
    .line 209
    invoke-interface {v5, v2}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 210
    .line 211
    .line 212
    :cond_16
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 213
    .line 214
    return-void

    .line 215
    :cond_17
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->g3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-nez v3, :cond_1a

    .line 222
    .line 223
    if-eqz v6, :cond_18

    .line 224
    .line 225
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 226
    .line 227
    .line 228
    :cond_18
    if-eqz v5, :cond_19

    .line 229
    .line 230
    invoke-interface {v5, v2}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 231
    .line 232
    .line 233
    :cond_19
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 234
    .line 235
    return-void

    .line 236
    :cond_1a
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 237
    .line 238
    if-nez v7, :cond_1c

    .line 239
    .line 240
    if-eqz v6, :cond_1b

    .line 241
    .line 242
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 243
    .line 244
    .line 245
    :cond_1b
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_1c
    if-eqz v1, :cond_1f

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->e2()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_1f

    .line 255
    .line 256
    sget-boolean v1, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 257
    .line 258
    if-eqz v1, :cond_1d

    .line 259
    .line 260
    sget v1, Lnet/kaki87/soul2/testing/R$string;->last_page_noti:I

    .line 261
    .line 262
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 263
    .line 264
    .line 265
    :cond_1d
    if-eqz v6, :cond_1e

    .line 266
    .line 267
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 268
    .line 269
    .line 270
    :cond_1e
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_1f
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v11}, Lcom/mycompany/app/web/WebViewActivity;->t6(Z)V

    .line 277
    .line 278
    .line 279
    if-eqz v4, :cond_25

    .line 280
    .line 281
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 282
    .line 283
    if-nez v1, :cond_20

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_20
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->T2:I

    .line 287
    .line 288
    if-eqz v1, :cond_22

    .line 289
    .line 290
    if-eqz v6, :cond_21

    .line 291
    .line 292
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 293
    .line 294
    .line 295
    :cond_21
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_22
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 299
    .line 300
    const/high16 v4, 0x3f000000    # 0.5f

    .line 301
    .line 302
    if-eqz v1, :cond_23

    .line 303
    .line 304
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    int-to-float v1, v1

    .line 311
    sub-float v4, v1, v4

    .line 312
    .line 313
    :cond_23
    invoke-virtual {v0, v4, v10, v2}, Lcom/mycompany/app/web/WebViewActivity;->X6(FIZ)V

    .line 314
    .line 315
    .line 316
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->og:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 317
    .line 318
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->pg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 321
    .line 322
    if-nez v1, :cond_24

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_24
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$152;

    .line 326
    .line 327
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$152;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_25
    :goto_3
    invoke-virtual {v0, v3, v6}, Lcom/mycompany/app/web/WebViewActivity;->h8(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 335
    .line 336
    .line 337
    :goto_4
    if-eqz v5, :cond_26

    .line 338
    .line 339
    invoke-interface {v5, v11}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 340
    .line 341
    .line 342
    :cond_26
    return-void

    .line 343
    :cond_27
    :goto_5
    if-eqz v6, :cond_28

    .line 344
    .line 345
    invoke-interface {v6}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 346
    .line 347
    .line 348
    :cond_28
    if-eqz v5, :cond_29

    .line 349
    .line 350
    invoke-interface {v5, v2}, Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;->a(Z)V

    .line 351
    .line 352
    .line 353
    :cond_29
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 354
    .line 355
    return-void
.end method
