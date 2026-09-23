.class Lorg/jsoup/internal/SimpleBufferedInput;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field public static final j:Lorg/jsoup/internal/SoftPool;


# instance fields
.field public c:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/internal/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lorg/jsoup/internal/b;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/jsoup/internal/SimpleBufferedInput;->j:Lorg/jsoup/internal/SoftPool;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lorg/jsoup/internal/SimpleBufferedInput;->j:Lorg/jsoup/internal/SoftPool;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    iput-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-gez v0, :cond_2

    .line 26
    .line 27
    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 31
    .line 32
    const/16 v4, 0x2000

    .line 33
    .line 34
    if-lt v3, v4, :cond_4

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    .line 38
    sub-int/2addr v3, v0

    .line 39
    iget-object v4, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 40
    .line 41
    invoke-static {v4, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iput v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 45
    .line 46
    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iput v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    .line 50
    .line 51
    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 52
    .line 53
    :cond_4
    :goto_0
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 54
    .line 55
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 56
    .line 57
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 58
    .line 59
    iget-object v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 60
    .line 61
    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 62
    .line 63
    array-length v4, v2

    .line 64
    sub-int/2addr v4, v3

    .line 65
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v2, 0x1

    .line 70
    if-lez v0, :cond_7

    .line 71
    .line 72
    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 73
    .line 74
    add-int/2addr v3, v0

    .line 75
    iput v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 76
    .line 77
    :goto_1
    iget-object v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 78
    .line 79
    array-length v3, v3

    .line 80
    iget v4, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 81
    .line 82
    sub-int/2addr v3, v4

    .line 83
    if-lez v3, :cond_7

    .line 84
    .line 85
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ge v3, v2, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 95
    .line 96
    iget-object v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 97
    .line 98
    iget v4, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 99
    .line 100
    array-length v5, v3

    .line 101
    sub-int/2addr v5, v4

    .line 102
    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-gtz v0, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 110
    .line 111
    add-int/2addr v3, v0

    .line 112
    iput v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    :goto_2
    if-ne v0, v1, :cond_8

    .line 116
    .line 117
    iput-boolean v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 118
    .line 119
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 120
    .line 121
    .line 122
    :cond_8
    :goto_3
    return-void
.end method

.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget-object v1, Lorg/jsoup/internal/SimpleBufferedInput;->j:Lorg/jsoup/internal/SoftPool;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 20
    .line 21
    return-void
.end method

.method public final mark(I)V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 6
    .line 7
    iput p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "Read-ahead limit is greater than buffer size"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final read()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->a()V

    .line 3
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 6
    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 3

    .line 7
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 8
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    if-gtz v0, :cond_3

    .line 10
    iget-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    if-gez v0, :cond_2

    .line 11
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 13
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    :cond_1
    return p1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->a()V

    .line 15
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->g:I

    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    sub-int/2addr v0, v2

    .line 16
    :cond_3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-gtz p3, :cond_4

    return v1

    .line 17
    :cond_4
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->c:[B

    .line 19
    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    return p3

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->h:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->f:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 9
    .line 10
    const-string v1, "Resetting to invalid mark"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
