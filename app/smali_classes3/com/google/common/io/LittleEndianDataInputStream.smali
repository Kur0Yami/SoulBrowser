.class public final Lcom/google/common/io/LittleEndianDataInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/common/annotations/J2ktIncompatible;
.end annotation


# virtual methods
.method public final a()B
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final readBoolean()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final readByte()B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-byte v0, v0

    .line 6
    return v0
.end method

.method public final readChar()C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-char v0, v0

    .line 6
    return v0
.end method

.method public final readDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final readFully([B)V
    .locals 2

    .line 1
    sget v0, Lcom/google/common/io/ByteStreams;->a:I

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/LittleEndianDataInputStream;[BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/LittleEndianDataInputStream;[BII)V

    return-void
.end method

.method public final readInt()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3, v2, v1, v0}, Lcom/google/common/primitives/Ints;->b(BBBB)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "readLine is not supported"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final readLong()J
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    int-to-long v7, v7

    .line 34
    const-wide/16 v9, 0xff

    .line 35
    .line 36
    and-long/2addr v7, v9

    .line 37
    const/16 v11, 0x38

    .line 38
    .line 39
    shl-long/2addr v7, v11

    .line 40
    int-to-long v11, v6

    .line 41
    and-long/2addr v11, v9

    .line 42
    const/16 v6, 0x30

    .line 43
    .line 44
    shl-long/2addr v11, v6

    .line 45
    or-long/2addr v7, v11

    .line 46
    int-to-long v5, v5

    .line 47
    and-long/2addr v5, v9

    .line 48
    const/16 v11, 0x28

    .line 49
    .line 50
    shl-long/2addr v5, v11

    .line 51
    or-long/2addr v5, v7

    .line 52
    int-to-long v7, v4

    .line 53
    and-long/2addr v7, v9

    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    shl-long/2addr v7, v4

    .line 57
    or-long/2addr v5, v7

    .line 58
    int-to-long v3, v3

    .line 59
    and-long/2addr v3, v9

    .line 60
    const/16 v7, 0x18

    .line 61
    .line 62
    shl-long/2addr v3, v7

    .line 63
    or-long/2addr v3, v5

    .line 64
    int-to-long v5, v2

    .line 65
    and-long/2addr v5, v9

    .line 66
    const/16 v2, 0x10

    .line 67
    .line 68
    shl-long/2addr v5, v2

    .line 69
    or-long/2addr v3, v5

    .line 70
    int-to-long v1, v1

    .line 71
    and-long/2addr v1, v9

    .line 72
    const/16 v5, 0x8

    .line 73
    .line 74
    shl-long/2addr v1, v5

    .line 75
    or-long/2addr v1, v3

    .line 76
    int-to-long v3, v0

    .line 77
    and-long/2addr v3, v9

    .line 78
    or-long/2addr v1, v3

    .line 79
    return-wide v1
.end method

.method public final readShort()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-short v0, v0

    .line 6
    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v2, v1, v0}, Lcom/google/common/primitives/Ints;->b(BBBB)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final skipBytes(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    return p1
.end method
