.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# instance fields
.field public A:C

.field public B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public final l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field public m:I

.field public n:Ljava/io/InputStream;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a:I

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 16
    .line 17
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x42

    .line 40
    .line 41
    if-ne p1, v2, :cond_1

    .line 42
    .line 43
    const/16 p1, 0x5a

    .line 44
    .line 45
    if-ne v0, p1, :cond_1

    .line 46
    .line 47
    const/16 p1, 0x68

    .line 48
    .line 49
    if-ne v1, p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v0, 0x31

    .line 58
    .line 59
    if-lt p1, v0, :cond_0

    .line 60
    .line 61
    const/16 v0, 0x39

    .line 62
    .line 63
    if-gt p1, v0, :cond_0

    .line 64
    .line 65
    add-int/lit8 p1, p1, -0x30

    .line 66
    .line 67
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->h:I

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k:I

    .line 71
    .line 72
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->r:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 79
    .line 80
    const-string v0, "BZip2 block size is invalid"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 87
    .line 88
    const-string v0, "Stream is not in the BZip2 format"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 95
    .line 96
    const-string v0, "No InputStream"

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method


# virtual methods
.method public final b()C
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-char v0, v0

    .line 8
    return v0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 19
    .line 20
    return-void

    .line 21
    :goto_1
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    return-void
.end method

