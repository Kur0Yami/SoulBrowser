.class final Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Lj$/util/concurrent/ConcurrentMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LocalCache$Strength;,
        Lcom/google/common/cache/LocalCache$EntryFactory;,
        Lcom/google/common/cache/LocalCache$Segment;,
        Lcom/google/common/cache/LocalCache$ValueReference;,
        Lcom/google/common/cache/LocalCache$NullEntry;,
        Lcom/google/common/cache/LocalCache$KeySet;,
        Lcom/google/common/cache/LocalCache$Values;,
        Lcom/google/common/cache/LocalCache$EntrySet;,
        Lcom/google/common/cache/LocalCache$LocalLoadingCache;,
        Lcom/google/common/cache/LocalCache$LocalManualCache;,
        Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;,
        Lcom/google/common/cache/LocalCache$ManualSerializationProxy;,
        Lcom/google/common/cache/LocalCache$AbstractCacheSet;,
        Lcom/google/common/cache/LocalCache$EntryIterator;,
        Lcom/google/common/cache/LocalCache$WriteThroughEntry;,
        Lcom/google/common/cache/LocalCache$ValueIterator;,
        Lcom/google/common/cache/LocalCache$KeyIterator;,
        Lcom/google/common/cache/LocalCache$HashIterator;,
        Lcom/google/common/cache/LocalCache$AccessQueue;,
        Lcom/google/common/cache/LocalCache$WriteQueue;,
        Lcom/google/common/cache/LocalCache$LoadingValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedSoftValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedWeakValueReference;,
        Lcom/google/common/cache/LocalCache$StrongValueReference;,
        Lcom/google/common/cache/LocalCache$SoftValueReference;,
        Lcom/google/common/cache/LocalCache$WeakValueReference;,
        Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lcom/google/common/cache/LocalCache$WeakWriteEntry;,
        Lcom/google/common/cache/LocalCache$WeakAccessEntry;,
        Lcom/google/common/cache/LocalCache$WeakEntry;,
        Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lcom/google/common/cache/LocalCache$StrongWriteEntry;,
        Lcom/google/common/cache/LocalCache$StrongAccessEntry;,
        Lcom/google/common/cache/LocalCache$StrongEntry;,
        Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Lj$/util/concurrent/ConcurrentMap;"
    }
.end annotation

.annotation runtime Lorg/jspecify/annotations/NullUnmarked;
.end annotation


# static fields
.field public static final y:Lcom/google/common/cache/LocalCache$1;

.field public static final z:Ljava/util/Queue;


# instance fields
.field public final c:I

.field public final f:I

