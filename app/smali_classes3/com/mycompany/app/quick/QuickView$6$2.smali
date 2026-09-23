.class Lcom/mycompany/app/quick/QuickView$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$6$2;->c:Lcom/mycompany/app/quick/QuickView$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$6$2;->c:Lcom/mycompany/app/quick/QuickView$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v2, v0, Lcom/mycompany/app/quick/QuickView;->J:I

    .line 11
    .line 12
    iget v3, v0, Lcom/mycompany/app/quick/QuickView;->K:I

    .line 13
    .line 14
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    :cond_1
    :goto_0
    move v1, v6

    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_2
    iget v8, v1, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 25
    .line 26
    if-lt v2, v8, :cond_1

    .line 27
    .line 28
    if-ge v3, v8, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget v8, v1, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 36
    .line 37
    sub-int/2addr v4, v8

    .line 38
    if-ge v2, v4, :cond_1

    .line 39
    .line 40
    if-lt v3, v4, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {v1, v3}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez v3, :cond_6

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_6
    iget-boolean v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 58
    .line 59
    if-eqz v4, :cond_7

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_7
    iput-boolean v7, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 63
    .line 64
    iget-boolean v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 65
    .line 66
    if-eqz v4, :cond_c

    .line 67
    .line 68
    iget-boolean v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 69
    .line 70
    if-eqz v8, :cond_c

    .line 71
    .line 72
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->d(Landroid/content/Context;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_8
    iget-object v8, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v9, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v8, v9}, Lcom/mycompany/app/db/book/DbBookQuick;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    if-eqz v8, :cond_b

    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_9

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    move v10, v6

    .line 107
    :goto_1
    if-ge v10, v9, :cond_a

    .line 108
    .line 109
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    add-int/lit8 v10, v10, 0x1

    .line 114
    .line 115
    check-cast v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 116
    .line 117
    iget-object v12, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 118
    .line 119
    iget-object v13, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v11, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v4, v12, v13, v11}, Lcom/mycompany/app/db/book/DbBookQuick;->A(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    add-int/2addr v4, v7

    .line 127
    goto :goto_1

    .line 128
    :cond_a
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 129
    .line 130
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v4, v8, v6}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iput-object v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 144
    .line 145
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 151
    .line 152
    :goto_2
    move v1, v7

    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_b
    :goto_3
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_c
    if-eqz v4, :cond_11

    .line 160
    .line 161
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 162
    .line 163
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_10

    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_d

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    move v10, v6

    .line 183
    move v11, v10

    .line 184
    move v9, v7

    .line 185
    :goto_4
    if-ge v11, v8, :cond_f

    .line 186
    .line 187
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    add-int/lit8 v11, v11, 0x1

    .line 192
    .line 193
    check-cast v12, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 194
    .line 195
    if-eqz v9, :cond_e

    .line 196
    .line 197
    iget-object v9, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 198
    .line 199
    iget-object v12, v12, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 200
    .line 201
    iget-object v13, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 202
    .line 203
    iget v14, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->h:I

    .line 204
    .line 205
    invoke-static {v9, v12, v3, v13, v14}, Lcom/mycompany/app/db/book/DbBookQuick;->u(Landroid/content/Context;Ljava/lang/String;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    move v9, v6

    .line 209
    goto :goto_5

    .line 210
    :cond_e
    iget-object v13, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 211
    .line 212
    iget-object v14, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v12, v12, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v10, v13, v14, v12}, Lcom/mycompany/app/db/book/DbBookQuick;->A(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_f
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 223
    .line 224
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v4, v8, v6}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 227
    .line 228
    .line 229
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 230
    .line 231
    iget-object v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iput-object v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 238
    .line 239
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_10
    :goto_6
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_11
    iget-boolean v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 252
    .line 253
    if-eqz v4, :cond_13

    .line 254
    .line 255
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 256
    .line 257
    iget-object v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->d(Landroid/content/Context;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-nez v4, :cond_12

    .line 264
    .line 265
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_12
    iget-object v8, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 270
    .line 271
    iget-object v9, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 272
    .line 273
    iget-object v10, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v4, v8, v9, v10}, Lcom/mycompany/app/db/book/DbBookQuick;->A(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 279
    .line 280
    iget-object v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    iput-object v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 287
    .line 288
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :cond_13
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 298
    .line 299
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v4, v8, v3, v5, v6}, Lcom/mycompany/app/db/book/DbBookQuick;->u(Landroid/content/Context;Ljava/lang/String;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 305
    .line 306
    iget-object v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {v4, v8}, Lcom/mycompany/app/db/book/DbBookQuick;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    iput-object v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 313
    .line 314
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    iput-boolean v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :goto_7
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->L:Z

    .line 324
    .line 325
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 326
    .line 327
    invoke-virtual {v1, v5}, Lcom/mycompany/app/quick/QuickAdapter;->P(Landroid/view/View;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_14

    .line 332
    .line 333
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->L:Z

    .line 334
    .line 335
    if-eqz v1, :cond_15

    .line 336
    .line 337
    :cond_14
    move v6, v7

    .line 338
    :cond_15
    iput-boolean v6, v0, Lcom/mycompany/app/quick/QuickView;->L:Z

    .line 339
    .line 340
    new-instance v1, Lcom/mycompany/app/quick/QuickView$6$2$1;

    .line 341
    .line 342
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$6$2$1;-><init>(Lcom/mycompany/app/quick/QuickView$6$2;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 346
    .line 347
    .line 348
    return-void
.end method
