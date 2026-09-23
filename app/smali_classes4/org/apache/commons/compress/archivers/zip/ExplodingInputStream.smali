.class Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final c:Ljava/io/BufferedInputStream;

.field public f:Lorg/apache/commons/compress/archivers/zip/BitStream;

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field public k:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field public l:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field public final m:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;


# direct methods
.method public constructor <init>(IILjava/io/BufferedInputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->m:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x2000

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "The dictionary size must be 4096 or 8192"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 29
    if-eq p2, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "The number of trees must be 2 or 3"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_3
    :goto_1
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->g:I

    .line 44
    .line 45
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->h:I

    .line 46
    .line 47
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->i:I

    .line 48
    .line 49
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->c:Ljava/io/BufferedInputStream;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->m:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->b:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->a:[B

    .line 6
    .line 7
    iget v3, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 8
    .line 9
    const v4, 0x8000

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, -0x1

    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->h:I

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->c:Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    if-ne v1, v3, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x100

    .line 30
    .line 31
    invoke-static {v7, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->b(Ljava/io/BufferedInputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->j:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 36
    .line 37
    :cond_1
    const/16 v1, 0x40

    .line 38
    .line 39
    invoke-static {v7, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->b(Ljava/io/BufferedInputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->k:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 44
    .line 45
    invoke-static {v7, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->b(Ljava/io/BufferedInputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->l:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 50
    .line 51
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 52
    .line 53
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 54
    .line 55
    invoke-direct {v1, v7}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/utils/BitInputStream;->a(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    long-to-int v1, v7

    .line 67
    const/16 v3, 0x8

    .line 68
    .line 69
    if-ne v1, v5, :cond_5

    .line 70
    .line 71
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->j:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->c(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/utils/BitInputStream;->a(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    long-to-int v1, v7

    .line 89
    :goto_0
    if-ne v1, v6, :cond_4

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iget v3, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 93
    .line 94
    int-to-byte v1, v1

    .line 95
    aput-byte v1, v2, v3

    .line 96
    .line 97
    add-int/2addr v3, v5

    .line 98
    rem-int/2addr v3, v4

    .line 99
    iput v3, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    if-nez v1, :cond_9

    .line 103
    .line 104
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->g:I

    .line 105
    .line 106
    const/16 v7, 0x1000

    .line 107
    .line 108
    if-ne v1, v7, :cond_6

    .line 109
    .line 110
    const/4 v1, 0x6

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const/4 v1, 0x7

    .line 113
    :goto_1
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 114
    .line 115
    invoke-virtual {v7, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->a(I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v7

    .line 119
    long-to-int v7, v7

    .line 120
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->l:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 121
    .line 122
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 123
    .line 124
    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->c(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-ne v8, v6, :cond_7

    .line 129
    .line 130
    if-gtz v7, :cond_7

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    shl-int v1, v8, v1

    .line 134
    .line 135
    or-int/2addr v1, v7

    .line 136
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->k:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 137
    .line 138
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->c(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    const/16 v8, 0x3f

    .line 145
    .line 146
    if-ne v7, v8, :cond_8

    .line 147
    .line 148
    int-to-long v7, v7

    .line 149
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->f:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 150
    .line 151
    invoke-virtual {v9, v3}, Lorg/apache/commons/compress/utils/BitInputStream;->a(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    add-long/2addr v9, v7

    .line 156
    long-to-int v7, v9

    .line 157
    :cond_8
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->i:I

    .line 158
    .line 159
    add-int/2addr v7, v3

    .line 160
    add-int/2addr v1, v5

    .line 161
    iget v3, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 162
    .line 163
    sub-int/2addr v3, v1

    .line 164
    add-int/2addr v7, v3

    .line 165
    :goto_2
    if-ge v3, v7, :cond_9

    .line 166
    .line 167
    iget v1, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 168
    .line 169
    add-int v8, v3, v4

    .line 170
    .line 171
    rem-int/2addr v8, v4

    .line 172
    aget-byte v8, v2, v8

    .line 173
    .line 174
    aput-byte v8, v2, v1

    .line 175
    .line 176
    add-int/2addr v1, v5

    .line 177
    rem-int/2addr v1, v4

    .line 178
    iput v1, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 179
    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_9
    :goto_3
    iget v1, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->b:I

    .line 184
    .line 185
    iget v3, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->c:I

    .line 186
    .line 187
    if-eq v1, v3, :cond_a

    .line 188
    .line 189
    aget-byte v2, v2, v1

    .line 190
    .line 191
    add-int/2addr v1, v5

    .line 192
    rem-int/2addr v1, v4

    .line 193
    iput v1, v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->b:I

    .line 194
    .line 195
    and-int/lit16 v0, v2, 0xff

    .line 196
    .line 197
    return v0

    .line 198
    :cond_a
    return v6
.end method
