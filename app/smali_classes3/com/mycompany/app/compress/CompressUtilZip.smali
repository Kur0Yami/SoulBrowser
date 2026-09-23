.class public Lcom/mycompany/app/compress/CompressUtilZip;
.super Lcom/mycompany/app/compress/Compress;
.source "SourceFile"


# instance fields
.field public l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

.field public m:Lcom/mycompany/app/compress/CompressUtilZip2;


# direct methods
.method public static V(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/4 p1, 0x2

    .line 10
    :try_start_1
    new-array v1, p1, [B

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0, p1}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, p1, :cond_1

    .line 17
    .line 18
    aget-byte p1, v1, v0

    .line 19
    .line 20
    const/16 v2, 0x50

    .line 21
    .line 22
    if-ne p1, v2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    aget-byte v1, v1, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    .line 27
    const/16 v2, 0x4b

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    move v0, p1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const/4 p0, 0x0

    .line 34
    :catch_1
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 35
    .line 36
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 37
    .line 38
    .line 39
    :catch_2
    :cond_2
    return v0
.end method


# virtual methods
.method public final M()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/compress/CompressUtilZip;->N()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_8

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/compress/CompressUtilZip;->s()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    move v1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v0

    .line 23
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v4, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 31
    .line 32
    iget-object v4, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v6, "icon_album"

    .line 36
    .line 37
    if-eqz v4, :cond_b

    .line 38
    .line 39
    iget-object v4, v4, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    :catch_0
    move-object v4, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    if-eqz v4, :cond_1a

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    move v9, v0

    .line 64
    move v8, v1

    .line 65
    :cond_4
    :goto_2
    if-ge v9, v7, :cond_14

    .line 66
    .line 67
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    check-cast v10, Lnet/lingala/zip4j/model/FileHeader;

    .line 74
    .line 75
    if-eqz v10, :cond_4

    .line 76
    .line 77
    iget-boolean v11, v10, Lnet/lingala/zip4j/model/FileHeader;->q:Z

    .line 78
    .line 79
    if-eqz v11, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    iget-object v10, v10, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    if-eqz v8, :cond_8

    .line 87
    .line 88
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_6

    .line 93
    .line 94
    move v8, v0

    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move v8, v0

    .line 97
    goto :goto_3

    .line 98
    :cond_7
    invoke-static {v10, v3, v3}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-nez v11, :cond_8

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_8
    :goto_3
    invoke-static {v10}, Lcom/mycompany/app/compress/CompressUtil;->b(Ljava/lang/String;)Lcom/mycompany/app/compress/Compress$SortItem;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    if-nez v10, :cond_9

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_9
    iget-object v11, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-nez v11, :cond_a

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_b
    iget-object v4, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 122
    .line 123
    if-eqz v4, :cond_14

    .line 124
    .line 125
    iget-object v4, v4, Lorg/apache/commons/compress/archivers/zip/ZipFile;->c:Ljava/util/LinkedList;

    .line 126
    .line 127
    invoke-static {v4}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-nez v4, :cond_c

    .line 132
    .line 133
    goto/16 :goto_8

    .line 134
    .line 135
    :cond_c
    move v7, v1

    .line 136
    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_14

    .line 141
    .line 142
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    check-cast v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 147
    .line 148
    if-eqz v8, :cond_d

    .line 149
    .line 150
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_e

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_e
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    if-eqz v1, :cond_10

    .line 162
    .line 163
    if-eqz v7, :cond_11

    .line 164
    .line 165
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_f

    .line 170
    .line 171
    move v7, v0

    .line 172
    goto :goto_4

    .line 173
    :cond_f
    move v7, v0

    .line 174
    goto :goto_5

    .line 175
    :cond_10
    invoke-static {v8, v3, v3}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-nez v9, :cond_11

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_11
    :goto_5
    invoke-static {v8}, Lcom/mycompany/app/compress/CompressUtil;->b(Ljava/lang/String;)Lcom/mycompany/app/compress/Compress$SortItem;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    if-nez v8, :cond_12

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_12
    iget-object v9, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 190
    .line 191
    if-nez v9, :cond_13

    .line 192
    .line 193
    :goto_6
    iput-object v5, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_13
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_14
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 201
    .line 202
    if-eqz v1, :cond_1a

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_15

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_15
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    iput v1, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 218
    .line 219
    if-lez v1, :cond_1a

    .line 220
    .line 221
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 222
    .line 223
    if-eqz v1, :cond_1a

    .line 224
    .line 225
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 226
    .line 227
    if-nez v1, :cond_16

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_16
    invoke-virtual {p0}, Lcom/mycompany/app/compress/CompressUtilZip;->s()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eq v1, v2, :cond_17

    .line 235
    .line 236
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 237
    .line 238
    new-instance v2, Lcom/mycompany/app/compress/CompressUtil$CompressSort;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 241
    .line 242
    .line 243
    :try_start_1
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    .line 245
    .line 246
    :catch_1
    :cond_17
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    :goto_7
    if-ge v0, v2, :cond_19

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 259
    .line 260
    check-cast v3, Lcom/mycompany/app/compress/Compress$SortItem;

    .line 261
    .line 262
    iget-object v4, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 263
    .line 264
    if-eqz v4, :cond_1a

    .line 265
    .line 266
    iget-object v4, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 267
    .line 268
    if-nez v4, :cond_18

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_18
    iget-object v3, v3, Lcom/mycompany/app/compress/Compress$SortItem;->a:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_19
    iput-object v5, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 278
    .line 279
    :cond_1a
    :goto_8
    return-void
.end method

.method public final N()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_9

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 25
    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->g:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    const-string v4, "UTF-8"

    .line 37
    .line 38
    if-eqz v2, :cond_8

    .line 39
    .line 40
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    const-wide/32 v7, 0x7ff00000

    .line 49
    .line 50
    .line 51
    cmp-long v2, v5, v7

    .line 52
    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/mycompany/app/compress/CompressUtil;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 73
    .line 74
    :cond_3
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v1, v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 84
    .line 85
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->c:Ljava/util/LinkedList;

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    move v1, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_0
    iput v1, p0, Lcom/mycompany/app/compress/Compress;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    move v1, v0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    xor-int/2addr v1, v3

    .line 106
    :goto_1
    if-eqz v1, :cond_6

    .line 107
    .line 108
    :try_start_1
    iput-object v4, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v4, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v1, v2, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 120
    .line 121
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->c:Ljava/util/LinkedList;

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    move v1, v0

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    :goto_2
    iput v1, p0, Lcom/mycompany/app/compress/Compress;->j:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    :catch_1
    :cond_6
    iget v1, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 134
    .line 135
    if-lez v1, :cond_7

    .line 136
    .line 137
    move v0, v3

    .line 138
    :cond_7
    return v0

    .line 139
    :cond_8
    :goto_3
    new-instance v2, Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v2, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_9

    .line 153
    .line 154
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 155
    .line 156
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v2, v5}, Lcom/mycompany/app/compress/CompressUtil;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 163
    .line 164
    :cond_9
    iget-object v2, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 165
    .line 166
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v6, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v7, p0, Lcom/mycompany/app/compress/Compress;->g:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2, v5, v6, v7}, Lcom/mycompany/app/compress/CompressUtilZip2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_c

    .line 177
    .line 178
    iget-object v2, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 179
    .line 180
    iget-object v2, v2, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 181
    .line 182
    if-nez v2, :cond_a

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_a
    :try_start_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    :catch_2
    :goto_4
    if-nez v1, :cond_b

    .line 190
    .line 191
    move v1, v0

    .line 192
    goto :goto_5

    .line 193
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    :goto_5
    iput v1, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_c
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_f

    .line 207
    .line 208
    iput-object v4, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v2, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 211
    .line 212
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v6, p0, Lcom/mycompany/app/compress/Compress;->g:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v2, v5, v4, v6}, Lcom/mycompany/app/compress/CompressUtilZip2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_f

    .line 221
    .line 222
    iget-object v2, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 223
    .line 224
    iget-object v2, v2, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 225
    .line 226
    if-nez v2, :cond_d

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_d
    :try_start_3
    invoke-virtual {v2}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 233
    :catch_3
    :goto_6
    if-nez v1, :cond_e

    .line 234
    .line 235
    move v1, v0

    .line 236
    goto :goto_7

    .line 237
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    :goto_7
    iput v1, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 242
    .line 243
    :cond_f
    :goto_8
    iget v1, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 244
    .line 245
    if-lez v1, :cond_10

    .line 246
    .line 247
    return v3

    .line 248
    :cond_10
    :goto_9
    return v0
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/compress/Compress;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    iput-object v1, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/mycompany/app/compress/CompressUtil$CompressListener;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v8, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_8

    .line 13
    .line 14
    :cond_0
    iget-object v9, v0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 15
    .line 16
    if-eqz v9, :cond_a

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, v9, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_1
    const/4 v10, 0x0

    .line 27
    :try_start_0
    invoke-virtual {v2}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    move-object v11, v2

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object v11, v10

    .line 34
    :goto_0
    if-eqz v11, :cond_a

    .line 35
    .line 36
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->y0(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->x0(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    move v2, v8

    .line 61
    move v3, v2

    .line 62
    :goto_1
    const/4 v4, 0x1

    .line 63
    if-ge v3, v13, :cond_9

    .line 64
    .line 65
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    add-int/lit8 v14, v3, 0x1

    .line 70
    .line 71
    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    .line 72
    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    invoke-interface/range {p2 .. p2}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->isCancelled()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_3
    if-nez v5, :cond_4

    .line 84
    .line 85
    :goto_2
    move v3, v14

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    if-nez v2, :cond_5

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    :try_start_1
    iget-boolean v3, v5, Lnet/lingala/zip4j/model/FileHeader;->q:Z

    .line 93
    .line 94
    if-nez v3, :cond_7

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_6

    .line 106
    .line 107
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    new-array v4, v4, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v7, v4, v8

    .line 116
    .line 117
    invoke-static {v6, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catch_1
    move-object/from16 v7, p2

    .line 126
    .line 127
    move-object v4, v10

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :goto_3
    const-string v4, ".jpg"

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    add-int/lit8 v15, v2, 0x1

    .line 142
    .line 143
    :try_start_2
    iget-object v2, v9, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 144
    .line 145
    invoke-virtual {v2, v5}, Lnet/lingala/zip4j/core/ZipFile;->e(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-wide v5, v5, Lnet/lingala/zip4j/model/FileHeader;->j:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    .line 151
    move-object/from16 v3, p1

    .line 152
    .line 153
    move-object/from16 v7, p2

    .line 154
    .line 155
    :try_start_3
    invoke-static/range {v1 .. v7}, Lcom/mycompany/app/compress/CompressUtil;->e(Landroid/content/Context;Lnet/lingala/zip4j/io/ZipInputStream;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/compress/CompressUtil$CompressListener;)Z

    .line 156
    .line 157
    .line 158
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 159
    goto :goto_6

    .line 160
    :catch_2
    :goto_4
    move v2, v15

    .line 161
    goto :goto_5

    .line 162
    :catch_3
    move-object/from16 v7, p2

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_7
    move-object/from16 v7, p2

    .line 166
    .line 167
    move v15, v2

    .line 168
    move v2, v8

    .line 169
    move-object v4, v10

    .line 170
    goto :goto_6

    .line 171
    :goto_5
    move v15, v2

    .line 172
    move v2, v8

    .line 173
    :goto_6
    if-eqz v7, :cond_8

    .line 174
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    move-object/from16 v5, p1

    .line 181
    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v6, "/"

    .line 186
    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-interface {v7, v3, v2}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->a(Ljava/lang/String;Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_8
    move-object/from16 v5, p1

    .line 202
    .line 203
    :goto_7
    move v3, v14

    .line 204
    move v2, v15

    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_9
    move v8, v4

    .line 208
    :cond_a
    :goto_8
    return v8
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/mycompany/app/compress/CompressUtil;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "debug_logger_tag"

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1, v4}, Lcom/mycompany/app/compress/CompressUtilZip2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    :catch_0
    move-object v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 92
    .line 93
    iget-object v0, v0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    invoke-virtual {p0, v2}, Lcom/mycompany/app/compress/CompressUtilZip;->p(I)Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :cond_7
    :goto_1
    return-object v1
.end method

.method public final e()Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    :cond_1
    new-instance v0, Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v3}, Lcom/mycompany/app/compress/CompressUtil;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->d:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "debug_logger_tag"

    .line 53
    .line 54
    invoke-virtual {v0, v3, v1, v4}, Lcom/mycompany/app/compress/CompressUtilZip2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    :catch_0
    move-object v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    if-eqz v0, :cond_7

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v3, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 93
    .line 94
    iget-object v0, v0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/mycompany/app/compress/CompressUtilZip;->o(Ljava/lang/String;)Ljava/io/InputStream;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :cond_7
    :goto_1
    return-object v1
.end method

.method public final o(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "/"

    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object p1, v1

    .line 38
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, v0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :try_start_0
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->c(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->e(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->f:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/util/LinkedList;

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    move-object p1, v1

    .line 86
    :goto_1
    if-nez p1, :cond_7

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->a(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    return-object p1

    .line 96
    :catch_0
    :goto_2
    return-object v1
.end method

.method public final p(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v0, :cond_d

    .line 15
    .line 16
    if-ltz p1, :cond_d

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    sub-int/2addr v0, v2

    .line 24
    if-le p1, v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->U2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    :catch_0
    :goto_0
    move-object v0, v1

    .line 59
    goto :goto_4

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    iget-object v0, v0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    :try_start_0
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->c(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->e(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v0, Lcom/mycompany/app/compress/CompressUtil;->a:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .line 83
    .line 84
    const/16 v4, 0x2000

    .line 85
    .line 86
    new-array v5, v4, [B

    .line 87
    .line 88
    :goto_1
    invoke-virtual {p1, v5, v3, v4}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    const/4 v7, -0x1

    .line 93
    if-eq v6, v7, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    goto :goto_2

    .line 110
    :catch_1
    move-object v0, v1

    .line 111
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->f:Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Ljava/util/LinkedList;

    .line 127
    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move-object p1, v1

    .line 138
    :goto_3
    if-nez p1, :cond_9

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip;->l:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->a(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 148
    .line 149
    long-to-int p1, v4

    .line 150
    invoke-static {v0, p1}, Lcom/mycompany/app/compress/CompressUtil;->d(Ljava/io/InputStream;I)[B

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 154
    :catch_2
    :goto_4
    if-nez v0, :cond_a

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 158
    .line 159
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    .line 164
    array-length v1, v0

    .line 165
    invoke-static {v0, v1, p1}, Lcom/mycompany/app/main/BitmapUtil;->b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 166
    .line 167
    .line 168
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 169
    .line 170
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 171
    .line 172
    if-gt v1, v2, :cond_b

    .line 173
    .line 174
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 175
    .line 176
    if-le v4, v2, :cond_c

    .line 177
    .line 178
    :cond_b
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 179
    .line 180
    invoke-static {v1, v4, v2, v2}, Lcom/mycompany/app/main/MainUtil;->e0(IIII)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    .line 186
    :cond_c
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    .line 188
    array-length v1, v0

    .line 189
    invoke-static {v0, v1, p1}, Lcom/mycompany/app/main/BitmapUtil;->b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    :cond_d
    :goto_5
    return-object v1
.end method

.method public s()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method