.method public final d(I)I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j:I

    .line 4
    .line 5
    if-ge v0, p1, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ltz v3, :cond_1

    .line 14
    .line 15
    shl-int/lit8 v1, v1, 0x8

    .line 16
    .line 17
    or-int/2addr v1, v3

    .line 18
    add-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    if-lt v0, p1, :cond_0

    .line 21
    .line 22
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 26
    .line 27
    const-string v0, "unexpected end of stream"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    :goto_0
    sub-int/2addr v0, p1

    .line 34
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k:I

    .line 35
    .line 36
    shr-int v0, v1, v0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    shl-int p1, v1, p1

    .line 40
    .line 41
    sub-int/2addr p1, v1

    .line 42
    and-int/2addr p1, v0

    .line 43
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 2
    .line 3
    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a:I

    .line 4
    .line 5
    not-int v0, v0

    .line 6
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->p:I

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->r:I

    .line 11
    .line 12
    shl-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    ushr-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    or-int/2addr v1, v2

    .line 17
    xor-int/2addr v0, v1

    .line 18
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->r:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->q:I

    .line 22
    .line 23
    shl-int/lit8 v2, v0, 0x1

    .line 24
    .line 25
    ushr-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    or-int/2addr v0, v2

    .line 28
    xor-int/2addr v0, v1

    .line 29
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->r:I

    .line 30
    .line 31
    new-instance v0, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v1, "BZip2 CRC error"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final f()V
    .locals 33

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->b()C

    move-result v1

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->b()C

    move-result v2

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->b()C

    move-result v3

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->b()C

    move-result v4

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->b()C

    move-result v5

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->b()C

    move-result v6

    const/16 v7, 0x8

    const/16 v8, 0x17

    const/4 v9, 0x0

    if-ne v1, v8, :cond_2

    const/16 v10, 0x72

    if-ne v2, v10, :cond_2

    const/16 v10, 0x45

    if-ne v3, v10, :cond_2

    const/16 v10, 0x38

    if-ne v4, v10, :cond_2

    const/16 v10, 0x50

    if-ne v5, v10, :cond_2

    const/16 v10, 0x90

    if-eq v6, v10, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v1

    shl-int/2addr v1, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 8
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->q:I

    .line 9
    iput v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 11
    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->r:I

    if-ne v1, v2, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BZip2 CRC error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/16 v10, 0x31

    if-ne v1, v10, :cond_3c

    const/16 v1, 0x41

    if-ne v2, v1, :cond_3c

    const/16 v1, 0x59

    if-ne v3, v1, :cond_3c

    const/16 v2, 0x26

    if-ne v4, v2, :cond_3c

    const/16 v2, 0x53

    if-ne v5, v2, :cond_3c

    if-ne v6, v1, :cond_3c

    .line 13
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v1

    shl-int/2addr v1, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 14
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->p:I

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    iput-boolean v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->i:Z

    .line 16
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v2, :cond_4

    .line 17
    new-instance v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->h:I

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    :cond_4
    const/16 v2, 0x18

    .line 18
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v2

    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->g:I

    .line 19
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 20
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->a:[Z

    .line 21
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->m:[B

    .line 22
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->c:[B

    .line 23
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->d:[B

    move v7, v9

    move v11, v7

    :goto_2
    const/16 v12, 0x10

    if-ge v7, v12, :cond_6

    .line 24
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v12

    if-eqz v12, :cond_5

    shl-int v12, v1, v7

    or-int/2addr v11, v12

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const/16 v7, 0x100

    move v13, v7

    :goto_3
    const/4 v14, -0x1

    add-int/2addr v13, v14

    if-ltz v13, :cond_7

    .line 25
    aput-boolean v9, v3, v13

    goto :goto_3

    :cond_7
    move v13, v9

    :goto_4
    if-ge v13, v12, :cond_a

    shl-int v15, v1, v13

    and-int/2addr v15, v11

    if-eqz v15, :cond_9

    shl-int/lit8 v15, v13, 0x4

    move v10, v9

    :goto_5
    if-ge v10, v12, :cond_9

    .line 26
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v16

    if-eqz v16, :cond_8

    add-int v16, v15, v10

    .line 27
    aput-boolean v1, v3, v16

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v13, v13, 0x1

    const/16 v10, 0x31

    goto :goto_4

    .line 28
    :cond_a
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v10, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->a:[Z

    .line 29
    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->b:[B

    move v11, v9

    move v13, v11

    :goto_6
    if-ge v11, v7, :cond_c

    .line 30
    aget-boolean v15, v10, v11

    if-eqz v15, :cond_b

    add-int/lit8 v15, v13, 0x1

    int-to-byte v7, v11

    .line 31
    aput-byte v7, v3, v13

    move v13, v15

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const/16 v7, 0x100

    goto :goto_6

    .line 32
    :cond_c
    iput v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->m:I

    add-int/lit8 v13, v13, 0x2

    const/4 v3, 0x3

    .line 33
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v3

    const/16 v7, 0xf

    .line 34
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v7

    move v10, v9

    :goto_7
    if-ge v10, v7, :cond_e

    move v11, v9

    .line 35
    :goto_8
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v15

    if-eqz v15, :cond_d

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    int-to-byte v11, v11

    .line 36
    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    move v10, v3

    :goto_9
    add-int/2addr v10, v14

    if-ltz v10, :cond_f

    int-to-byte v11, v10

    .line 37
    aput-byte v11, v4, v10

    goto :goto_9

    :cond_f
    move v10, v9

    :goto_a
    if-ge v10, v7, :cond_11

    .line 38
    aget-byte v11, v6, v10

    and-int/lit16 v11, v11, 0xff

    .line 39
    aget-byte v15, v4, v11

    :goto_b
    if-lez v11, :cond_10

    add-int/lit8 v17, v11, -0x1

    .line 40
    aget-byte v17, v4, v17

    aput-byte v17, v4, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_b

    .line 41
    :cond_10
    aput-byte v15, v4, v9

    .line 42
    aput-byte v15, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 43
    :cond_11
    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->l:[[C

    move v4, v9

    :goto_c
    if-ge v4, v3, :cond_15

    const/4 v5, 0x5

    .line 44
    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v5

    .line 45
    aget-object v6, v2, v4

    move v7, v9

    :goto_d
    if-ge v7, v13, :cond_14

    .line 46
    :goto_e
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v10

    if-eqz v10, :cond_13

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v10

    if-eqz v10, :cond_12

    move v10, v14

    goto :goto_f

    :cond_12
    move v10, v1

    :goto_f
    add-int/2addr v5, v10

    goto :goto_e

    :cond_13
    int-to-char v10, v5

    .line 48
    aput-char v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 49
    :cond_15
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 50
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->l:[[C

    .line 51
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->i:[I

    .line 52
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->f:[[I

    .line 53
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->g:[[I

    .line 54
    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->h:[[I

    move v10, v9

    :goto_10
    if-ge v10, v3, :cond_21

    .line 55
    aget-object v11, v4, v10

    const/16 v15, 0x20

    move/from16 v17, v13

    move/from16 v18, v14

    move v14, v9

    :goto_11
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_18

    move/from16 v19, v9

    .line 56
    aget-char v9, v11, v17

    if-le v9, v14, :cond_16

    move v14, v9

    :cond_16
    if-ge v9, v15, :cond_17

    move v15, v9

    :cond_17
    move/from16 v9, v19

    goto :goto_11

    :cond_18
    move/from16 v19, v9

    .line 57
    aget-object v9, v6, v10

    aget-object v11, v7, v10

    aget-object v17, v2, v10

    aget-object v20, v4, v10

    move v12, v15

    move/from16 v21, v19

    :goto_12
    if-gt v12, v14, :cond_1b

    move/from16 v22, v1

    move/from16 v1, v19

    :goto_13
    if-ge v1, v13, :cond_1a

    .line 58
    aget-char v8, v20, v1

    if-ne v8, v12, :cond_19

    add-int/lit8 v8, v21, 0x1

    .line 59
    aput v1, v17, v21

    move/from16 v21, v8

    :cond_19
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x17

    goto :goto_13

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v22

    const/16 v8, 0x17

    goto :goto_12

    :cond_1b
    move/from16 v22, v1

    const/16 v1, 0x17

    :goto_14
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1c

    .line 60
    aput v19, v11, v1

    .line 61
    aput v19, v9, v1

    goto :goto_14

    :cond_1c
    move/from16 v1, v19

    :goto_15
    if-ge v1, v13, :cond_1d

    .line 62
    aget-char v8, v20, v1

    add-int/lit8 v8, v8, 0x1

    aget v12, v11, v8

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 63
    :cond_1d
    aget v1, v11, v19

    move/from16 v8, v22

    const/16 v12, 0x17

    :goto_16
    if-ge v8, v12, :cond_1e

    .line 64
    aget v17, v11, v8

    add-int v1, v1, v17

    .line 65
    aput v1, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 66
    :cond_1e
    aget v1, v11, v15

    move v12, v15

    move/from16 v8, v19

    :goto_17
    if-gt v12, v14, :cond_1f

    add-int/lit8 v17, v12, 0x1

    .line 67
    aget v20, v11, v17

    sub-int v1, v20, v1

    add-int/2addr v1, v8

    add-int/lit8 v8, v1, -0x1

    .line 68
    aput v8, v9, v12

    shl-int/lit8 v8, v1, 0x1

    move/from16 v12, v17

    move/from16 v1, v20

    goto :goto_17

    :cond_1f
    add-int/lit8 v1, v15, 0x1

    :goto_18
    if-gt v1, v14, :cond_20

    add-int/lit8 v8, v1, -0x1

    .line 69
    aget v8, v9, v8

    add-int/lit8 v8, v8, 0x1

    shl-int/lit8 v8, v8, 0x1

    aget v12, v11, v1

    sub-int/2addr v8, v12

    aput v8, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 70
    :cond_20
    aput v15, v5, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v18

    move/from16 v9, v19

    move/from16 v1, v22

    const/16 v8, 0x17

    const/16 v12, 0x10

    goto/16 :goto_10

    :cond_21
    move/from16 v22, v1

    move/from16 v19, v9

    move/from16 v18, v14

    .line 71
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 72
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 73
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->o:[B

    .line 74
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->e:[I

    .line 75
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->c:[B

    .line 76
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->b:[B

    .line 77
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->k:[C

    .line 78
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->i:[I

    .line 79
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->f:[[I

    .line 80
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->g:[[I

    .line 81
    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->h:[[I

    .line 82
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->h:I

    const v12, 0x186a0

    mul-int/2addr v11, v12

    const/16 v16, 0x100

    :goto_19
    add-int/lit8 v12, v16, -0x1

    if-ltz v12, :cond_22

    int-to-char v13, v12

    .line 83
    aput-char v13, v7, v12

    .line 84
    aput v19, v4, v12

    move/from16 v16, v12

    goto :goto_19

    .line 85
    :cond_22
    iget v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->m:I

    add-int/lit8 v12, v12, 0x1

    .line 86
    iget-object v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    .line 87
    iget-object v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 88
    iget-object v15, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->c:[B

    aget-byte v15, v15, v19

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v16, v1

    .line 89
    iget-object v1, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->f:[[I

    aget-object v1, v1, v15

    move-object/from16 v17, v1

    .line 90
    iget-object v1, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->i:[I

    aget v1, v1, v15

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->d(I)I

    move-result v20

    move/from16 v21, v1

    .line 92
    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k:I

    move/from16 v23, v1

    .line 93
    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j:I

    move-object/from16 v24, v2

    move v2, v1

    move/from16 v1, v23

    move-object/from16 v23, v3

    move/from16 v3, v20

    move/from16 v20, v21

    move-object/from16 v21, v24

    move-object/from16 v24, v4

    .line 94
    :goto_1a
    aget v4, v17, v20

    move-object/from16 v25, v5

    const-string v5, "unexpected end of stream"

    if-le v3, v4, :cond_25

    add-int/lit8 v20, v20, 0x1

    move/from16 v4, v22

    :goto_1b
    if-ge v1, v4, :cond_24

    .line 95
    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_23

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    const/4 v4, 0x1

    goto :goto_1b

    .line 96
    :cond_23
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v3, v3, 0x1

    shr-int v4, v2, v1

    const/16 v22, 0x1

    and-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    move-object/from16 v5, v25

    const/16 v22, 0x1

    goto :goto_1a

    .line 97
    :cond_25
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k:I

    .line 98
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j:I

    .line 99
    iget-object v4, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->h:[[I

    aget-object v4, v4, v15

    iget-object v13, v14, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->g:[[I

    aget-object v13, v13, v15

    aget v13, v13, v20

    sub-int/2addr v3, v13

    aget v3, v4, v3

    .line 100
    aget-byte v4, v25, v19

    and-int/lit16 v4, v4, 0xff

    .line 101
    aget-object v13, v10, v4

    .line 102
    aget-object v14, v9, v4

    .line 103
    aget-object v15, v21, v4

    .line 104
    aget v4, v8, v4

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v17, v19

    const/16 v26, 0x31

    :goto_1c
    if-eq v3, v12, :cond_3b

    move-object/from16 v27, v6

    .line 105
    const-string v6, "block overrun"

    move-object/from16 v28, v8

    if-eqz v3, :cond_30

    const/4 v8, 0x1

    if-ne v3, v8, :cond_26

    goto/16 :goto_23

    :cond_26
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v11, :cond_2f

    add-int/lit8 v6, v3, -0x1

    .line 106
    aget-char v8, v7, v6

    move/from16 v29, v4

    .line 107
    aget-byte v4, v27, v8

    move/from16 v30, v8

    and-int/lit16 v8, v4, 0xff

    aget v31, v24, v8

    const/16 v22, 0x1

    add-int/lit8 v31, v31, 0x1

    aput v31, v24, v8

    .line 108
    aput-byte v4, v23, v29

    const/16 v8, 0x10

    if-gt v3, v8, :cond_28

    :goto_1d
    if-lez v6, :cond_27

    add-int/lit8 v3, v6, -0x1

    .line 109
    aget-char v4, v7, v3

    aput-char v4, v7, v6

    move v6, v3

    goto :goto_1d

    :cond_27
    move/from16 v3, v19

    goto :goto_1e

    :cond_28
    move/from16 v3, v19

    const/4 v4, 0x1

    .line 110
    invoke-static {v7, v3, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :goto_1e
    aput-char v30, v7, v3

    if-nez v26, :cond_29

    add-int/lit8 v17, v17, 0x1

    .line 112
    aget-byte v3, v25, v17

    and-int/lit16 v3, v3, 0xff

    .line 113
    aget-object v4, v10, v3

    .line 114
    aget-object v6, v9, v3

    .line 115
    aget-object v13, v21, v3

    .line 116
    aget v3, v28, v3

    move-object v14, v6

    move-object v15, v13

    const/16 v26, 0x31

    move-object v13, v4

    goto :goto_1f

    :cond_29
    add-int/lit8 v26, v26, -0x1

    move/from16 v3, v20

    :goto_1f
    if-ge v1, v3, :cond_2b

    .line 117
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_2a

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    goto :goto_1f

    .line 118
    :cond_2a
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    sub-int/2addr v1, v3

    shr-int v4, v2, v1

    const/4 v6, 0x1

    shl-int v20, v6, v3

    add-int/lit8 v20, v20, -0x1

    and-int v4, v4, v20

    move/from16 v20, v3

    .line 119
    :goto_20
    aget v8, v14, v20

    if-le v4, v8, :cond_2e

    add-int/lit8 v20, v20, 0x1

    :goto_21
    if-ge v1, v6, :cond_2d

    .line 120
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_2c

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x8

    const/4 v6, 0x1

    goto :goto_21

    .line 121
    :cond_2c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v4, v4, 0x1

    shr-int v6, v2, v1

    const/16 v22, 0x1

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v4, v6

    const/4 v6, 0x1

    goto :goto_20

    .line 122
    :cond_2e
    aget v6, v13, v20

    sub-int/2addr v4, v6

    aget v4, v15, v4

    move/from16 v20, v3

    move v3, v4

    move-object/from16 v6, v27

    move-object/from16 v8, v28

    move/from16 v4, v29

    :goto_22
    const/16 v19, 0x0

    goto/16 :goto_1c

    .line 123
    :cond_2f
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_23
    move/from16 v29, v18

    const/4 v8, 0x1

    :goto_24
    if-nez v3, :cond_31

    add-int v29, v29, v8

    move/from16 v30, v1

    goto :goto_25

    :cond_31
    move/from16 v30, v1

    const/4 v1, 0x1

    if-ne v3, v1, :cond_38

    shl-int/lit8 v1, v8, 0x1

    add-int v29, v29, v1

    :goto_25
    if-nez v26, :cond_32

    add-int/lit8 v17, v17, 0x1

    .line 124
    aget-byte v1, v25, v17

    and-int/lit16 v1, v1, 0xff

    .line 125
    aget-object v13, v10, v1

    .line 126
    aget-object v14, v9, v1

    .line 127
    aget-object v15, v21, v1

    .line 128
    aget v20, v28, v1

    const/16 v26, 0x31

    :goto_26
    move/from16 v1, v20

    goto :goto_27

    :cond_32
    add-int/lit8 v26, v26, -0x1

    goto :goto_26

    :goto_27
    move v3, v2

    move/from16 v2, v30

    :goto_28
    if-ge v2, v1, :cond_34

    .line 129
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v20

    if-ltz v20, :cond_33

    shl-int/lit8 v3, v3, 0x8

    or-int v3, v3, v20

    add-int/lit8 v2, v2, 0x8

    goto :goto_28

    .line 130
    :cond_33
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    sub-int/2addr v2, v1

    shr-int v20, v3, v2

    move/from16 v31, v1

    const/4 v1, 0x1

    shl-int v22, v1, v31

    add-int/lit8 v22, v22, -0x1

    and-int v20, v20, v22

    move/from16 v30, v2

    move/from16 v1, v20

    move/from16 v20, v31

    .line 131
    :goto_29
    aget v2, v14, v20

    if-le v1, v2, :cond_37

    add-int/lit8 v20, v20, 0x1

    move/from16 v32, v1

    move/from16 v2, v30

    :goto_2a
    const/4 v1, 0x1

    if-ge v2, v1, :cond_36

    .line 132
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_35

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x8

    goto :goto_2a

    .line 133
    :cond_35
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    add-int/lit8 v30, v2, -0x1

    shl-int/lit8 v1, v32, 0x1

    shr-int v2, v3, v30

    const/16 v22, 0x1

    and-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    goto :goto_29

    :cond_37
    move/from16 v32, v1

    .line 134
    aget v1, v13, v20

    sub-int v1, v32, v1

    aget v1, v15, v1

    shl-int/lit8 v8, v8, 0x1

    move v2, v3

    move/from16 v20, v31

    move v3, v1

    move/from16 v1, v30

    goto/16 :goto_24

    :cond_38
    const/16 v19, 0x0

    .line 135
    aget-char v1, v7, v19

    aget-byte v1, v27, v1

    and-int/lit16 v8, v1, 0xff

    .line 136
    aget v31, v24, v8

    add-int/lit8 v32, v29, 0x1

    add-int v32, v32, v31

    aput v32, v24, v8

    :goto_2b
    add-int/lit8 v8, v29, -0x1

    if-ltz v29, :cond_39

    add-int/lit8 v4, v4, 0x1

    .line 137
    aput-byte v1, v23, v4

    move/from16 v29, v8

    goto :goto_2b

    :cond_39
    if-ge v4, v11, :cond_3a

    move-object/from16 v6, v27

    move-object/from16 v8, v28

    move/from16 v1, v30

    goto/16 :goto_22

    .line 138
    :cond_3a
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3b
    iput v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f:I

    .line 140
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k:I

    .line 141
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j:I

    .line 142
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    move/from16 v2, v18

    .line 143
    iput v2, v1, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a:I

    const/4 v1, 0x1

    .line 144
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    return-void

    :cond_3c
    move v3, v9

    .line 145
    iput v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 146
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bad block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i()I
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw v0

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :pswitch_1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 21
    .line 22
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->u:I

    .line 23
    .line 24
    if-eq v0, v4, :cond_0

    .line 25
    .line 26
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 34
    .line 35
    add-int/2addr v0, v3

    .line 36
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 37
    .line 38
    if-lt v0, v2, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 41
    .line 42
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->o:[B

    .line 43
    .line 44
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 45
    .line 46
    aget-byte v2, v2, v3

    .line 47
    .line 48
    and-int/lit16 v2, v2, 0xff

    .line 49
    .line 50
    int-to-char v2, v2

    .line 51
    iput-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->A:C

    .line 52
    .line 53
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->n:[I

    .line 54
    .line 55
    aget v0, v0, v3

    .line 56
    .line 57
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 58
    .line 59
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    return v0

    .line 71
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    return v0

    .line 82
    :pswitch_4
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 83
    .line 84
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->u:I

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    if-eq v0, v4, :cond_2

    .line 88
    .line 89
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 90
    .line 91
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->m()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    return v0

    .line 98
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 99
    .line 100
    add-int/2addr v0, v3

    .line 101
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 102
    .line 103
    if-lt v0, v2, :cond_6

    .line 104
    .line 105
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 106
    .line 107
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->o:[B

    .line 108
    .line 109
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 110
    .line 111
    aget-byte v4, v4, v5

    .line 112
    .line 113
    and-int/lit16 v4, v4, 0xff

    .line 114
    .line 115
    int-to-char v4, v4

    .line 116
    iput-char v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->A:C

    .line 117
    .line 118
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->n:[I

    .line 119
    .line 120
    aget v0, v0, v5

    .line 121
    .line 122
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 123
    .line 124
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 125
    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 129
    .line 130
    sget-object v5, Lorg/apache/commons/compress/compressors/bzip2/Rand;->a:[I

    .line 131
    .line 132
    aget v5, v5, v0

    .line 133
    .line 134
    sub-int/2addr v5, v3

    .line 135
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 136
    .line 137
    add-int/2addr v0, v3

    .line 138
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 139
    .line 140
    const/16 v5, 0x200

    .line 141
    .line 142
    if-ne v0, v5, :cond_4

    .line 143
    .line 144
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    sub-int/2addr v0, v3

    .line 148
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 149
    .line 150
    :cond_4
    :goto_0
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 151
    .line 152
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 153
    .line 154
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 155
    .line 156
    if-ne v0, v3, :cond_5

    .line 157
    .line 158
    xor-int/lit8 v0, v4, 0x1

    .line 159
    .line 160
    int-to-char v0, v0

    .line 161
    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->A:C

    .line 162
    .line 163
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    return v0

    .line 168
    :cond_6
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 169
    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->m()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    return v0

    .line 175
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    return v0

    .line 186
    :pswitch_7
    const/4 v0, -0x1

    .line 187
    return v0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()I
    .locals 10

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->j:[I

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->n:[I

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-ge v5, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    new-array v4, v2, [I

    .line 24
    .line 25
    iput-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->n:[I

    .line 26
    .line 27
    :cond_2
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->o:[B

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aput v5, v1, v5

    .line 31
    .line 32
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->e:[I

    .line 33
    .line 34
    const/16 v6, 0x100

    .line 35
    .line 36
    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    aget v0, v1, v5

    .line 40
    .line 41
    :goto_0
    if-gt v3, v6, :cond_3

    .line 42
    .line 43
    aget v7, v1, v3

    .line 44
    .line 45
    add-int/2addr v0, v7

    .line 46
    aput v0, v1, v3

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f:I

    .line 52
    .line 53
    move v3, v5

    .line 54
    :goto_1
    if-gt v3, v0, :cond_4

    .line 55
    .line 56
    aget-byte v7, v2, v3

    .line 57
    .line 58
    and-int/lit16 v7, v7, 0xff

    .line 59
    .line 60
    aget v8, v1, v7

    .line 61
    .line 62
    add-int/lit8 v9, v8, 0x1

    .line 63
    .line 64
    aput v9, v1, v7

    .line 65
    .line 66
    aput v3, v4, v8

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->g:I

    .line 72
    .line 73
    if-ltz v0, :cond_6

    .line 74
    .line 75
    array-length v1, v4

    .line 76
    if-ge v0, v1, :cond_6

    .line 77
    .line 78
    aget v0, v4, v0

    .line 79
    .line 80
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 81
    .line 82
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 83
    .line 84
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 85
    .line 86
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 87
    .line 88
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->i:Z

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 93
    .line 94
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->m()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    return v0

    .line 101
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    return v0

    .line 106
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 107
    .line 108
    const-string v1, "stream corrupted"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_7
    :goto_2
    const/4 v0, -0x1

    .line 115
    return v0
.end method

.method public final k()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 8
    .line 9
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->u:I

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 12
    .line 13
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->o:[B

    .line 14
    .line 15
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 16
    .line 17
    aget-byte v2, v2, v3

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 22
    .line 23
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->n:[I

    .line 24
    .line 25
    aget v1, v1, v3

    .line 26
    .line 27
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 32
    .line 33
    const/4 v0, 0x6

    .line 34
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 35
    .line 36
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a(I)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->e()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public final l()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 2
    .line 3
    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->A:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a(I)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->k()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public final m()I
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 8
    .line 9
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->u:I

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->B:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 12
    .line 13
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->o:[B

    .line 14
    .line 15
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 16
    .line 17
    aget-byte v2, v2, v3

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->n:[I

    .line 22
    .line 23
    aget v1, v1, v3

    .line 24
    .line 25
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->z:I

    .line 26
    .line 27
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 34
    .line 35
    sget-object v5, Lorg/apache/commons/compress/compressors/bzip2/Rand;->a:[I

    .line 36
    .line 37
    aget v5, v5, v1

    .line 38
    .line 39
    sub-int/2addr v5, v4

    .line 40
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 41
    .line 42
    add-int/2addr v1, v4

    .line 43
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 44
    .line 45
    const/16 v5, 0x200

    .line 46
    .line 47
    if-ne v1, v5, :cond_1

    .line 48
    .line 49
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->y:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sub-int/2addr v1, v4

    .line 53
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 54
    .line 55
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->x:I

    .line 56
    .line 57
    if-ne v1, v4, :cond_2

    .line 58
    .line 59
    move v3, v4

    .line 60
    :cond_2
    xor-int v1, v2, v3

    .line 61
    .line 62
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 63
    .line 64
    add-int/2addr v0, v4

    .line 65
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 69
    .line 70
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a(I)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->e()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->f()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->j()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    return v0
.end method

.method public final n()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 2
    .line 3
    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->A:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->l:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->a(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->w:I

    .line 19
    .line 20
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->t:I

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->o:I

    .line 25
    .line 26
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->v:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->s:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->m()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->i()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    int-to-long v1, v1

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->a(J)V

    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 5

    .line 5
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 6
    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 7
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->n:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->i()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    .line 9
    aput-byte v1, p1, p3

    const/4 p3, 0x1

    int-to-long v3, p3

    .line 10
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->a(J)V

    move p3, v2

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    sub-int/2addr p3, p2

    return p3

    .line 11
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") + len("

    const-string v3, ") > dest.length("

    .line 13
    invoke-static {v1, p2, p3, v2, v3}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    array-length p1, p1

    const-string p3, ")."

    .line 15
    invoke-static {p1, p3, p2}, Landroid/support/v4/media/a;->g(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "len("

    .line 18
    invoke-static {p3, p2, v0}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 21
    invoke-static {p2, v1, v0}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
