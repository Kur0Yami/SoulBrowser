.class public Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "SourceFile"


# instance fields
.field public g:J

.field public h:I

.field public i:[B

.field public j:[B


# virtual methods
.method public final c([BII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->c([BII)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    new-array v0, p3, [B

    .line 9
    .line 10
    add-int/lit8 v1, p2, 0x4

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    add-int/2addr p2, p3

    .line 17
    add-int/lit8 p3, p2, 0x8

    .line 18
    .line 19
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->f:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 34
    .line 35
    add-int/lit8 p3, p2, 0xe

    .line 36
    .line 37
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    new-array v0, p3, [B

    .line 42
    .line 43
    add-int/lit8 v1, p2, 0x10

    .line 44
    .line 45
    invoke-static {p1, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    add-int/2addr v1, p3

    .line 49
    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->g:J

    .line 54
    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "rcount: "

    .line 60
    .line 61
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->g:J

    .line 65
    .line 66
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->g:J

    .line 77
    .line 78
    const-wide/16 v3, 0x0

    .line 79
    .line 80
    cmp-long v0, v0, v3

    .line 81
    .line 82
    const/4 v1, 0x4

    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    add-int/lit8 v0, p2, 0x14

    .line 86
    .line 87
    add-int/2addr v0, p3

    .line 88
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/lit8 v3, v0, -0x4

    .line 93
    .line 94
    new-array v4, v3, [B

    .line 95
    .line 96
    new-array v5, v1, [B

    .line 97
    .line 98
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->j:[B

    .line 99
    .line 100
    add-int/lit8 p2, p2, 0x16

    .line 101
    .line 102
    add-int/2addr p2, p3

    .line 103
    invoke-static {p1, p2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    add-int/2addr p2, v0

    .line 107
    sub-int/2addr p2, v1

    .line 108
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->j:[B

    .line 109
    .line 110
    invoke-static {p1, p2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    add-int/lit8 v0, p2, 0x14

    .line 115
    .line 116
    add-int/2addr v0, p3

    .line 117
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->f:Ljava/util/Map;

    .line 122
    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 132
    .line 133
    add-int/lit8 v0, p2, 0x16

    .line 134
    .line 135
    add-int/2addr v0, p3

    .line 136
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->h:I

    .line 141
    .line 142
    add-int/lit8 v3, p2, 0x18

    .line 143
    .line 144
    add-int/2addr v3, p3

    .line 145
    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->h:I

    .line 150
    .line 151
    new-array v6, v5, [B

    .line 152
    .line 153
    sub-int v7, v4, v5

    .line 154
    .line 155
    new-array v7, v7, [B

    .line 156
    .line 157
    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->i:[B

    .line 158
    .line 159
    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->h:I

    .line 163
    .line 164
    add-int/2addr v3, v5

    .line 165
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->i:[B

    .line 166
    .line 167
    sub-int v5, v4, v5

    .line 168
    .line 169
    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 p2, p2, 0x1a

    .line 173
    .line 174
    add-int/2addr p2, p3

    .line 175
    add-int/2addr p2, v4

    .line 176
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    add-int/lit8 p3, p2, -0x4

    .line 181
    .line 182
    new-array v3, p3, [B

    .line 183
    .line 184
    new-array v5, v1, [B

    .line 185
    .line 186
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->j:[B

    .line 187
    .line 188
    add-int/2addr v0, v4

    .line 189
    invoke-static {p1, v0, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    .line 191
    .line 192
    add-int/2addr v0, p2

    .line 193
    sub-int/2addr v0, v1

    .line 194
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->j:[B

    .line 195
    .line 196
    invoke-static {p1, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final g([BII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->g([BII)V

    .line 2
    .line 3
    .line 4
    add-int/lit8 p3, p2, 0x2

    .line 5
    .line 6
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->f:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    check-cast p3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 21
    .line 22
    add-int/lit8 p3, p2, 0x8

    .line 23
    .line 24
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->g:J

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long p3, v0, v2

    .line 33
    .line 34
    if-lez p3, :cond_1

    .line 35
    .line 36
    add-int/lit8 p3, p2, 0xc

    .line 37
    .line 38
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->f:Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 53
    .line 54
    add-int/lit8 p2, p2, 0xe

    .line 55
    .line 56
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->h:I

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    move p2, p1

    .line 64
    :goto_0
    int-to-long v0, p2

    .line 65
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->g:J

    .line 66
    .line 67
    cmp-long p3, v0, v2

    .line 68
    .line 69
    if-gez p3, :cond_1

    .line 70
    .line 71
    move p3, p1

    .line 72
    :goto_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->h:I

    .line 73
    .line 74
    if-ge p3, v0, :cond_0

    .line 75
    .line 76
    add-int/lit8 p3, p3, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method