.field public final g:[Lcom/google/common/cache/LocalCache$Segment;

.field public final h:I

.field public final i:Lcom/google/common/base/Equivalence;

.field public final j:Lcom/google/common/base/Equivalence;

.field public final k:Lcom/google/common/cache/LocalCache$Strength;

.field public final l:Lcom/google/common/cache/LocalCache$Strength$1;

.field public final m:J

.field public final n:Lcom/google/common/cache/Weigher;

.field public final o:J

.field public final p:Ljava/util/Queue;

.field public final q:Lcom/google/common/cache/RemovalListener;

.field public final r:Lcom/google/common/base/Ticker;

.field public final s:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public final t:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field public final u:Lcom/google/common/cache/CacheLoader;

.field public v:Ljava/util/Set;

.field public w:Ljava/util/Collection;

.field public x:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/LocalCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/common/cache/LocalCache$1;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 16
    .line 17
    new-instance v0, Lcom/google/common/cache/LocalCache$2;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$2;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Queue;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilder;->c:Lcom/google/common/base/Supplier;

    .line 5
    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p0, Lcom/google/common/cache/LocalCache;->h:I

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/common/cache/CacheBuilder;->a:Lcom/google/common/cache/LocalCache$Strength$3;

    .line 16
    .line 17
    sget-object v3, Lcom/google/common/cache/LocalCache$Strength;->c:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 18
    .line 19
    invoke-static {v1, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/common/cache/LocalCache$Strength;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/google/common/cache/LocalCache;->k:Lcom/google/common/cache/LocalCache$Strength;

    .line 26
    .line 27
    iput-object v3, p0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 28
    .line 29
    iget-object v4, p1, Lcom/google/common/cache/CacheBuilder;->a:Lcom/google/common/cache/LocalCache$Strength$3;

    .line 30
    .line 31
    invoke-static {v4, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/google/common/cache/LocalCache$Strength;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Strength;->a()Lcom/google/common/base/Equivalence;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/common/base/Equivalence;->c()Lcom/google/common/base/Equivalence;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, p0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/base/Equivalence;

    .line 48
    .line 49
    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilder;->b:J

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    cmp-long p1, v3, v5

    .line 54
    .line 55
    const-wide/16 v7, -0x1

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    move-wide v9, v7

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-wide v9, v5

    .line 62
    :goto_0
    iput-wide v9, p0, Lcom/google/common/cache/LocalCache;->m:J

    .line 63
    .line 64
    sget-object p1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->c:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->n:Lcom/google/common/cache/Weigher;

    .line 67
    .line 68
    cmp-long p1, v3, v7

    .line 69
    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    move-wide v3, v5

    .line 73
    :cond_1
    iput-wide v3, p0, Lcom/google/common/cache/LocalCache;->o:J

    .line 74
    .line 75
    sget-object p1, Lcom/google/common/cache/CacheBuilder$NullListener;->c:Lcom/google/common/cache/CacheBuilder$NullListener;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/RemovalListener;

    .line 78
    .line 79
    sget-object p1, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Queue;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    sget-object p1, Lcom/google/common/cache/CacheBuilder;->e:Lcom/google/common/base/Ticker;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    sget-object p1, Lcom/google/common/base/Ticker;->a:Lcom/google/common/base/Ticker;

    .line 93
    .line 94
    :goto_1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x1

    .line 106
    if-nez v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v3, v4

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    :goto_2
    move v3, v5

    .line 118
    :goto_3
    sget-object v6, Lcom/google/common/cache/LocalCache$Strength;->f:Lcom/google/common/cache/LocalCache$Strength$3;

    .line 119
    .line 120
    if-ne v1, v6, :cond_5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    move v2, v4

    .line 124
    :goto_4
    or-int/2addr p1, v2

    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    const/4 v1, 0x2

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    move v1, v4

    .line 130
    :goto_5
    or-int/2addr p1, v1

    .line 131
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->c:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 132
    .line 133
    aget-object p1, v1, p1

    .line 134
    .line 135
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 142
    .line 143
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 144
    .line 145
    move-object/from16 p1, p2

    .line 146
    .line 147
    iput-object p1, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    .line 148
    .line 149
    const/16 p1, 0x10

    .line 150
    .line 151
    const/high16 v1, 0x40000000    # 2.0f

    .line 152
    .line 153
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    int-to-long v1, p1

    .line 164
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    long-to-int p1, v1

    .line 169
    :cond_7
    move v2, v4

    .line 170
    move v1, v5

    .line 171
    :goto_6
    iget v3, p0, Lcom/google/common/cache/LocalCache;->h:I

    .line 172
    .line 173
    if-ge v1, v3, :cond_9

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    int-to-long v6, v1

    .line 182
    const-wide/16 v8, 0x14

    .line 183
    .line 184
    mul-long/2addr v6, v8

    .line 185
    iget-wide v8, p0, Lcom/google/common/cache/LocalCache;->m:J

    .line 186
    .line 187
    cmp-long v3, v6, v8

    .line 188
    .line 189
    if-gtz v3, :cond_9

    .line 190
    .line 191
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    shl-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_9
    rsub-int/lit8 v2, v2, 0x20

    .line 197
    .line 198
    iput v2, p0, Lcom/google/common/cache/LocalCache;->f:I

    .line 199
    .line 200
    add-int/lit8 v2, v1, -0x1

    .line 201
    .line 202
    iput v2, p0, Lcom/google/common/cache/LocalCache;->c:I

    .line 203
    .line 204
    new-array v2, v1, [Lcom/google/common/cache/LocalCache$Segment;

    .line 205
    .line 206
    iput-object v2, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 207
    .line 208
    div-int v2, p1, v1

    .line 209
    .line 210
    mul-int v3, v2, v1

    .line 211
    .line 212
    if-ge v3, p1, :cond_a

    .line 213
    .line 214
    add-int/lit8 v2, v2, 0x1

    .line 215
    .line 216
    :cond_a
    move v8, v5

    .line 217
    :goto_7
    if-ge v8, v2, :cond_b

    .line 218
    .line 219
    shl-int/lit8 v8, v8, 0x1

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_b
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_d

    .line 227
    .line 228
    iget-wide v2, p0, Lcom/google/common/cache/LocalCache;->m:J

    .line 229
    .line 230
    int-to-long v5, v1

    .line 231
    div-long v9, v2, v5

    .line 232
    .line 233
    const-wide/16 v12, 0x1

    .line 234
    .line 235
    add-long/2addr v9, v12

    .line 236
    rem-long/2addr v2, v5

    .line 237
    :goto_8
    iget-object p1, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 238
    .line 239
    array-length v1, p1

    .line 240
    if-ge v4, v1, :cond_e

    .line 241
    .line 242
    int-to-long v5, v4

    .line 243
    cmp-long v1, v5, v2

    .line 244
    .line 245
    if-nez v1, :cond_c

    .line 246
    .line 247
    sub-long/2addr v9, v12

    .line 248
    :cond_c
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    move-object v11, v1

    .line 253
    check-cast v11, Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 254
    .line 255
    new-instance v6, Lcom/google/common/cache/LocalCache$Segment;

    .line 256
    .line 257
    move-object v7, p0

    .line 258
    invoke-direct/range {v6 .. v11}, Lcom/google/common/cache/LocalCache$Segment;-><init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 259
    .line 260
    .line 261
    aput-object v6, p1, v4

    .line 262
    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_d
    :goto_9
    iget-object p1, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 267
    .line 268
    array-length v1, p1

    .line 269
    if-ge v4, v1, :cond_e

    .line 270
    .line 271
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object v11, v1

    .line 276
    check-cast v11, Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 277
    .line 278
    new-instance v6, Lcom/google/common/cache/LocalCache$Segment;

    .line 279
    .line 280
    const-wide/16 v9, -0x1

    .line 281
    .line 282
    move-object v7, p0

    .line 283
    invoke-direct/range {v6 .. v11}, Lcom/google/common/cache/LocalCache$Segment;-><init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 284
    .line 285
    .line 286
    aput-object v6, p1, v4

    .line 287
    .line 288
    add-int/lit8 v4, v4, 0x1

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_e
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->m:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->o:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->b(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    shl-int/lit8 v0, p1, 0xf

    .line 15
    .line 16
    xor-int/lit16 v0, v0, -0x3283

    .line 17
    .line 18
    add-int/2addr p1, v0

    .line 19
    ushr-int/lit8 v0, p1, 0xa

    .line 20
    .line 21
    xor-int/2addr p1, v0

    .line 22
    shl-int/lit8 v0, p1, 0x3

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    ushr-int/lit8 v0, p1, 0x6

    .line 26
    .line 27
    xor-int/2addr p1, v0

    .line 28
    shl-int/lit8 v0, p1, 0x2

    .line 29
    .line 30
    shl-int/lit8 v1, p1, 0xe

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    add-int/2addr v0, p1

    .line 34
    ushr-int/lit8 p1, v0, 0x10

    .line 35
    .line 36
    xor-int/2addr p1, v0

    .line 37
    return p1
.end method

.method public final clear()V
    .locals 13

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->c:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v4, v2, :cond_b

    .line 9
    .line 10
    aget-object v5, v1, v4

    .line 11
    .line 12
    iget v6, v5, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 13
    .line 14
    if-eqz v6, :cond_a

    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 20
    .line 21
    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 22
    .line 23
    invoke-virtual {v6}, Lcom/google/common/base/Ticker;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-virtual {v5, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 28
    .line 29
    .line 30
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    move v7, v3

    .line 33
    :goto_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-ge v7, v8, :cond_4

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    check-cast v8, Lcom/google/common/cache/ReferenceEntry;

    .line 44
    .line 45
    :goto_2
    if-eqz v8, :cond_3

    .line 46
    .line 47
    invoke-interface {v8}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    invoke-interface {v8}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-interface {v8}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    if-eqz v9, :cond_1

    .line 70
    .line 71
    if-nez v10, :cond_0

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_0
    sget-object v11, Lcom/google/common/cache/RemovalCause;->c:Lcom/google/common/cache/RemovalCause;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_1
    :goto_3
    sget-object v11, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 81
    .line 82
    :goto_4
    invoke-interface {v8}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 83
    .line 84
    .line 85
    invoke-interface {v8}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    invoke-interface {v12}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    invoke-virtual {v5, v9, v10, v12, v11}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-interface {v8}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move v7, v3

    .line 105
    :goto_5
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-ge v7, v8, :cond_5

    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v7, v7, 0x1

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 119
    .line 120
    iget-object v7, v6, Lcom/google/common/cache/LocalCache;->k:Lcom/google/common/cache/LocalCache$Strength;

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    if-eq v7, v0, :cond_6

    .line 124
    .line 125
    move v7, v8

    .line 126
    goto :goto_6

    .line 127
    :cond_6
    move v7, v3

    .line 128
    :goto_6
    if-eqz v7, :cond_7

    .line 129
    .line 130
    :goto_7
    iget-object v7, v5, Lcom/google/common/cache/LocalCache$Segment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-eqz v7, :cond_7

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_7
    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 140
    .line 141
    if-eq v6, v0, :cond_8

    .line 142
    .line 143
    move v6, v8

    .line 144
    goto :goto_8

    .line 145
    :cond_8
    move v6, v3

    .line 146
    :goto_8
    if-eqz v6, :cond_9

    .line 147
    .line 148
    :goto_9
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->m:Ljava/lang/ref/ReferenceQueue;

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_9

    .line 155
    .line 156
    goto :goto_9

    .line 157
    :cond_9
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 158
    .line 159
    invoke-interface {v6}, Ljava/util/Collection;->clear()V

    .line 160
    .line 161
    .line 162
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 163
    .line 164
    invoke-interface {v6}, Ljava/util/Collection;->clear()V

    .line 165
    .line 166
    .line 167
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 168
    .line 169
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    .line 171
    .line 172
    iget v6, v5, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 173
    .line 174
    add-int/2addr v6, v8

    .line 175
    iput v6, v5, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 176
    .line 177
    iput v3, v5, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 183
    .line 184
    .line 185
    goto :goto_b

    .line 186
    :goto_a
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_a
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_b
    return-void
.end method

.method public synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v3, v2, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 17
    .line 18
    if-eqz v3, :cond_6

    .line 19
    .line 20
    iget-object v3, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v1, p1}, Lcom/google/common/cache/LocalCache$Segment;->i(ILjava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v5, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 37
    .line 38
    invoke-virtual {v5, p1, v3, v4}, Lcom/google/common/cache/LocalCache;->d(Lcom/google/common/cache/ReferenceEntry;J)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->g(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    move-object p1, v1

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_4
    :try_start_3
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    :cond_5
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 81
    .line 82
    .line 83
    return v0

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :goto_2
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v5, v0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 16
    .line 17
    const-wide/16 v6, -0x1

    .line 18
    .line 19
    move v8, v2

    .line 20
    :goto_0
    const/4 v9, 0x3

    .line 21
    if-ge v8, v9, :cond_6

    .line 22
    .line 23
    array-length v9, v5

    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    move v12, v2

    .line 27
    :goto_1
    if-ge v12, v9, :cond_4

    .line 28
    .line 29
    aget-object v13, v5, v12

    .line 30
    .line 31
    iget v14, v13, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 32
    .line 33
    iget-object v14, v13, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    .line 35
    move v15, v2

    .line 36
    move/from16 v16, v15

    .line 37
    .line 38
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v15, v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/google/common/cache/ReferenceEntry;

    .line 49
    .line 50
    :goto_3
    if-eqz v2, :cond_2

    .line 51
    .line 52
    move-object/from16 v17, v5

    .line 53
    .line 54
    invoke-virtual {v13, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->j(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    move-object/from16 v18, v2

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    iget-object v2, v0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/base/Equivalence;

    .line 63
    .line 64
    invoke-virtual {v2, v1, v5}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    return v1

    .line 72
    :cond_1
    invoke-interface/range {v18 .. v18}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object/from16 v5, v17

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    move-object/from16 v17, v5

    .line 80
    .line 81
    add-int/lit8 v15, v15, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move-object/from16 v17, v5

    .line 85
    .line 86
    iget v2, v13, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 87
    .line 88
    int-to-long v13, v2

    .line 89
    add-long/2addr v10, v13

    .line 90
    add-int/lit8 v12, v12, 0x1

    .line 91
    .line 92
    move/from16 v2, v16

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move/from16 v16, v2

    .line 96
    .line 97
    move-object/from16 v17, v5

    .line 98
    .line 99
    cmp-long v2, v10, v6

    .line 100
    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    move-wide v6, v10

    .line 107
    move/from16 v2, v16

    .line 108
    .line 109
    move-object/from16 v5, v17

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    move/from16 v16, v2

    .line 113
    .line 114
    :goto_4
    return v16
.end method

.method public final d(Lcom/google/common/cache/ReferenceEntry;J)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->f()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sub-long/2addr p2, v0

    .line 15
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->o:J

    .line 16
    .line 17
    cmp-long p1, p2, v0

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final e(I)Lcom/google/common/cache/LocalCache$Segment;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/cache/LocalCache;->f:I

    .line 2
    .line 3
    ushr-int/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/google/common/cache/LocalCache;->c:I

    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->x:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$EntrySet;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$EntrySet;-><init>(Lcom/google/common/cache/LocalCache;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->x:Ljava/util/Set;

    .line 12
    .line 13
    return-object v0
.end method

.method public synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v3, v2, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 17
    .line 18
    if-eqz v3, :cond_6

    .line 19
    .line 20
    iget-object v3, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v1, p1}, Lcom/google/common/cache/LocalCache$Segment;->i(ILjava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 36
    .line 37
    invoke-virtual {v1, p1, v3, v4}, Lcom/google/common/cache/LocalCache;->d(Lcom/google/common/cache/ReferenceEntry;J)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->g(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    move-object p1, v0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    .line 60
    .line 61
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    :try_start_3
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->o(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object p1, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 85
    .line 86
    iget-object v0, p1, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->x()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :goto_2
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->l()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    return-object p2
.end method

.method public final isEmpty()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    move-wide v6, v2

    .line 8
    move v5, v4

    .line 9
    :goto_0
    if-ge v5, v1, :cond_1

    .line 10
    .line 11
    aget-object v8, v0, v5

    .line 12
    .line 13
    iget v9, v8, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 14
    .line 15
    if-eqz v9, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget v8, v8, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 19
    .line 20
    int-to-long v8, v8

    .line 21
    add-long/2addr v6, v8

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    cmp-long v1, v6, v2

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-eqz v1, :cond_5

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    move v8, v4

    .line 32
    :goto_1
    if-ge v8, v1, :cond_3

    .line 33
    .line 34
    aget-object v9, v0, v8

    .line 35
    .line 36
    iget v10, v9, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 37
    .line 38
    if-eqz v10, :cond_2

    .line 39
    .line 40
    return v4

    .line 41
    :cond_2
    iget v9, v9, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 42
    .line 43
    int-to-long v9, v9

    .line 44
    sub-long/2addr v6, v9

    .line 45
    add-int/lit8 v8, v8, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    cmp-long v0, v6, v2

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    return v5

    .line 53
    :cond_4
    return v4

    .line 54
    :cond_5
    return v5
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->v:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$KeySet;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$KeySet;-><init>(Lcom/google/common/cache/LocalCache;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->v:Ljava/util/Set;

    .line 12
    .line 13
    return-object v0
.end method

.method public synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->m(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->m(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    move-result v1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v3, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->a()J

    move-result-wide v3

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 6
    iget-object v9, v2, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int v10, v1, v3

    .line 8
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 10
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->c()I

    move-result v6

    if-ne v6, v1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 11
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    .line 13
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 14
    sget-object p1, Lcom/google/common/cache/RemovalCause;->c:Lcom/google/common/cache/RemovalCause;

    :goto_1
    move-object v8, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 15
    :cond_1
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 17
    :goto_2
    iget p1, v2, Lcom/google/common/cache/LocalCache$Segment;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 18
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    .line 19
    iget v0, v2, Lcom/google/common/cache/LocalCache$Segment;->f:I

    add-int/lit8 v0, v0, -0x1

    .line 20
    invoke-virtual {v9, v10, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 21
    iput v0, v2, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return-object v6

    .line 24
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return-object v0

    .line 26
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 29
    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    move-result v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    .line 32
    sget-object v9, Lcom/google/common/cache/RemovalCause;->c:Lcom/google/common/cache/RemovalCause;

    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 34
    :try_start_0
    iget-object v3, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->a()J

    move-result-wide v3

    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 36
    iget-object v10, v2, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 37
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    and-int v12, v1, v3

    .line 38
    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 39
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 40
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->c()I

    move-result v6

    if-ne v6, v1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 41
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 42
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    .line 43
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 44
    iget-object p1, v2, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1, p2, v6}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v8, v9

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 45
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    sget-object p1, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    move-object v8, p1

    .line 47
    :goto_1
    iget p1, v2, Lcom/google/common/cache/LocalCache$Segment;->h:I

    add-int/2addr p1, v11

    iput p1, v2, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 48
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    .line 49
    iget p2, v2, Lcom/google/common/cache/LocalCache$Segment;->f:I

    sub-int/2addr p2, v11

    .line 50
    invoke-virtual {v10, v12, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 51
    iput p2, v2, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v9, :cond_2

    move v0, v11

    .line 52
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 54
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 56
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 57
    throw p1

    :cond_4
    :goto_3
    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_0
    iget-object v2, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->a()J

    move-result-wide v2

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 8
    iget-object v8, v1, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v9, v0, v4

    .line 10
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/ReferenceEntry;

    move-wide v5, v2

    move-object v3, v4

    :goto_0
    const/4 v10, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    .line 11
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->c()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v7, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 13
    invoke-virtual {v7, p1, v4}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-wide v11, v5

    .line 14
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    .line 15
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 16
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget p1, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 18
    sget-object v7, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    .line 20
    iget p2, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I

    add-int/lit8 p2, p2, -0x1

    .line 21
    invoke-virtual {v8, v9, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 22
    iput p2, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 23
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return-object v10

    .line 25
    :cond_1
    :try_start_1
    iget v0, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 26
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    move-result v0

    sget-object v2, Lcom/google/common/cache/RemovalCause;->f:Lcom/google/common/cache/RemovalCause;

    .line 27
    invoke-virtual {v1, p1, v5, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 28
    invoke-virtual {v1, v3, p2, v11, v12}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return-object v5

    :cond_2
    move-wide v11, v5

    .line 32
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v2

    move-wide v5, v11

    goto :goto_0

    .line 33
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 35
    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v4, p0

    .line 39
    invoke-virtual {v4, v3}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 41
    :try_start_0
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    invoke-virtual {v6}, Lcom/google/common/base/Ticker;->a()J

    move-result-wide v6

    .line 42
    invoke-virtual {v5, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 43
    iget-object v12, v5, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 44
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    const/4 v13, 0x1

    sub-int/2addr v8, v13

    and-int v14, v3, v8

    .line 45
    invoke-virtual {v12, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/cache/ReferenceEntry;

    move-wide v9, v6

    move-object v7, v8

    :goto_0
    if-eqz v7, :cond_5

    move-object v6, v8

    .line 46
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 47
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->c()I

    move-result v11

    if-ne v11, v3, :cond_4

    if-eqz v8, :cond_4

    iget-object v11, v5, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v11, v11, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 48
    invoke-virtual {v11, v0, v8}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v15, v2

    move-wide v2, v9

    .line 49
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 50
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 51
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget v0, v5, Lcom/google/common/cache/LocalCache$Segment;->h:I

    add-int/2addr v0, v13

    iput v0, v5, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 53
    sget-object v11, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 54
    invoke-virtual/range {v5 .. v11}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 55
    iget v1, v5, Lcom/google/common/cache/LocalCache$Segment;->f:I

    sub-int/2addr v1, v13

    .line 56
    invoke-virtual {v12, v14, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 57
    iput v1, v5, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return v15

    .line 60
    :cond_2
    :try_start_1
    iget-object v6, v5, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, v1, v9}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    iget v1, v5, Lcom/google/common/cache/LocalCache$Segment;->h:I

    add-int/2addr v1, v13

    iput v1, v5, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 62
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    move-result v1

    sget-object v6, Lcom/google/common/cache/RemovalCause;->f:Lcom/google/common/cache/RemovalCause;

    .line 63
    invoke-virtual {v5, v0, v9, v1, v6}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v6, p3

    .line 64
    invoke-virtual {v5, v7, v6, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 65
    invoke-virtual {v5, v7}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    return v13

    .line 68
    :cond_3
    :try_start_2
    invoke-virtual {v5, v7, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->n(Lcom/google/common/cache/ReferenceEntry;J)V

    goto :goto_1

    :cond_4
    move v15, v2

    move-object v8, v6

    move-object/from16 v6, p3

    move-wide/from16 v16, v9

    move v9, v3

    move-wide/from16 v2, v16

    .line 69
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v16, v2

    move v3, v9

    move-wide/from16 v9, v16

    move v2, v15

    goto/16 :goto_0

    :cond_5
    move v15, v2

    goto :goto_1

    .line 70
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 71
    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 72
    throw v0
.end method

.method public synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final size()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:[Lcom/google/common/cache/LocalCache$Segment;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    move v5, v4

    .line 8
    :goto_0
    if-ge v5, v1, :cond_0

    .line 9
    .line 10
    aget-object v6, v0, v5

    .line 11
    .line 12
    iget v6, v6, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 13
    .line 14
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    int-to-long v6, v6

    .line 19
    add-long/2addr v2, v6

    .line 20
    add-int/lit8 v5, v5, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->c(J)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$Values;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$Values;-><init>(Lcom/google/common/cache/LocalCache;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Collection;

    .line 12
    .line 13
    return-object v0
.end method
