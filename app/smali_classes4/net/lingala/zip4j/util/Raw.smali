.class public Lnet/lingala/zip4j/util/Raw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BI)V
    .locals 3

    .line 1
    int-to-byte v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    aput-byte v0, p0, v1

    .line 4
    .line 5
    shr-int/lit8 v0, p1, 0x8

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    aput-byte v0, p0, v2

    .line 10
    .line 11
    shr-int/lit8 v0, p1, 0x10

    .line 12
    .line 13
    int-to-byte v0, v0

    .line 14
    const/4 v2, 0x2

    .line 15
    aput-byte v0, p0, v2

    .line 16
    .line 17
    shr-int/lit8 p1, p1, 0x18

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    const/4 v0, 0x3

    .line 21
    aput-byte p1, p0, v0

    .line 22
    .line 23
    const/4 p1, 0x4

    .line 24
    aput-byte v1, p0, p1

    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    aput-byte v1, p0, p1

    .line 28
    .line 29
    const/4 p1, 0x6

    .line 30
    aput-byte v1, p0, p1

    .line 31
    .line 32
    const/4 p1, 0x7

    .line 33
    aput-byte v1, p0, p1

    .line 34
    .line 35
    const/16 p1, 0x8

    .line 36
    .line 37
    aput-byte v1, p0, p1

    .line 38
    .line 39
    const/16 p1, 0x9

    .line 40
    .line 41
    aput-byte v1, p0, p1

    .line 42
    .line 43
    const/16 p1, 0xa

    .line 44
    .line 45
    aput-byte v1, p0, p1

    .line 46
    .line 47
    const/16 p1, 0xb

    .line 48
    .line 49
    aput-byte v1, p0, p1

    .line 50
    .line 51
    const/16 p1, 0xc

    .line 52
    .line 53
    aput-byte v1, p0, p1

    .line 54
    .line 55
    const/16 p1, 0xd

    .line 56
    .line 57
    aput-byte v1, p0, p1

    .line 58
    .line 59
    const/16 p1, 0xe

    .line 60
    .line 61
    aput-byte v1, p0, p1

    .line 62
    .line 63
    const/16 p1, 0xf

    .line 64
    .line 65
    aput-byte v1, p0, p1

    .line 66
    .line 67
    return-void
.end method

