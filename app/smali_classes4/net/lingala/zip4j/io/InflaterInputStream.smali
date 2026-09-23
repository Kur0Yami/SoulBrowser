.class public Lnet/lingala/zip4j/io/InflaterInputStream;
.super Lnet/lingala/zip4j/io/PartInputStream;
.source "SourceFile"


# instance fields
.field public final o:Ljava/util/zip/Inflater;

.field public final p:[B

.field public final q:[B

.field public final r:Lnet/lingala/zip4j/unzip/UnzipEngine;

.field public s:J

.field public final t:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JLnet/lingala/zip4j/unzip/UnzipEngine;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    new-array p2, p1, [B

    .line 6
    .line 7
    iput-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->q:[B

    .line 8
    .line 9
    new-instance p2, Ljava/util/zip/Inflater;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->o:Ljava/util/zip/Inflater;

    .line 15
    .line 16
    const/16 p1, 0x1000

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->p:[B

    .line 21
    .line 22
    iput-object p4, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    iput-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->s:J

    .line 27
    .line 28
    iget-object p1, p4, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 29
    .line 30
    iget-wide p1, p1, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 31
    .line 32
    iput-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->t:J

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->o:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public final b()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->h:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 2
    .line 3
    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->o:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lnet/lingala/zip4j/io/PartInputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->q:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input buffer is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read([BII)I
    .locals 6

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->o:Ljava/util/zip/Inflater;

    if-eqz p1, :cond_b

    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    .line 5
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_a

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->s:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->t:J

    cmp-long v2, v2, v4

    const/16 v3, 0x400

    const/4 v4, -0x1

    if-ltz v2, :cond_2

    .line 7
    new-array p1, v3, [B

    .line 8
    :goto_0
    invoke-super {p0, p1, v1, v3}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result p2

    if-eq p2, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->a()V

    return v4

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-nez v2, :cond_7

    .line 11
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->p:[B

    array-length v5, v2

    invoke-super {p0, v2, v1, v5}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 14
    invoke-virtual {v0, v2, v1, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    .line 15
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected end of ZLIB input stream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_4

    .line 16
    :cond_5
    :goto_2
    new-array p1, v3, [B

    .line 17
    :goto_3
    invoke-super {p0, p1, v1, v3}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result p2

    if-eq p2, v4, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->a()V

    return v4

    .line 19
    :cond_7
    iget-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->s:J

    int-to-long v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->s:J
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 20
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 22
    :cond_8
    const-string p1, "Invalid ZLIB data format"

    .line 23
    :goto_5
    iget-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    if-eqz p2, :cond_9

    .line 24
    iget-object p2, p2, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 25
    iget-boolean p3, p2, Lnet/lingala/zip4j/model/LocalFileHeader;->m:Z

    if-eqz p3, :cond_9

    .line 26
    iget p2, p2, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    if-nez p2, :cond_9

    .line 27
    const-string p2, " - Wrong Password?"

    .line 28
    invoke-static {p1, p2}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_9
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 30
    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 31
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "input buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skip(J)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    long-to-int p1, p1

    .line 15
    const/16 p2, 0x200

    .line 16
    .line 17
    new-array v0, p2, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v2, p1, :cond_2

    .line 22
    .line 23
    sub-int v3, p1, v2

    .line 24
    .line 25
    if-le v3, p2, :cond_0

    .line 26
    .line 27
    move v3, p2

    .line 28
    :cond_0
    invoke-virtual {p0, v0, v1, v3}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-ne v3, v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/2addr v2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    int-to-long p1, v2

    .line 39
    return-wide p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "negative skip length"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method
