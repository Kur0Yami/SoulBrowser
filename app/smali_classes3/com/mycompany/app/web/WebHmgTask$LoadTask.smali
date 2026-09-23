.class Lcom/mycompany/app/web/WebHmgTask$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebHmgTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebHmgTask;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgTask;->b:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->g:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p2, p2, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->j:I

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_9

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/web/WebHmgTask;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->C1(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->j:I

    .line 30
    .line 31
    if-gez v1, :cond_3

    .line 32
    .line 33
    goto/16 :goto_9

    .line 34
    .line 35
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->g:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    goto/16 :goto_9

    .line 46
    .line 47
    :cond_4
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 48
    .line 49
    if-nez v2, :cond_5

    .line 50
    .line 51
    goto/16 :goto_9

    .line 52
    .line 53
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v2, :cond_7

    .line 59
    .line 60
    if-nez v3, :cond_6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eq v2, v3, :cond_8

    .line 72
    .line 73
    :cond_7
    :goto_0
    move v2, v4

    .line 74
    :cond_8
    if-eqz v2, :cond_a

    .line 75
    .line 76
    iget v3, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->j:I

    .line 77
    .line 78
    if-lt v3, v2, :cond_9

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_9
    move v3, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_a
    :goto_1
    invoke-static {v1}, Lcom/mycompany/app/web/WebHmgTask;->a(Lorg/jsoup/nodes/Document;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_1d

    .line 88
    .line 89
    iget v5, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->j:I

    .line 90
    .line 91
    if-lt v5, v3, :cond_b

    .line 92
    .line 93
    goto/16 :goto_9

    .line 94
    .line 95
    :cond_b
    :goto_2
    const/4 v5, 0x0

    .line 96
    if-eq v2, v3, :cond_12

    .line 97
    .line 98
    iget-object v2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->f:Ljava/lang/String;

    .line 99
    .line 100
    if-nez v2, :cond_d

    .line 101
    .line 102
    :cond_c
    :goto_3
    move-object v2, v5

    .line 103
    goto :goto_4

    .line 104
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_e

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_e
    const/16 v7, 0x23

    .line 112
    .line 113
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-ltz v7, :cond_c

    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    if-lt v7, v6, :cond_f

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_f
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_10

    .line 133
    .line 134
    goto/16 :goto_9

    .line 135
    .line 136
    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v6, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 142
    .line 143
    new-instance v6, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v6, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 149
    .line 150
    :goto_5
    if-ge v4, v3, :cond_12

    .line 151
    .line 152
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 153
    .line 154
    if-nez v6, :cond_11

    .line 155
    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v7, ".webp"

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v7, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    add-int/lit8 v4, v4, 0x1

    .line 189
    .line 190
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v7, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_12
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 204
    .line 205
    if-nez v2, :cond_13

    .line 206
    .line 207
    goto/16 :goto_9

    .line 208
    .line 209
    :cond_13
    iget v2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->j:I

    .line 210
    .line 211
    iget-object v4, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    const-string v6, "src"

    .line 224
    .line 225
    if-nez v4, :cond_17

    .line 226
    .line 227
    :try_start_1
    const-string v4, "div[id=\'mobileImages\']>picture>img"
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 228
    .line 229
    :try_start_2
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-nez v4, :cond_14

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_14
    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Element;->attribute(Ljava/lang/String;)Lorg/jsoup/nodes/Attribute;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    if-nez v4, :cond_15

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_15
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    goto :goto_7

    .line 248
    :catch_0
    :goto_6
    move-object v4, v5

    .line 249
    :goto_7
    :try_start_3
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-nez v7, :cond_16

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_16
    iget-object v7, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v7, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    :cond_17
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 262
    .line 263
    if-nez v0, :cond_18

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 267
    .line 268
    if-lt v2, v3, :cond_19

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_19
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 272
    .line 273
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_1d

    .line 284
    .line 285
    const-string v0, "div[id=\'preload\']>picture>img"
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 286
    .line 287
    :try_start_4
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-nez v0, :cond_1a

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_1a
    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Element;->attribute(Ljava/lang/String;)Lorg/jsoup/nodes/Attribute;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    if-nez v0, :cond_1b

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_1b
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_2

    .line 305
    :catch_1
    :goto_8
    :try_start_5
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_1c

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_1c
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 313
    .line 314
    invoke-interface {v0, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 315
    .line 316
    .line 317
    :catch_2
    :cond_1d
    :goto_9
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebHmgTask;

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebHmgTask;->e:Lcom/mycompany/app/web/WebHmgTask$LoadTask;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->g:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 25
    .line 26
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebHmgTask;

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebHmgTask;->e:Lcom/mycompany/app/web/WebHmgTask$LoadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 25
    .line 26
    iget v4, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->j:I

    .line 27
    .line 28
    invoke-interface {v0, v2, v3, v4}, Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;->c(Ljava/util/List;Ljava/util/List;I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->f:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->g:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->h:Ljava/util/List;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->i:Ljava/util/List;

    .line 38
    .line 39
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebHmgTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;->b()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
.end method
