.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.super Ljava/util/zip/ZipEntry;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field public static final n:[B

.field public static final o:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field public c:I

.field public f:J

.field public g:I

.field public h:I

.field public i:J

.field public j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

.field public k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

.field public l:Ljava/lang/String;

.field public m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    sput-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->n:[B

    .line 5
    .line 6
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->o:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->o:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-array v2, v2, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 15
    .line 16
    aput-object v0, v2, v1

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    array-length v3, v0

    .line 24
    add-int/2addr v3, v2

    .line 25
    new-array v2, v3, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 26
    .line 27
    array-length v4, v0

    .line 28
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 39
    .line 40
    aput-object v1, v2, v0

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_2
    return-object v0
.end method

.method public final b()[B
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->a()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    sub-int/2addr v1, v2

    .line 14
    aget-object v1, v0, v1

    .line 15
    .line 16
    instance-of v1, v1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    array-length v4, v0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sub-int/2addr v4, v2

    .line 27
    :cond_1
    mul-int/lit8 v5, v4, 0x4

    .line 28
    .line 29
    array-length v6, v0

    .line 30
    move v7, v3

    .line 31
    :goto_1
    if-ge v7, v6, :cond_2

    .line 32
    .line 33
    aget-object v8, v0, v7

    .line 34
    .line 35
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->f()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget v8, v8, Lorg/apache/commons/compress/archivers/zip/ZipShort;->c:I

    .line 40
    .line 41
    add-int/2addr v5, v8

    .line 42
    add-int/lit8 v7, v7, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-array v5, v5, [B

    .line 46
    .line 47
    move v6, v3

    .line 48
    move v7, v6

    .line 49
    :goto_2
    if-ge v6, v4, :cond_4

    .line 50
    .line 51
    aget-object v8, v0, v6

    .line 52
    .line 53
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->a()[B

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const/4 v9, 0x2

    .line 62
    invoke-static {v8, v3, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    aget-object v8, v0, v6

    .line 66
    .line 67
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->f()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->a()[B

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    add-int/lit8 v10, v7, 0x2

    .line 76
    .line 77
    invoke-static {v8, v3, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v7, v7, 0x4

    .line 81
    .line 82
    aget-object v8, v0, v6

    .line 83
    .line 84
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->e()[B

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    array-length v9, v8

    .line 91
    invoke-static {v8, v3, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    array-length v8, v8

    .line 95
    add-int/2addr v7, v8

    .line 96
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    if-eqz v1, :cond_5

    .line 100
    .line 101
    array-length v1, v0

    .line 102
    sub-int/2addr v1, v2

    .line 103
    aget-object v0, v0, v1

    .line 104
    .line 105
    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->e()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    array-length v1, v0

    .line 112
    invoke-static {v0, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    :cond_5
    return-object v5
.end method

.method public final c(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g:I

    .line 8
    .line 9
    iput v1, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g:I

    .line 10
    .line 11
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->i:J

    .line 12
    .line 13
    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->i:J

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->a()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final d([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_b

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    :goto_1
    if-nez v5, :cond_9

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    check-cast v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 36
    .line 37
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    new-array v4, v4, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 47
    .line 48
    aput-object v3, v4, v1

    .line 49
    .line 50
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_3
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_8

    .line 62
    .line 63
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 68
    .line 69
    if-eqz v5, :cond_7

    .line 70
    .line 71
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 77
    .line 78
    array-length v7, v6

    .line 79
    move v8, v1

    .line 80
    :goto_2
    if-ge v8, v7, :cond_5

    .line 81
    .line 82
    aget-object v9, v6, v8

    .line 83
    .line 84
    invoke-interface {v9}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {v4, v10}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-nez v10, :cond_4

    .line 93
    .line 94
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 101
    .line 102
    array-length v4, v4

    .line 103
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eq v4, v6, :cond_6

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    new-array v4, v4, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 114
    .line 115
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 120
    .line 121
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 122
    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->e()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_8
    :goto_3
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 140
    .line 141
    array-length v5, v4

    .line 142
    add-int/lit8 v6, v5, 0x1

    .line 143
    .line 144
    new-array v7, v6, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 145
    .line 146
    array-length v8, v4

    .line 147
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-static {v4, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .line 153
    .line 154
    aput-object v3, v7, v5

    .line 155
    .line 156
    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 157
    .line 158
    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->e()V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    if-eqz p2, :cond_a

    .line 163
    .line 164
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->d()[B

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    array-length v4, v3

    .line 169
    invoke-interface {v5, v3, v1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->c([BII)V

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->e()[B

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    array-length v4, v3

    .line 178
    invoke-interface {v5, v3, v1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->g([BII)V

    .line 179
    .line 180
    .line 181
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->e()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->a()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    sub-int/2addr v1, v2

    .line 14
    aget-object v1, v0, v1

    .line 15
    .line 16
    instance-of v1, v1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    array-length v4, v0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sub-int/2addr v4, v2

    .line 27
    :cond_1
    mul-int/lit8 v5, v4, 0x4

    .line 28
    .line 29
    array-length v6, v0

    .line 30
    move v7, v3

    .line 31
    :goto_1
    if-ge v7, v6, :cond_2

    .line 32
    .line 33
    aget-object v8, v0, v7

    .line 34
    .line 35
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->b()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget v8, v8, Lorg/apache/commons/compress/archivers/zip/ZipShort;->c:I

    .line 40
    .line 41
    add-int/2addr v5, v8

    .line 42
    add-int/lit8 v7, v7, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-array v5, v5, [B

    .line 46
    .line 47
    move v6, v3

    .line 48
    move v7, v6

    .line 49
    :goto_2
    if-ge v6, v4, :cond_4

    .line 50
    .line 51
    aget-object v8, v0, v6

    .line 52
    .line 53
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->a()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->a()[B

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const/4 v9, 0x2

    .line 62
    invoke-static {v8, v3, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    aget-object v8, v0, v6

    .line 66
    .line 67
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->b()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->a()[B

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    add-int/lit8 v10, v7, 0x2

    .line 76
    .line 77
    invoke-static {v8, v3, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v7, v7, 0x4

    .line 81
    .line 82
    aget-object v8, v0, v6

    .line 83
    .line 84
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->d()[B

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    array-length v9, v8

    .line 91
    invoke-static {v8, v3, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    array-length v8, v8

    .line 95
    add-int/2addr v7, v8

    .line 96
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    if-eqz v1, :cond_5

    .line 100
    .line 101
    array-length v1, v0

    .line 102
    sub-int/2addr v1, v2

    .line 103
    aget-object v0, v0, v1

    .line 104
    .line 105
    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->d()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    array-length v1, v0

    .line 112
    invoke-static {v0, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-super {p0, v5}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_8

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, ""

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    move-object v0, v2

    .line 56
    :cond_4
    if-nez v1, :cond_5

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    :cond_5
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    cmp-long v2, v2, v4

    .line 68
    .line 69
    if-nez v2, :cond_8

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g:I

    .line 78
    .line 79
    iget v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g:I

    .line 80
    .line 81
    if-ne v0, v1, :cond_8

    .line 82
    .line 83
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->h:I

    .line 84
    .line 85
    iget v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->h:I

    .line 86
    .line 87
    if-ne v0, v1, :cond_8

    .line 88
    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->i:J

    .line 90
    .line 91
    iget-wide v2, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->i:J

    .line 92
    .line 93
    cmp-long v0, v0, v2

    .line 94
    .line 95
    if-nez v0, :cond_8

    .line 96
    .line 97
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 98
    .line 99
    iget v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 100
    .line 101
    if-ne v0, v1, :cond_8

    .line 102
    .line 103
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 104
    .line 105
    iget-wide v2, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 106
    .line 107
    cmp-long v0, v0, v2

    .line 108
    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    cmp-long v0, v0, v2

    .line 120
    .line 121
    if-nez v0, :cond_8

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    cmp-long v0, v0, v2

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->b()[B

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->b()[B

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->n:[B

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_6
    move-object v0, v1

    .line 159
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_7

    .line 164
    .line 165
    move-object v1, v2

    .line 166
    :cond_7
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 173
    .line 174
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_8

    .line 181
    .line 182
    :goto_1
    const/4 p1, 0x1

    .line 183
    return p1

    .line 184
    :cond_8
    :goto_2
    const/4 p1, 0x0

    .line 185
    return p1
.end method

.method public final f([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    check-cast v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 17
    .line 18
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    new-array p1, p1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 38
    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->j:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->e()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->h:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "/"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x5c

    .line 16
    .line 17
    const/16 v1, 0x2f

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->l:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final getMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->l:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isDirectory()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final setExtra([B)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->b([BZ)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->d([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Error parsing extra fields for entry: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " - "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final setMethod(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "ZIP compression method can not be negative: "

    .line 9
    .line 10
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final setSize(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "invalid entry size"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
