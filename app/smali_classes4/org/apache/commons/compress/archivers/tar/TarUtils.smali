.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field public static final b:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 7
    .line 8
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->b:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 14
    .line 15
    return-void
.end method

.method public static a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .locals 2

    .line 1
    :goto_0
    if-lez p2, :cond_1

    .line 2
    .line 3
    add-int v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    aget-byte v0, p0, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 16
    .line 17
    new-array v0, p2, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->a([B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, ""

    .line 29
    .line 30
    return-object p0
.end method

.method public static b([BII)J
    .locals 7

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt p2, v1, :cond_6

    .line 5
    .line 6
    aget-byte v1, p0, p1

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-wide v2

    .line 13
    :cond_0
    move v1, p1

    .line 14
    :goto_0
    const/16 v4, 0x20

    .line 15
    .line 16
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    aget-byte v5, p0, v1

    .line 19
    .line 20
    if-ne v5, v4, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 26
    .line 27
    aget-byte v5, p0, v5

    .line 28
    .line 29
    :goto_1
    if-ge v1, v0, :cond_3

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    if-ne v5, v4, :cond_3

    .line 34
    .line 35
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x2

    .line 38
    .line 39
    aget-byte v0, p0, v0

    .line 40
    .line 41
    move v6, v5

    .line 42
    move v5, v0

    .line 43
    move v0, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 46
    .line 47
    aget-byte v4, p0, v1

    .line 48
    .line 49
    const/16 v5, 0x30

    .line 50
    .line 51
    if-lt v4, v5, :cond_4

    .line 52
    .line 53
    const/16 v5, 0x37

    .line 54
    .line 55
    if-gt v4, v5, :cond_4

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    shl-long/2addr v2, v5

    .line 59
    add-int/lit8 v4, v4, -0x30

    .line 60
    .line 61
    int-to-long v4, v4

    .line 62
    add-long/2addr v2, v4

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 71
    .line 72
    .line 73
    const-string p0, "\u0000"

    .line 74
    .line 75
    const-string v3, "{NUL}"

    .line 76
    .line 77
    invoke-virtual {v2, p0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v2, "Invalid byte "

    .line 82
    .line 83
    const-string v3, " at offset "

    .line 84
    .line 85
    invoke-static {v4, v2, v3}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sub-int/2addr v1, p1

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " in \'"

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, "\' len="

    .line 102
    .line 103
    invoke-static {p2, p0, v2}, Landroidx/work/impl/workers/a;->r(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_5
    return-wide v2

    .line 112
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string p1, "Length "

    .line 115
    .line 116
    const-string v0, " must be at least 2"

    .line 117
    .line 118
    invoke-static {p2, p1, v0}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public static c([BII)J
    .locals 8

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->b([BII)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    const-string v1, " byte binary number exceeds maximum signed long value"

    .line 21
    .line 22
    const-string v4, ", "

    .line 23
    .line 24
    const-string v5, "At offset "

    .line 25
    .line 26
    const/16 v6, 0x9

    .line 27
    .line 28
    if-ge p2, v6, :cond_6

    .line 29
    .line 30
    if-ge p2, v6, :cond_5

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    move v4, v3

    .line 35
    :goto_1
    const/16 v5, 0x8

    .line 36
    .line 37
    if-ge v4, p2, :cond_2

    .line 38
    .line 39
    shl-long/2addr v1, v5

    .line 40
    add-int v5, p1, v4

    .line 41
    .line 42
    aget-byte v5, p0, v5

    .line 43
    .line 44
    and-int/lit16 v5, v5, 0xff

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    add-long/2addr v1, v5

    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-wide/16 p0, 0x1

    .line 54
    .line 55
    sub-long/2addr v1, p0

    .line 56
    sub-int/2addr p2, v3

    .line 57
    mul-int/2addr p2, v5

    .line 58
    int-to-double v3, p2

    .line 59
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 60
    .line 61
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    double-to-long v3, v3

    .line 66
    sub-long/2addr v3, p0

    .line 67
    xor-long/2addr v1, v3

    .line 68
    :cond_3
    if-eqz v0, :cond_4

    .line 69
    .line 70
    neg-long p0, v1

    .line 71
    return-wide p0

    .line 72
    :cond_4
    return-wide v1

    .line 73
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_6
    add-int/lit8 v3, p2, -0x1

    .line 101
    .line 102
    new-array v6, v3, [B

    .line 103
    .line 104
    add-int/lit8 v7, p1, 0x1

    .line 105
    .line 106
    invoke-static {p0, v7, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    new-instance p0, Ljava/math/BigInteger;

    .line 110
    .line 111
    invoke-direct {p0, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 112
    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    const-wide/16 v2, -0x1

    .line 117
    .line 118
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :cond_7
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    const/16 v3, 0x3f

    .line 135
    .line 136
    if-gt v2, v3, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide p0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    neg-long p0, p0

    .line 145
    :cond_8
    return-wide p0

    .line 146
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0
.end method
