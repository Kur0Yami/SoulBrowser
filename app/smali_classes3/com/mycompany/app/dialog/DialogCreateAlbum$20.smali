.class Lcom/mycompany/app/dialog/DialogCreateAlbum$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainDownSvc$DownZipListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_4

    .line 4
    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x3

    .line 17
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 18
    .line 19
    if-eqz v4, :cond_5

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 26
    .line 27
    iget-boolean v6, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->c1:Z

    .line 28
    .line 29
    if-nez v6, :cond_2

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    if-nez v4, :cond_3

    .line 34
    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_4

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    const/4 v5, 0x4

    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    iput v2, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->f1:I

    .line 52
    .line 53
    iput v3, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 54
    .line 55
    iget v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 56
    .line 57
    if-gez v0, :cond_6

    .line 58
    .line 59
    iput v1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 60
    .line 61
    :cond_6
    iget v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 62
    .line 63
    if-le v2, v0, :cond_7

    .line 64
    .line 65
    iput v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->f1:I

    .line 66
    .line 67
    :cond_7
    if-le v3, v0, :cond_8

    .line 68
    .line 69
    iput v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 70
    .line 71
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ge v2, v0, :cond_b

    .line 76
    .line 77
    iget-boolean p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->B1:Z

    .line 78
    .line 79
    if-eqz p1, :cond_9

    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_9
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->B1:Z

    .line 85
    .line 86
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    if-nez p1, :cond_a

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_a
    new-instance v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$1;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$1;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$20;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_b
    iget-boolean v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->c1:Z

    .line 102
    .line 103
    if-nez v0, :cond_c

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_c
    iput-boolean v1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->c1:Z

    .line 108
    .line 109
    iget v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 110
    .line 111
    iget v2, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 112
    .line 113
    if-le v0, v2, :cond_13

    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_f

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 135
    .line 136
    if-nez v2, :cond_d

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_d
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 140
    .line 141
    if-eq v3, v5, :cond_e

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_e
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_f
    iput-object v0, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_13

    .line 157
    .line 158
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x1:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_10

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v2, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y1:Ljava/lang/String;

    .line 173
    .line 174
    const-string v3, "/icon_album"

    .line 175
    .line 176
    invoke-static {p1, v2, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v2, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->w1:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_11

    .line 187
    .line 188
    new-instance v2, Ljava/io/File;

    .line 189
    .line 190
    iget-object v3, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->w1:Ljava/lang/String;

    .line 191
    .line 192
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_11

    .line 200
    .line 201
    iget-object v2, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->w1:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v2, p1}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_11

    .line 208
    .line 209
    iput-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x1:Ljava/lang/String;

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_11
    iget-object v2, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v2}, Lcom/mycompany/app/main/BitmapUtil;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_12

    .line 229
    .line 230
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    int-to-float v3, v3

    .line 243
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 244
    .line 245
    int-to-float v4, v4

    .line 246
    div-float/2addr v3, v4

    .line 247
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    int-to-float v4, v4

    .line 252
    div-float/2addr v4, v3

    .line 253
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    int-to-float v5, v5

    .line 262
    div-float/2addr v5, v3

    .line 263
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-static {v4, v3, v2}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    iget-object v3, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 272
    .line 273
    invoke-static {v3, v2, p1}, Lcom/mycompany/app/main/MainUtil;->p(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_12

    .line 278
    .line 279
    iput-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x1:Ljava/lang/String;

    .line 280
    .line 281
    :cond_12
    :goto_3
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x1:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_13

    .line 288
    .line 289
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x1:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_13
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 295
    .line 296
    if-nez p1, :cond_14

    .line 297
    .line 298
    :goto_4
    return-void

    .line 299
    :cond_14
    new-instance v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$2;

    .line 300
    .line 301
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$2;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$20;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 305
    .line 306
    .line 307
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->c1:Z

    .line 4
    .line 5
    return v0
.end method
