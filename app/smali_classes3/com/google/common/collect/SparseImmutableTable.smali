.class final Lcom/google/common/collect/SparseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/google/common/collect/ImmutableMap;

.field public final h:[I

.field public final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/SparseImmutableTable;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 4
    .line 5
    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    sget v2, Lcom/google/common/collect/ImmutableSet;->g:I

    .line 8
    .line 9
    sget-object v2, Lcom/google/common/collect/RegularImmutableSet;->n:Lcom/google/common/collect/RegularImmutableSet;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v2}, Lcom/google/common/collect/SparseImmutableTable;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 36
    .line 37
    .line 38
    move v3, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    new-array p3, p3, [I

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    new-array v4, v4, [I

    .line 112
    .line 113
    move v5, v2

    .line 114
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-ge v5, v6, :cond_5

    .line 119
    .line 120
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/google/common/collect/Table$Cell;

    .line 125
    .line 126
    invoke-interface {v6}, Lcom/google/common/collect/Table$Cell;->b()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-interface {v6}, Lcom/google/common/collect/Table$Cell;->a()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-interface {v6}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    move-object v9, v0

    .line 139
    check-cast v9, Lcom/google/common/collect/RegularImmutableMap;

    .line 140
    .line 141
    invoke-virtual {v9, v7}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Ljava/lang/Integer;

    .line 146
    .line 147
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    aput v9, p3, v5

    .line 155
    .line 156
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    check-cast v9, Ljava/util/Map;

    .line 161
    .line 162
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    check-cast v9, Ljava/util/Map;

    .line 166
    .line 167
    invoke-interface {v9}, Ljava/util/Map;->size()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    aput v10, v4, v5

    .line 172
    .line 173
    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    if-nez v9, :cond_3

    .line 178
    .line 179
    move v10, v1

    .line 180
    goto :goto_4

    .line 181
    :cond_3
    move v10, v2

    .line 182
    :goto_4
    if-eqz v10, :cond_4

    .line 183
    .line 184
    invoke-virtual {p2, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Ljava/util/Map;

    .line 189
    .line 190
    invoke-static {v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    check-cast v8, Ljava/util/Map;

    .line 194
    .line 195
    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    add-int/lit8 v5, v5, 0x1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    const/4 p2, 0x4

    .line 204
    new-array p2, p2, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object v7, p2, v2

    .line 207
    .line 208
    aput-object v8, p2, v1

    .line 209
    .line 210
    const/4 p3, 0x2

    .line 211
    aput-object v6, p2, p3

    .line 212
    .line 213
    const/4 p3, 0x3

    .line 214
    aput-object v9, p2, p3

    .line 215
    .line 216
    const-string p3, "Duplicate key: (row=%s, column=%s), values: [%s, %s]."

    .line 217
    .line 218
    invoke-static {p3, p2}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_5
    iput-object p3, p0, Lcom/google/common/collect/SparseImmutableTable;->h:[I

    .line 227
    .line 228
    iput-object v4, p0, Lcom/google/common/collect/SparseImmutableTable;->i:[I

    .line 229
    .line 230
    new-instance p1, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 231
    .line 232
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    invoke-direct {p1, p3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_6

    .line 252
    .line 253
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Ljava/util/Map;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->b(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v2, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_6
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iput-object p1, p0, Lcom/google/common/collect/SparseImmutableTable;->g:Lcom/google/common/collect/ImmutableMap;

    .line 282
    .line 283
    new-instance p1, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 284
    .line 285
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    invoke-direct {p1, p3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    if-eqz p3, :cond_7

    .line 305
    .line 306
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    check-cast p3, Ljava/util/Map$Entry;

    .line 311
    .line 312
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p3

    .line 320
    check-cast p3, Ljava/util/Map;

    .line 321
    .line 322
    invoke-static {p3}, Lcom/google/common/collect/ImmutableMap;->b(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 323
    .line 324
    .line 325
    move-result-object p3

    .line 326
    invoke-virtual {p1, v0, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_7
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 331
    .line 332
    .line 333
    return-void
.end method


# virtual methods
.method public final B()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->g:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->b(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final j()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->g:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->b(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final k(I)Lcom/google/common/collect/Table$Cell;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->h:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/common/collect/SparseImmutableTable;->g:Lcom/google/common/collect/ImmutableMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->f()Lcom/google/common/collect/ImmutableSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->a()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/common/collect/ImmutableMap;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/common/collect/SparseImmutableTable;->i:[I

    .line 28
    .line 29
    aget p1, v2, p1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->f()Lcom/google/common/collect/ImmutableSet;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->a()Lcom/google/common/collect/ImmutableList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v2, "rowKey"

    .line 58
    .line 59
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "columnKey"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "value"

    .line 68
    .line 69
    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/google/common/collect/Tables$ImmutableCell;

    .line 73
    .line 74
    invoke-direct {v2, v0, v1, p1}, Lcom/google/common/collect/Tables$ImmutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v2
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->h:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/common/collect/SparseImmutableTable;->g:Lcom/google/common/collect/ImmutableMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->n()Lcom/google/common/collect/ImmutableCollection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->a()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/common/collect/SparseImmutableTable;->i:[I

    .line 22
    .line 23
    aget p1, v1, p1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->n()Lcom/google/common/collect/ImmutableCollection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->a()Lcom/google/common/collect/ImmutableList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->h:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
