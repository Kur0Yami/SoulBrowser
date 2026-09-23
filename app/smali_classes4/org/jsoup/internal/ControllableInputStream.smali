.class public Lorg/jsoup/internal/ControllableInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final c:Lorg/jsoup/internal/SimpleBufferedInput;

.field public f:I

.field public g:J

.field public h:J

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lorg/jsoup/Progress;

.field public n:Ljava/lang/Object;

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lorg/jsoup/internal/SimpleBufferedInput;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->l:Z

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->o:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 16
    .line 17
    if-ltz p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/jsoup/internal/ControllableInputStream;->c:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 25
    .line 26
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    .line 27
    .line 28
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 29
    .line 30
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->j:I

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    iput-wide p1, p0, Lorg/jsoup/internal/ControllableInputStream;->g:J

    .line 37
    .line 38
    return-void
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v0, v1

    .line 20
    :goto_1
    sget-object v2, Lorg/jsoup/internal/SimpleBufferedInput;->j:Lorg/jsoup/internal/SoftPool;

    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [B

    .line 27
    .line 28
    const/16 v3, 0x2000

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v4, v3

    .line 38
    :goto_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_3
    if-eqz v0, :cond_4

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_4

    .line 51
    :cond_4
    move v5, v3

    .line 52
    :goto_3
    invoke-virtual {p0, v2, v1, v5}, Ljava/io/InputStream;->read([BII)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v6, -0x1

    .line 57
    if-eq v5, v6, :cond_6

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-ge v6, v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    int-to-double v6, v6

    .line 70
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 71
    .line 72
    mul-double/2addr v6, v8

    .line 73
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    add-int/2addr v8, v5

    .line 78
    int-to-double v8, v8

    .line 79
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    double-to-int v6, v6

    .line 84
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    move-object v4, v6

    .line 95
    :cond_5
    invoke-virtual {v4, v2, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    sub-int/2addr p1, v5

    .line 101
    if-gtz p1, :cond_3

    .line 102
    .line 103
    :cond_6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    sget-object p0, Lorg/jsoup/internal/SimpleBufferedInput;->j:Lorg/jsoup/internal/SoftPool;

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object v4

    .line 112
    :goto_4
    sget-object p1, Lorg/jsoup/internal/SimpleBufferedInput;->j:Lorg/jsoup/internal/SoftPool;

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public static wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/jsoup/internal/ControllableInputStream;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/jsoup/internal/ControllableInputStream;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/jsoup/internal/ControllableInputStream;

    new-instance v1, Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-direct {v1, p0}, Lorg/jsoup/internal/SimpleBufferedInput;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p1}, Lorg/jsoup/internal/ControllableInputStream;-><init>(Lorg/jsoup/internal/SimpleBufferedInput;I)V

    return-object v0
.end method

.method public static wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ControllableInputStream;
    .locals 0

    .line 4
    invoke-static {p0, p2}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->m:Lorg/jsoup/Progress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->o:I

    .line 7
    .line 8
    const/high16 v1, 0x42c80000    # 100.0f

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, v1

    .line 16
    int-to-float v0, v0

    .line 17
    div-float/2addr v2, v0

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lorg/jsoup/internal/ControllableInputStream;->m:Lorg/jsoup/Progress;

    .line 25
    .line 26
    iget v3, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 27
    .line 28
    iget v4, p0, Lorg/jsoup/internal/ControllableInputStream;->o:I

    .line 29
    .line 30
    iget-object v5, p0, Lorg/jsoup/internal/ControllableInputStream;->n:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {v2, v3, v4, v0, v5}, Lorg/jsoup/Progress;->onProgress(IIFLjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    cmpl-float v0, v0, v1

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->m:Lorg/jsoup/Progress;

    .line 41
    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public allowClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/jsoup/internal/ControllableInputStream;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public baseReadFully()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->c:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/jsoup/internal/SimpleBufferedInput;->i:Z

    .line 4
    .line 5
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->l:Z

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
    return-void
.end method

.method public inputStream()Ljava/io/BufferedInputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/internal/ControllableInputStream;->c:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public mark(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    .line 5
    .line 6
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->j:I

    .line 10
    .line 11
    return-void
.end method

.method public max()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    return v0
.end method

.method public max(I)V
    .locals 2

    .line 2
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    sub-int v1, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 3
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    return-void
.end method

.method public onProgress(ILorg/jsoup/Progress;Ljava/lang/Object;)Lorg/jsoup/internal/ControllableInputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ProgressContext:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/jsoup/Progress<",
            "TProgressContext;>;TProgressContext;)",
            "Lorg/jsoup/internal/ControllableInputStream;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->o:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/jsoup/internal/ControllableInputStream;->m:Lorg/jsoup/Progress;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/jsoup/internal/ControllableInputStream;->n:Ljava/lang/Object;

    .line 12
    .line 13
    return-object p0
.end method

.method public read([BII)I
    .locals 8

    .line 1
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-boolean v2, p0, Lorg/jsoup/internal/ControllableInputStream;->k:Z

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-nez v2, :cond_a

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 24
    .line 25
    if-gtz v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iput-boolean v1, p0, Lorg/jsoup/internal/ControllableInputStream;->k:Z

    .line 40
    .line 41
    return v3

    .line 42
    :cond_3
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 45
    .line 46
    if-le p3, v0, :cond_4

    .line 47
    .line 48
    move p3, v0

    .line 49
    :cond_4
    :goto_1
    iget-wide v0, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long v0, v0, v4

    .line 54
    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iget-wide v6, p0, Lorg/jsoup/internal/ControllableInputStream;->g:J

    .line 63
    .line 64
    sub-long/2addr v0, v6

    .line 65
    iget-wide v6, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 66
    .line 67
    cmp-long v0, v0, v6

    .line 68
    .line 69
    if-gtz v0, :cond_9

    .line 70
    .line 71
    :goto_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v3, :cond_6

    .line 76
    .line 77
    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 78
    .line 79
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->o:I

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto :goto_4

    .line 84
    :cond_6
    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 85
    .line 86
    sub-int/2addr v1, v0

    .line 87
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 88
    .line 89
    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 90
    .line 91
    add-int/2addr v1, v0

    .line 92
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 93
    .line 94
    :goto_3
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->a()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    return v0

    .line 98
    :goto_4
    iget-wide v1, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 99
    .line 100
    cmp-long v1, v1, v4

    .line 101
    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    iget-wide v6, p0, Lorg/jsoup/internal/ControllableInputStream;->g:J

    .line 110
    .line 111
    sub-long/2addr v1, v6

    .line 112
    iget-wide v6, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 113
    .line 114
    cmp-long v1, v1, v6

    .line 115
    .line 116
    if-gtz v1, :cond_8

    .line 117
    .line 118
    :goto_5
    iget-wide v1, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 119
    .line 120
    cmp-long v1, v1, v4

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    throw v0

    .line 126
    :cond_9
    new-instance p1, Ljava/net/SocketTimeoutException;

    .line 127
    .line 128
    const-string p2, "Read timeout"

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_a
    :goto_6
    return v3
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->f:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->j:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->i:I

    .line 10
    .line 11
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->p:I

    .line 12
    .line 13
    return-void
.end method

.method public timeout(JJ)Lorg/jsoup/internal/ControllableInputStream;
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/jsoup/internal/ControllableInputStream;->g:J

    .line 2
    .line 3
    const-wide/32 p1, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long/2addr p3, p1

    .line 7
    iput-wide p3, p0, Lorg/jsoup/internal/ControllableInputStream;->h:J

    .line 8
    .line 9
    return-object p0
.end method
