.class Lcom/mycompany/app/web/WebViewActivity$171;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->g3:Z

    .line 8
    .line 9
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->j3:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x2

    .line 13
    if-ne p1, v3, :cond_1

    .line 14
    .line 15
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->g3:Z

    .line 16
    .line 17
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->j3:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    if-nez p1, :cond_4

    .line 21
    .line 22
    iget-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->g3:Z

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$171$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$171$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$171;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iput p2, v0, Lcom/mycompany/app/web/WebViewActivity;->i3:I

    .line 10
    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/web/WebTabBarAdapter;->I(II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final c(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_16

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Y2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 9
    .line 10
    iget-object v4, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    if-ltz p1, :cond_16

    .line 17
    .line 18
    if-gez p2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge p1, v4, :cond_16

    .line 27
    .line 28
    if-lt p2, v4, :cond_2

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_3
    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_4

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    iget-object v8, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    if-eqz v8, :cond_c

    .line 56
    .line 57
    iget-object p1, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 69
    .line 70
    if-eqz p1, :cond_a

    .line 71
    .line 72
    iget-object p2, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 73
    .line 74
    if-eqz p2, :cond_7

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_a

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 91
    .line 92
    iget v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 93
    .line 94
    invoke-virtual {v1, v6}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    if-nez v6, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    iget v7, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 102
    .line 103
    invoke-virtual {v1, v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    if-nez v7, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-wide v10, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 111
    .line 112
    iput-wide v10, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 113
    .line 114
    iget-object v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v8, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 117
    .line 118
    iget v7, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 119
    .line 120
    iput v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 121
    .line 122
    iput-boolean v9, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 123
    .line 124
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    iget p2, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 131
    .line 132
    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-nez p2, :cond_8

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_8
    iget p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 141
    .line 142
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-nez p1, :cond_9

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :cond_9
    iget-wide v6, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 151
    .line 152
    iput-wide v6, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 153
    .line 154
    iget-object v6, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v6, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 157
    .line 158
    iget p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 159
    .line 160
    iput p1, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 161
    .line 162
    iput-boolean v9, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 163
    .line 164
    iget-object p1, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_a
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->M(Z)V

    .line 170
    .line 171
    .line 172
    if-nez v3, :cond_b

    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_b
    new-instance p1, Lcom/mycompany/app/web/WebTabBarAdapter$10;

    .line 177
    .line 178
    invoke-direct {p1, v1}, Lcom/mycompany/app/web/WebTabBarAdapter$10;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :cond_c
    iget-object v8, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    iget-object v8, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    iget v8, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 197
    .line 198
    invoke-virtual {v1, v8}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    if-nez v8, :cond_d

    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_d
    iput-wide v6, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 207
    .line 208
    iput-boolean v9, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 209
    .line 210
    iget-object v10, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 211
    .line 212
    if-eqz v10, :cond_f

    .line 213
    .line 214
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    check-cast v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 219
    .line 220
    if-eqz v10, :cond_f

    .line 221
    .line 222
    iget v10, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 223
    .line 224
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    if-nez v10, :cond_e

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_e
    iget-object v11, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 232
    .line 233
    iput-object v11, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 234
    .line 235
    iget v10, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 236
    .line 237
    iput v10, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 238
    .line 239
    :cond_f
    new-instance v8, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    iget-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 248
    .line 249
    if-eqz v5, :cond_11

    .line 250
    .line 251
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_13

    .line 260
    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 266
    .line 267
    iget v10, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 268
    .line 269
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    if-nez v10, :cond_10

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_10
    iput-wide v6, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 277
    .line 278
    iput-boolean v9, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 279
    .line 280
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_11
    iget v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 285
    .line 286
    invoke-virtual {v1, v5}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    if-nez v5, :cond_12

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_12
    iput-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 294
    .line 295
    iput-boolean v9, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 296
    .line 297
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_13
    if-ge p1, p2, :cond_14

    .line 301
    .line 302
    add-int/lit8 p2, p2, -0x1

    .line 303
    .line 304
    :cond_14
    new-instance p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 305
    .line 306
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 307
    .line 308
    .line 309
    iput-object v8, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 310
    .line 311
    iget-object v4, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v4, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->M(Z)V

    .line 317
    .line 318
    .line 319
    if-nez v3, :cond_15

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_15
    new-instance p1, Lcom/mycompany/app/web/WebTabBarAdapter$11;

    .line 323
    .line 324
    invoke-direct {p1, v1}, Lcom/mycompany/app/web/WebTabBarAdapter$11;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 328
    .line 329
    .line 330
    :cond_16
    :goto_2
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->g3:Z

    .line 331
    .line 332
    return-void
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j3:Z

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j3:Z

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->oa:I

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v2, p1}, Lcom/mycompany/app/web/WebViewActivity;->E1(Lcom/mycompany/app/web/WebViewActivity;II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit16 v3, v1, 0x2710

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 43
    .line 44
    :goto_0
    invoke-static {v0, v3, p1}, Lcom/mycompany/app/web/WebViewActivity;->E1(Lcom/mycompany/app/web/WebViewActivity;II)V

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_1
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->k3:I

    .line 4
    .line 5
    return-void
.end method
