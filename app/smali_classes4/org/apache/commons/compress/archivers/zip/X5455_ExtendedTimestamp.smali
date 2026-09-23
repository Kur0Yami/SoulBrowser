.class public Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final l:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field public c:B

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public k:Lorg/apache/commons/compress/archivers/zip/ZipLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    const/16 v1, 0x5455

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->l:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->l:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->g:Z

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move v4, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v2

    .line 25
    :goto_1
    add-int/2addr v1, v4

    .line 26
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h:Z

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_2
    add-int/2addr v1, v2

    .line 36
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final c([BII)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h(B)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 11
    .line 12
    add-int/2addr p3, p2

    .line 13
    add-int/lit8 v0, p2, 0x1

    .line 14
    .line 15
    aget-byte v1, p1, p2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h(B)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 25
    .line 26
    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 30
    .line 31
    add-int/lit8 v0, p2, 0x5

    .line 32
    .line 33
    :cond_0
    iget-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->g:Z

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    add-int/lit8 p2, v0, 0x4

    .line 38
    .line 39
    if-gt p2, p3, :cond_1

    .line 40
    .line 41
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 42
    .line 43
    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 47
    .line 48
    move v0, p2

    .line 49
    :cond_1
    iget-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h:Z

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    add-int/lit8 p2, v0, 0x4

    .line 54
    .line 55
    if-gt p2, p3, :cond_2

    .line 56
    .line 57
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 58
    .line 59
    invoke-direct {p2, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 63
    .line 64
    :cond_2
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
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->b()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->c:I

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-byte v1, v0, v1

    .line 11
    .line 12
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f:Z

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    int-to-byte v2, v4

    .line 19
    aput-byte v2, v0, v1

    .line 20
    .line 21
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 22
    .line 23
    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 24
    .line 25
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->g:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    aget-byte v5, v0, v1

    .line 42
    .line 43
    or-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    int-to-byte v5, v5

    .line 46
    aput-byte v5, v0, v1

    .line 47
    .line 48
    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 49
    .line 50
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x4

    .line 58
    .line 59
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    aget-byte v5, v0, v1

    .line 68
    .line 69
    or-int/2addr v5, v3

    .line 70
    int-to-byte v5, v5

    .line 71
    aput-byte v5, v0, v1

    .line 72
    .line 73
    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 74
    .line 75
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-object v0
.end method

.method public final e()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->c:I

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->d()[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    .line 7
    .line 8
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->c:B

    .line 9
    .line 10
    and-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    iget-byte v2, p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->c:B

    .line 13
    .line 14
    and-int/lit8 v2, v2, 0x7

    .line 15
    .line 16
    if-ne v0, v2, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 19
    .line 20
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 33
    .line 34
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 35
    .line 36
    if-eq v0, v2, :cond_1

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 47
    .line 48
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 49
    .line 50
    if-eq v0, p1, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    :cond_2
    const/4 p1, 0x1

    .line 61
    return p1

    .line 62
    :cond_3
    return v1
.end method

.method public final f()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final g([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h(B)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->c([BII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(B)V
    .locals 4

    .line 1
    iput-byte p1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->c:B

    .line 2
    .line 3
    and-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f:Z

    .line 13
    .line 14
    and-int/lit8 v0, p1, 0x2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->g:Z

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    and-int/2addr p1, v0

    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h:Z

    .line 30
    .line 31
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->c:B

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x7

    .line 4
    .line 5
    mul-int/lit8 v0, v0, -0x7b

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 12
    .line 13
    long-to-int v1, v1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 20
    .line 21
    long-to-int v1, v1

    .line 22
    const/16 v2, 0xb

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    xor-int/2addr v0, v1

    .line 29
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 34
    .line 35
    long-to-int v1, v1

    .line 36
    const/16 v2, 0x16

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    xor-int/2addr v0, v1

    .line 43
    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x5455 Zip Extra Field: Flags="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->c:B

    .line 9
    .line 10
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->d(I)B

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->f:Z

    .line 27
    .line 28
    const-string v2, "] "

    .line 29
    .line 30
    const-wide/16 v3, 0x3e8

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance v1, Ljava/util/Date;

    .line 39
    .line 40
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->i:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 41
    .line 42
    iget-wide v5, v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 43
    .line 44
    mul-long/2addr v5, v3

    .line 45
    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 46
    .line 47
    .line 48
    const-string v5, " Modify:["

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->g:Z

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    new-instance v1, Ljava/util/Date;

    .line 68
    .line 69
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->j:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 70
    .line 71
    iget-wide v5, v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 72
    .line 73
    mul-long/2addr v5, v3

    .line 74
    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 75
    .line 76
    .line 77
    const-string v5, " Access:["

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->h:Z

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    new-instance v1, Ljava/util/Date;

    .line 97
    .line 98
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->k:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 99
    .line 100
    iget-wide v5, v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 101
    .line 102
    mul-long/2addr v5, v3

    .line 103
    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 104
    .line 105
    .line 106
    const-string v3, " Create:["

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
