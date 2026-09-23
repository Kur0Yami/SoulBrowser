.class Lcom/mycompany/app/web/WebEmgTask$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebEmgTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgTask;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebEmgTask;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->i:I

    .line 33
    .line 34
    iput p1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->j:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/web/WebEmgTask;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->g:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 36
    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_4
    const-string v2, "a"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_c

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_c

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    move v5, v3

    .line 61
    :cond_5
    :goto_0
    if-ge v5, v4, :cond_c

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 70
    .line 71
    if-nez v6, :cond_6

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 75
    .line 76
    if-nez v7, :cond_7

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_7
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_5

    .line 93
    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lorg/jsoup/nodes/Attribute;

    .line 99
    .line 100
    if-nez v7, :cond_9

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_9
    iget-boolean v8, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 104
    .line 105
    if-nez v8, :cond_a

    .line 106
    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :cond_a
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_b

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_b
    iget-object v8, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_8

    .line 127
    .line 128
    iget-object v8, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_c
    const-string v2, "span"

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_12

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_12

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    move v5, v3

    .line 153
    :goto_2
    if-ge v5, v4, :cond_12

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    add-int/lit8 v5, v5, 0x1

    .line 160
    .line 161
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 162
    .line 163
    if-nez v6, :cond_d

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_d
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 167
    .line 168
    if-nez v7, :cond_e

    .line 169
    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :cond_e
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_f

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_f
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    iget v7, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->i:I

    .line 188
    .line 189
    const/4 v8, -0x1

    .line 190
    if-ne v7, v8, :cond_10

    .line 191
    .line 192
    iput v6, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->i:I

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    iput v7, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->i:I

    .line 200
    .line 201
    :goto_3
    iget v7, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->j:I

    .line 202
    .line 203
    if-ne v7, v8, :cond_11

    .line 204
    .line 205
    iput v6, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->j:I

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_11
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    iput v6, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->j:I

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_12
    const-string v2, "img"

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_19

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_19

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    :cond_13
    :goto_4
    if-ge v3, v2, :cond_19

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    add-int/lit8 v3, v3, 0x1

    .line 240
    .line 241
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 242
    .line 243
    if-nez v4, :cond_14

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_14
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 247
    .line 248
    if-nez v5, :cond_15

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_15
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_13

    .line 264
    .line 265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Lorg/jsoup/nodes/Attribute;

    .line 270
    .line 271
    if-nez v5, :cond_16

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_16
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 275
    .line 276
    if-nez v6, :cond_17

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_17
    invoke-virtual {v5}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->n5(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-nez v6, :cond_18

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_18
    iput-object v5, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :catch_0
    :cond_19
    :goto_6
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebEmgTask;

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->g:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->k:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebEmgTask;

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget v3, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->i:I

    .line 25
    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    iget v4, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->j:I

    .line 29
    .line 30
    iget-object v5, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->k:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;->c(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->f:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->g:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->k:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebEmgTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;->b()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
.end method
