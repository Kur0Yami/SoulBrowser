.class public Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field public static final h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final j:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field public c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field public f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field public g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 17
    .line 18
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 19
    .line 20
    const/16 v1, 0x18

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 26
    .line 27
    return-void
.end method

.method public static h(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide v2, -0x19db1ded53e8000L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x2710

    .line 25
    .line 26
    div-long/2addr v0, v2

    .line 27
    new-instance p0, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

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
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final c([BII)V
    .locals 3

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p2, p2, 0x4

    .line 3
    .line 4
    :goto_0
    add-int/lit8 v0, p2, 0x4

    .line 5
    .line 6
    if-gt v0, p3, :cond_1

    .line 7
    .line 8
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, p2, 0x2

    .line 14
    .line 15
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sub-int/2addr p3, v1

    .line 24
    const/16 v0, 0x1a

    .line 25
    .line 26
    if-lt p3, v0, :cond_1

    .line 27
    .line 28
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 29
    .line 30
    invoke-direct {p3, p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 34
    .line 35
    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    add-int/lit8 p3, p2, 0x4

    .line 42
    .line 43
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 44
    .line 45
    invoke-direct {v0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 49
    .line 50
    add-int/lit8 p3, p2, 0xc

    .line 51
    .line 52
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 53
    .line 54
    invoke-direct {v0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 58
    .line 59
    add-int/lit8 p2, p2, 0x14

    .line 60
    .line 61
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 62
    .line 63
    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 64
    .line 65
    .line 66
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 70
    .line 71
    invoke-direct {p2, p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 72
    .line 73
    .line 74
    iget p2, p2, Lorg/apache/commons/compress/archivers/zip/ZipShort;->c:I

    .line 75
    .line 76
    add-int/lit8 p2, p2, 0x2

    .line 77
    .line 78
    add-int/2addr p2, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public final d()[B
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->a()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->a()[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x6

    .line 24
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 28
    .line 29
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 30
    .line 31
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->a(Ljava/math/BigInteger;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 41
    .line 42
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 43
    .line 44
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->a(Ljava/math/BigInteger;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/16 v4, 0x10

    .line 49
    .line 50
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 54
    .line 55
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 56
    .line 57
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->a(Ljava/math/BigInteger;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/16 v4, 0x18

    .line 62
    .line 63
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final e()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 9
    .line 10
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 23
    .line 24
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 37
    .line 38
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 39
    .line 40
    if-eq v0, p1, :cond_3

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return v1

    .line 52
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_4
    return v1
.end method

.method public final f()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->b()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g([BII)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 4
    .line 5
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c([BII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 2
    .line 3
    const/16 v1, -0x7b

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/2addr v1, v0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    xor-int/2addr v1, v0

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v2, 0x16

    .line 42
    .line 43
    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    xor-int/2addr v0, v1

    .line 48
    return v0

    .line 49
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x000A Zip Extra Field: Modify:["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 9
    .line 10
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "]  Access:["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 23
    .line 24
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "]  Create:["

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 37
    .line 38
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "] "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
