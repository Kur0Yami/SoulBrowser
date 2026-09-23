.class public Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Lorg/apache/commons/compress/archivers/zip/UnixStat;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final k:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field public c:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/util/zip/CRC32;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    const/16 v1, 0x756e

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->k:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->k:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    add-int/lit8 v1, v1, 0xe

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final c([BII)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p3, p3, -0x4

    .line 6
    .line 7
    new-array v2, p3, [B

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x4

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    cmp-long p3, v0, p1

    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x2

    .line 40
    invoke-static {v2, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 41
    .line 42
    .line 43
    move-result-wide p2

    .line 44
    long-to-int p2, p2

    .line 45
    new-array p3, p2, [B

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->f:I

    .line 53
    .line 54
    const/16 v0, 0x8

    .line 55
    .line 56
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->g:I

    .line 61
    .line 62
    if-nez p2, :cond_0

    .line 63
    .line 64
    const-string p2, ""

    .line 65
    .line 66
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0xa

    .line 70
    .line 71
    invoke-static {v2, v0, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    new-instance p2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h:Ljava/lang/String;

    .line 80
    .line 81
    :goto_0
    and-int/lit16 p2, p1, 0x4000

    .line 82
    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    :cond_1
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->i:Z

    .line 87
    .line 88
    iget p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->c:I

    .line 89
    .line 90
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h(I)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->c:I

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h(I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->c:I

    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance p3, Ljava/util/zip/ZipException;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "bad CRC checksum "

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, " instead of "

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p3, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p3
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    .line 6
    .line 7
    new-instance v1, Ljava/util/zip/CRC32;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1
.end method

.method public final d()[B
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->b()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->c:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x4

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->c:I

    .line 12
    .line 13
    and-int/lit16 v4, v3, 0xff

    .line 14
    .line 15
    int-to-byte v4, v4

    .line 16
    const v5, 0xff00

    .line 17
    .line 18
    .line 19
    and-int/2addr v3, v5

    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    shr-int/2addr v3, v6

    .line 23
    int-to-byte v3, v3

    .line 24
    const/4 v7, 0x2

    .line 25
    new-array v8, v7, [B

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    aput-byte v4, v8, v9

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    aput-byte v3, v8, v4

    .line 32
    .line 33
    invoke-static {v8, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    array-length v8, v3

    .line 43
    int-to-long v10, v8

    .line 44
    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const/4 v10, 0x4

    .line 49
    invoke-static {v8, v9, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->f:I

    .line 53
    .line 54
    and-int/lit16 v11, v8, 0xff

    .line 55
    .line 56
    int-to-byte v11, v11

    .line 57
    and-int/2addr v8, v5

    .line 58
    shr-int/2addr v8, v6

    .line 59
    int-to-byte v8, v8

    .line 60
    new-array v12, v7, [B

    .line 61
    .line 62
    aput-byte v11, v12, v9

    .line 63
    .line 64
    aput-byte v8, v12, v4

    .line 65
    .line 66
    const/4 v8, 0x6

    .line 67
    invoke-static {v12, v9, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->g:I

    .line 71
    .line 72
    and-int/lit16 v11, v8, 0xff

    .line 73
    .line 74
    int-to-byte v11, v11

    .line 75
    and-int/2addr v5, v8

    .line 76
    shr-int/2addr v5, v6

    .line 77
    int-to-byte v5, v5

    .line 78
    new-array v8, v7, [B

    .line 79
    .line 80
    aput-byte v11, v8, v9

    .line 81
    .line 82
    aput-byte v5, v8, v4

    .line 83
    .line 84
    invoke-static {v8, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .line 86
    .line 87
    const/16 v4, 0xa

    .line 88
    .line 89
    array-length v5, v3

    .line 90
    invoke-static {v3, v9, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;

    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->j:Ljava/util/zip/CRC32;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    new-array v0, v0, [B

    .line 110
    .line 111
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3, v9, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v9, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public final e()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->b()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->c([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, 0xa000

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->i:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->h:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v0, 0x4000

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const v0, 0x8000

    .line 30
    .line 31
    .line 32
    :goto_1
    and-int/lit16 p1, p1, 0xfff

    .line 33
    .line 34
    or-int/2addr p1, v0

    .line 35
    return p1
.end method