.method public static b([B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    aget-byte v1, p0, v1

    .line 16
    .line 17
    and-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    aget-byte p0, p0, v2

    .line 21
    .line 22
    and-int/lit16 p0, p0, 0xff

    .line 23
    .line 24
    shl-int/lit8 p0, p0, 0x8

    .line 25
    .line 26
    or-int/2addr p0, v1

    .line 27
    shl-int/lit8 p0, p0, 0x10

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public static c(Ljava/io/DataInput;[B)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, p1, v1, v0}, Ljava/io/DataInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    aget-byte p0, p1, v1

    .line 7
    .line 8
    and-int/lit16 p0, p0, 0xff

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget-byte v0, p1, v0

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x8

    .line 16
    .line 17
    or-int/2addr p0, v0

    .line 18
    const/4 v0, 0x2

    .line 19
    aget-byte v0, p1, v0

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    aget-byte p1, p1, v1

    .line 25
    .line 26
    and-int/lit16 p1, p1, 0xff

    .line 27
    .line 28
    shl-int/lit8 p1, p1, 0x8

    .line 29
    .line 30
    or-int/2addr p1, v0

    .line 31
    shl-int/lit8 p1, p1, 0x10

    .line 32
    .line 33
    or-int/2addr p0, p1

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public static d([B)J
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    shl-long/2addr v0, v2

    .line 10
    const/4 v3, 0x6

    .line 11
    aget-byte v3, p0, v3

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xff

    .line 14
    .line 15
    int-to-long v3, v3

    .line 16
    or-long/2addr v0, v3

    .line 17
    shl-long/2addr v0, v2

    .line 18
    const/4 v3, 0x5

    .line 19
    aget-byte v3, p0, v3

    .line 20
    .line 21
    and-int/lit16 v3, v3, 0xff

    .line 22
    .line 23
    int-to-long v3, v3

    .line 24
    or-long/2addr v0, v3

    .line 25
    shl-long/2addr v0, v2

    .line 26
    const/4 v3, 0x4

    .line 27
    aget-byte v3, p0, v3

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    int-to-long v3, v3

    .line 32
    or-long/2addr v0, v3

    .line 33
    shl-long/2addr v0, v2

    .line 34
    const/4 v3, 0x3

    .line 35
    aget-byte v3, p0, v3

    .line 36
    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    int-to-long v3, v3

    .line 40
    or-long/2addr v0, v3

    .line 41
    shl-long/2addr v0, v2

    .line 42
    const/4 v3, 0x2

    .line 43
    aget-byte v3, p0, v3

    .line 44
    .line 45
    and-int/lit16 v3, v3, 0xff

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    or-long/2addr v0, v3

    .line 49
    shl-long/2addr v0, v2

    .line 50
    const/4 v3, 0x1

    .line 51
    aget-byte v3, p0, v3

    .line 52
    .line 53
    and-int/lit16 v3, v3, 0xff

    .line 54
    .line 55
    int-to-long v3, v3

    .line 56
    or-long/2addr v0, v3

    .line 57
    shl-long/2addr v0, v2

    .line 58
    const/4 v2, 0x0

    .line 59
    aget-byte p0, p0, v2

    .line 60
    .line 61
    and-int/lit16 p0, p0, 0xff

    .line 62
    .line 63
    int-to-long v2, p0

    .line 64
    or-long/2addr v0, v2

    .line 65
    return-wide v0
.end method

.method public static e([BI)I
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    aget-byte p0, p0, p1

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static final f([BI)V
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    const/4 v1, 0x3

    .line 5
    aput-byte v0, p0, v1

    .line 6
    .line 7
    ushr-int/lit8 v0, p1, 0x10

    .line 8
    .line 9
    int-to-byte v0, v0

    .line 10
    const/4 v1, 0x2

    .line 11
    aput-byte v0, p0, v1

    .line 12
    .line 13
    ushr-int/lit8 v0, p1, 0x8

    .line 14
    .line 15
    int-to-byte v0, v0

    .line 16
    const/4 v1, 0x1

    .line 17
    aput-byte v0, p0, v1

    .line 18
    .line 19
    and-int/lit16 p1, p1, 0xff

    .line 20
    .line 21
    int-to-byte p1, p1

    .line 22
    const/4 v0, 0x0

    .line 23
    aput-byte p1, p0, v0

    .line 24
    .line 25
    return-void
.end method

.method public static g([BJ)V
    .locals 2

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    ushr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    int-to-byte v0, v0

    .line 7
    const/4 v1, 0x7

    .line 8
    aput-byte v0, p0, v1

    .line 9
    .line 10
    const/16 v0, 0x30

    .line 11
    .line 12
    ushr-long v0, p1, v0

    .line 13
    .line 14
    long-to-int v0, v0

    .line 15
    int-to-byte v0, v0

    .line 16
    const/4 v1, 0x6

    .line 17
    aput-byte v0, p0, v1

    .line 18
    .line 19
    const/16 v0, 0x28

    .line 20
    .line 21
    ushr-long v0, p1, v0

    .line 22
    .line 23
    long-to-int v0, v0

    .line 24
    int-to-byte v0, v0

    .line 25
    const/4 v1, 0x5

    .line 26
    aput-byte v0, p0, v1

    .line 27
    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    ushr-long v0, p1, v0

    .line 31
    .line 32
    long-to-int v0, v0

    .line 33
    int-to-byte v0, v0

    .line 34
    const/4 v1, 0x4

    .line 35
    aput-byte v0, p0, v1

    .line 36
    .line 37
    const/16 v0, 0x18

    .line 38
    .line 39
    ushr-long v0, p1, v0

    .line 40
    .line 41
    long-to-int v0, v0

    .line 42
    int-to-byte v0, v0

    .line 43
    const/4 v1, 0x3

    .line 44
    aput-byte v0, p0, v1

    .line 45
    .line 46
    const/16 v0, 0x10

    .line 47
    .line 48
    ushr-long v0, p1, v0

    .line 49
    .line 50
    long-to-int v0, v0

    .line 51
    int-to-byte v0, v0

    .line 52
    const/4 v1, 0x2

    .line 53
    aput-byte v0, p0, v1

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    ushr-long v0, p1, v0

    .line 58
    .line 59
    long-to-int v0, v0

    .line 60
    int-to-byte v0, v0

    .line 61
    const/4 v1, 0x1

    .line 62
    aput-byte v0, p0, v1

    .line 63
    .line 64
    const-wide/16 v0, 0xff

    .line 65
    .line 66
    and-long/2addr p1, v0

    .line 67
    long-to-int p1, p1

    .line 68
    int-to-byte p1, p1

    .line 69
    const/4 p2, 0x0

    .line 70
    aput-byte p1, p0, p2

    .line 71
    .line 72
    return-void
.end method

.method public static final h([BS)V
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    aput-byte v0, p0, v1

    .line 6
    .line 7
    and-int/lit16 p1, p1, 0xff

    .line 8
    .line 9
    int-to-byte p1, p1

    .line 10
    const/4 v0, 0x0

    .line 11
    aput-byte p1, p0, v0

    .line 12
    .line 13
    return-void
.end method
