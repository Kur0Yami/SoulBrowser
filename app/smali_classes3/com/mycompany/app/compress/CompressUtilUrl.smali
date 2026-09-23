.class public Lcom/mycompany/app/compress/CompressUtilUrl;
.super Lcom/mycompany/app/compress/Compress;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/List;


# virtual methods
.method public final M()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x7e

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v1, :cond_10

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/mycompany/app/compress/Compress;->e:I

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    const/4 v6, 0x1

    .line 71
    if-ne v1, v6, :cond_5

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    :cond_4
    :goto_1
    if-ge v0, v1, :cond_e

    .line 78
    .line 79
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    check-cast v6, Ljava/lang/String;

    .line 86
    .line 87
    and-int/lit8 v7, v2, 0x2

    .line 88
    .line 89
    if-ne v7, v5, :cond_4

    .line 90
    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/16 v7, 0x10

    .line 96
    .line 97
    if-ne v1, v5, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :cond_6
    :goto_2
    if-ge v0, v1, :cond_e

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    check-cast v5, Ljava/lang/String;

    .line 112
    .line 113
    and-int/lit8 v6, v2, 0x10

    .line 114
    .line 115
    if-ne v6, v7, :cond_6

    .line 116
    .line 117
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    :cond_8
    :goto_3
    if-ge v0, v1, :cond_e

    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    check-cast v8, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v8, v6}, Lcom/mycompany/app/main/MainUtil;->W3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-eqz v10, :cond_9

    .line 144
    .line 145
    and-int/lit8 v9, v2, 0x40

    .line 146
    .line 147
    const/16 v10, 0x40

    .line 148
    .line 149
    if-ne v9, v10, :cond_8

    .line 150
    .line 151
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    const-string v10, "jpg"

    .line 156
    .line 157
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_a

    .line 162
    .line 163
    and-int/lit8 v9, v2, 0x2

    .line 164
    .line 165
    if-ne v9, v5, :cond_8

    .line 166
    .line 167
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    const-string v10, "png"

    .line 172
    .line 173
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_b

    .line 178
    .line 179
    and-int/lit8 v9, v2, 0x4

    .line 180
    .line 181
    const/4 v10, 0x4

    .line 182
    if-ne v9, v10, :cond_8

    .line 183
    .line 184
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_b
    const-string v10, "gif"

    .line 189
    .line 190
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_c

    .line 195
    .line 196
    and-int/lit8 v9, v2, 0x8

    .line 197
    .line 198
    const/16 v10, 0x8

    .line 199
    .line 200
    if-ne v9, v10, :cond_8

    .line 201
    .line 202
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_c
    const-string v10, "webp"

    .line 207
    .line 208
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_d

    .line 213
    .line 214
    and-int/lit8 v9, v2, 0x10

    .line 215
    .line 216
    if-ne v9, v7, :cond_8

    .line 217
    .line 218
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_d
    and-int/lit8 v9, v2, 0x20

    .line 223
    .line 224
    const/16 v10, 0x20

    .line 225
    .line 226
    if-ne v9, v10, :cond_8

    .line 227
    .line 228
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_f

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_f
    iput-object v3, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 246
    .line 247
    :cond_10
    :goto_4
    return-void
.end method

.method public final R()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final S()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v1, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public final T(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public final U(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/data/DataUrl;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/compress/Compress;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 6
    .line 7
    return-void
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final j(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public final k(I)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public final n(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 27
    .line 28
    return-object p1
.end method

.method public final p(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    if-ltz p1, :cond_6

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilUrl;->l:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->c:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    :try_start_0
    new-instance v4, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    .line 51
    .line 52
    invoke-direct {v4, v2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1, v3}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-object v2, v1

    .line 61
    :goto_0
    if-nez v2, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/4 v3, 0x1

    .line 65
    invoke-static {p1, v1, v1, v3}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->C3(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    move-object v1, p1

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    invoke-static {v2, v0}, Lcom/mycompany/app/main/BitmapUtil;->e(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :goto_2
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_3
    return-object v1
.end method
