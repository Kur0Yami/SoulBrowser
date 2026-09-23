.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    add-int/2addr p1, v0

    .line 6
    shl-int p1, v0, p1

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    new-array p1, p1, [I

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->a:[I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static b(Ljava/io/BufferedInputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    new-array v2, v0, [B

    .line 10
    .line 11
    new-instance v3, Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 17
    .line 18
    .line 19
    new-array p0, p1, [I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    :goto_0
    if-ge v4, v0, :cond_1

    .line 26
    .line 27
    aget-byte v7, v2, v4

    .line 28
    .line 29
    and-int/lit16 v8, v7, 0xf0

    .line 30
    .line 31
    shr-int/lit8 v8, v8, 0x4

    .line 32
    .line 33
    add-int/2addr v8, v1

    .line 34
    and-int/lit8 v7, v7, 0xf

    .line 35
    .line 36
    add-int/2addr v7, v1

    .line 37
    move v9, v3

    .line 38
    :goto_1
    if-ge v9, v8, :cond_0

    .line 39
    .line 40
    add-int/lit8 v10, v6, 0x1

    .line 41
    .line 42
    aput v7, p0, v6

    .line 43
    .line 44
    add-int/lit8 v9, v9, 0x1

    .line 45
    .line 46
    move v6, v10

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-array v0, p1, [I

    .line 56
    .line 57
    move v2, v3

    .line 58
    :goto_2
    if-ge v2, p1, :cond_2

    .line 59
    .line 60
    aput v2, v0, v2

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    new-array v2, p1, [I

    .line 66
    .line 67
    move v4, v3

    .line 68
    move v6, v4

    .line 69
    :goto_3
    if-ge v4, p1, :cond_5

    .line 70
    .line 71
    move v7, v3

    .line 72
    :goto_4
    if-ge v7, p1, :cond_4

    .line 73
    .line 74
    aget v8, p0, v7

    .line 75
    .line 76
    if-ne v8, v4, :cond_3

    .line 77
    .line 78
    aput v4, v2, v6

    .line 79
    .line 80
    aput v7, v0, v6

    .line 81
    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    new-array v4, p1, [I

    .line 91
    .line 92
    add-int/lit8 v6, p1, -0x1

    .line 93
    .line 94
    move v7, v3

    .line 95
    move v8, v7

    .line 96
    move v9, v8

    .line 97
    :goto_5
    if-ltz v6, :cond_7

    .line 98
    .line 99
    add-int/2addr v7, v8

    .line 100
    aget v10, v2, v6

    .line 101
    .line 102
    if-eq v10, v9, :cond_6

    .line 103
    .line 104
    rsub-int/lit8 v8, v10, 0x10

    .line 105
    .line 106
    shl-int v8, v1, v8

    .line 107
    .line 108
    move v9, v10

    .line 109
    :cond_6
    aget v10, v0, v6

    .line 110
    .line 111
    aput v7, v4, v10

    .line 112
    .line 113
    add-int/lit8 v6, v6, -0x1

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_7
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 117
    .line 118
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    .line 119
    .line 120
    .line 121
    move v1, v3

    .line 122
    :goto_6
    if-ge v1, p1, :cond_9

    .line 123
    .line 124
    aget v2, p0, v1

    .line 125
    .line 126
    if-lez v2, :cond_8

    .line 127
    .line 128
    aget v5, v4, v1

    .line 129
    .line 130
    shl-int/lit8 v5, v5, 0x10

    .line 131
    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {v0, v3, v5, v2, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->a(IIII)V

    .line 137
    .line 138
    .line 139
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_9
    return-object v0

    .line 143
    :cond_a
    new-instance p0, Ljava/io/IOException;

    .line 144
    .line 145
    const-string p1, "Cannot read the size of the encoded tree, unexpected end of stream"

    .line 146
    .line 147
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method


# virtual methods
.method public final a(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->a:[I

    .line 2
    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    aget p2, v0, p1

    .line 6
    .line 7
    const/4 p3, -0x1

    .line 8
    if-ne p2, p3, :cond_0

    .line 9
    .line 10
    aput p4, v0, p1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p3, "Tree value at index "

    .line 16
    .line 17
    const-string p4, " has already been assigned ("

    .line 18
    .line 19
    invoke-static {p1, p3, p4}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    aget p1, v0, p1

    .line 24
    .line 25
    const-string p4, ")"

    .line 26
    .line 27
    invoke-static {p1, p4, p3}, Landroid/support/v4/media/a;->g(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :cond_1
    const/4 v1, -0x2

    .line 36
    aput v1, v0, p1

    .line 37
    .line 38
    mul-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    and-int/lit8 v0, p2, 0x1

    .line 43
    .line 44
    add-int/2addr p1, v0

    .line 45
    ushr-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    add-int/lit8 p3, p3, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->a(IIII)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final c(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->a(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    long-to-int v2, v2

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    mul-int/lit8 v4, v0, 0x2

    .line 13
    .line 14
    add-int/2addr v4, v1

    .line 15
    add-int v1, v4, v2

    .line 16
    .line 17
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->a:[I

    .line 18
    .line 19
    aget v4, v4, v1

    .line 20
    .line 21
    const/4 v5, -0x2

    .line 22
    if-ne v4, v5, :cond_1

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eq v4, v3, :cond_2

    .line 27
    .line 28
    return v4

    .line 29
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "The child "

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " of node at index "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " is not defined"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
