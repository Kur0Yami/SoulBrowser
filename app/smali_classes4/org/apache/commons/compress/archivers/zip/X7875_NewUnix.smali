.class public Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final j:Ljava/math/BigInteger;


# instance fields
.field public c:I

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    const/16 v1, 0x7875

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 17
    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->j:Ljava/math/BigInteger;

    .line 25
    .line 26
    return-void
.end method

.method public static h([B)[B
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    aget-byte v3, p0, v1

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    array-length v0, p0

    .line 19
    sub-int/2addr v0, v2

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-array v1, v0, [B

    .line 26
    .line 27
    array-length v3, p0

    .line 28
    sub-int/2addr v3, v2

    .line 29
    sub-int v3, v0, v3

    .line 30
    .line 31
    sub-int/2addr v0, v3

    .line 32
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->h([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v0, v0

    .line 12
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->h([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    array-length v1, v1

    .line 23
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x3

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    invoke-direct {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 29
    .line 30
    .line 31
    return-object v2
.end method

.method public final c([BII)V
    .locals 3

    .line 1
    sget-object p3, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->j:Ljava/math/BigInteger;

    .line 2
    .line 3
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 6
    .line 7
    add-int/lit8 p3, p2, 0x1

    .line 8
    .line 9
    aget-byte v0, p1, p2

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/lit16 v0, v0, 0x100

    .line 15
    .line 16
    :goto_0
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->c:I

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x2

    .line 19
    .line 20
    aget-byte p3, p1, p3

    .line 21
    .line 22
    if-ltz p3, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit16 p3, p3, 0x100

    .line 26
    .line 27
    :goto_1
    new-array v0, p3, [B

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    add-int/2addr p2, p3

    .line 34
    new-instance p3, Ljava/math/BigInteger;

    .line 35
    .line 36
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->c([B)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {p3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 44
    .line 45
    add-int/lit8 p3, p2, 0x1

    .line 46
    .line 47
    aget-byte p2, p1, p2

    .line 48
    .line 49
    if-ltz p2, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    add-int/lit16 p2, p2, 0x100

    .line 53
    .line 54
    :goto_2
    new-array v0, p2, [B

    .line 55
    .line 56
    invoke-static {p1, p3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/math/BigInteger;

    .line 60
    .line 61
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->c([B)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 68
    .line 69
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->h([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->h([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v0

    .line 22
    add-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    add-int/2addr v2, v3

    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->c([B)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->c([B)V

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->c:I

    .line 35
    .line 36
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->d(I)B

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    aput-byte v3, v2, v4

    .line 42
    .line 43
    array-length v3, v0

    .line 44
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->d(I)B

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v5, 0x1

    .line 49
    aput-byte v3, v2, v5

    .line 50
    .line 51
    array-length v3, v0

    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    array-length v0, v0

    .line 57
    add-int/2addr v5, v0

    .line 58
    add-int/lit8 v0, v0, 0x3

    .line 59
    .line 60
    array-length v3, v1

    .line 61
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->d(I)B

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    aput-byte v3, v2, v5

    .line 66
    .line 67
    array-length v3, v1

    .line 68
    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method

.method public final e()[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 7
    .line 8
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->c:I

    .line 9
    .line 10
    iget v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->c:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 15
    .line 16
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 25
    .line 26
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    return v1
.end method

.method public final f()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g([BII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const v0, -0x12d687

    .line 2
    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->c:I

    .line 5
    .line 6
    mul-int/2addr v1, v0

    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    xor-int/2addr v0, v1

    .line 20
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x7875 Zip Extra Field: UID="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->f:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " GID="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->g:Ljava/math/BigInteger;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
