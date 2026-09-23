.class Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Lcom/mycompany/app/compress/Compress;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public j:Lcom/mycompany/app/main/MainItem$ChildItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->f:Lcom/mycompany/app/compress/Compress;

    .line 23
    .line 24
    iget v1, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 25
    .line 26
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->g:I

    .line 27
    .line 28
    iget-object v2, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v3}, Lcom/mycompany/app/dialog/DialogListBook;->t(Z)V

    .line 35
    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->h:Ljava/lang/String;

    .line 45
    .line 46
    iget p1, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 47
    .line 48
    const/16 v0, 0xc

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v3, 0x0

    .line 54
    :goto_1
    iput-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->i:Z

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->f:Lcom/mycompany/app/compress/Compress;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_2
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->h:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    iget-boolean v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->i:Z

    .line 30
    .line 31
    if-ne v2, v5, :cond_3

    .line 32
    .line 33
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v2, v7, v3}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v4, v2, v6}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {v1, v4, v5, v6}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_5

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move-object v4, v2

    .line 66
    :goto_0
    move v2, v5

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-static {v2, v7, v8}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v1, v4, v2, v6}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    goto :goto_0

    .line 84
    :goto_2
    if-eqz v4, :cond_6

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_7

    .line 91
    .line 92
    :cond_6
    if-nez v6, :cond_7

    .line 93
    .line 94
    new-instance v4, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    const/16 v6, 0x8

    .line 100
    .line 101
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 102
    .line 103
    iput-object v1, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v1, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 108
    .line 109
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->g:I

    .line 110
    .line 111
    iput v1, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 112
    .line 113
    iput v2, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 114
    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 120
    .line 121
    invoke-virtual {v1, v4, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->j(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    :cond_7
    if-eqz v4, :cond_8

    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_8

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    int-to-float v1, v1

    .line 146
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    int-to-float v2, v2

    .line 149
    div-float/2addr v1, v2

    .line 150
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    int-to-float v2, v2

    .line 155
    div-float/2addr v2, v1

    .line 156
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    int-to-float v6, v6

    .line 165
    div-float/2addr v6, v1

    .line 166
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v2, v1, v4}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :goto_3
    move-object v12, v1

    .line 175
    goto :goto_4

    .line 176
    :cond_8
    const/4 v1, 0x0

    .line 177
    goto :goto_3

    .line 178
    :goto_4
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 179
    .line 180
    if-ne v1, v3, :cond_9

    .line 181
    .line 182
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 183
    .line 184
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 187
    .line 188
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 189
    .line 190
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 191
    .line 192
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 193
    .line 194
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/db/book/DbBookAlbum;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookAlbum;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAlbum;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_9
    if-ne v1, v5, :cond_a

    .line 213
    .line 214
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 215
    .line 216
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 219
    .line 220
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 221
    .line 222
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 223
    .line 224
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 225
    .line 226
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/db/book/DbBookPdf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookPdf;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPdf;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_a
    const/4 v2, 0x3

    .line 245
    if-ne v1, v2, :cond_b

    .line 246
    .line 247
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 248
    .line 249
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 252
    .line 253
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 254
    .line 255
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 256
    .line 257
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 258
    .line 259
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/db/book/DbBookCmp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 266
    .line 267
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookCmp;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookCmp;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 274
    .line 275
    .line 276
    :cond_b
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->h0:Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->h0:Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    iget-wide v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v3, v4, v2}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void

    .line 38
    :cond_4
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogListBook;->t(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
