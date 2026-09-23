.class Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OffsetInfo;,
        Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr v2, v3

    .line 22
    const/16 v3, 0x64

    .line 23
    .line 24
    const-string v4, "Cannot read metadata."

    .line 25
    .line 26
    if-gt v2, v3, :cond_5

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    invoke-virtual {v0, v3}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    move v5, v3

    .line 34
    :goto_0
    const-wide v6, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iget-object v8, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    const-wide/16 v9, -0x1

    .line 42
    .line 43
    if-ge v5, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    int-to-long v12, v12

    .line 57
    and-long/2addr v12, v6

    .line 58
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 59
    .line 60
    .line 61
    const v14, 0x6d657461

    .line 62
    .line 63
    .line 64
    if-ne v14, v11, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-wide v12, v9

    .line 71
    :goto_1
    cmp-long v1, v12, v9

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-long v1, v1

    .line 80
    sub-long v1, v12, v1

    .line 81
    .line 82
    long-to-int v1, v1

    .line 83
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0xc

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    int-to-long v0, v0

    .line 96
    and-long/2addr v0, v6

    .line 97
    :goto_2
    int-to-long v9, v3

    .line 98
    cmp-long v2, v9, v0

    .line 99
    .line 100
    if-gez v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    int-to-long v9, v5

    .line 111
    and-long/2addr v9, v6

    .line 112
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 113
    .line 114
    .line 115
    const v5, 0x456d6a69

    .line 116
    .line 117
    .line 118
    if-eq v5, v2, :cond_3

    .line 119
    .line 120
    const v5, 0x656d6a69

    .line 121
    .line 122
    .line 123
    if-ne v5, v2, :cond_2

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    :goto_3
    add-long/2addr v9, v12

    .line 130
    long-to-int v0, v9

    .line 131
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    .line 133
    .line 134
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 135
    .line 136
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/Table;-><init>()V

    .line 137
    .line 138
    .line 139
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/2addr v2, v1

    .line 157
    iput-object p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->b:Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    iput v2, v0, Landroidx/emoji2/text/flatbuffer/Table;->a:I

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    sub-int/2addr v2, p0

    .line 166
    iput v2, v0, Landroidx/emoji2/text/flatbuffer/Table;->c:I

    .line 167
    .line 168
    iget-object p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->b:Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    iput p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->d:I

    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 178
    .line 179
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 184
    .line 185
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0
.end method
