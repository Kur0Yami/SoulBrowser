.class final Lokio/FileHandle$FileHandleSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/FileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileHandleSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/FileHandle$FileHandleSource;",
        "Lokio/Source;",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n40#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n*L\n436#1:446\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lokio/FileHandle;

.field public f:J

.field public g:Z


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .locals 1

    .line 1
    const-string v0, "fileHandle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokio/FileHandle$FileHandleSource;->c:Lokio/FileHandle;

    .line 10
    .line 11
    iput-wide p2, p0, Lokio/FileHandle$FileHandleSource;->f:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->g:Z

    .line 8
    .line 9
    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->c:Lokio/FileHandle;

    .line 10
    .line 11
    iget-object v1, v0, Lokio/FileHandle;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v2, v0, Lokio/FileHandle;->f:I

    .line 17
    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    iput v2, v0, Lokio/FileHandle;->f:I

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-boolean v2, v0, Lokio/FileHandle;->c:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lokio/FileHandle;->a()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final p0(JLokio/Buffer;)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v4, v0, Lokio/FileHandle$FileHandleSource;->g:Z

    .line 13
    .line 14
    if-nez v4, :cond_6

    .line 15
    .line 16
    iget-wide v4, v0, Lokio/FileHandle$FileHandleSource;->f:J

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    cmp-long v6, v1, v6

    .line 21
    .line 22
    if-ltz v6, :cond_5

    .line 23
    .line 24
    add-long/2addr v1, v4

    .line 25
    move-wide v7, v4

    .line 26
    :goto_0
    cmp-long v6, v7, v1

    .line 27
    .line 28
    if-gez v6, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-virtual {v3, v6}, Lokio/Buffer;->m(I)Lokio/Segment;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    iget-object v9, v14, Lokio/Segment;->a:[B

    .line 36
    .line 37
    iget v10, v14, Lokio/Segment;->c:I

    .line 38
    .line 39
    const-wide/16 p1, -0x1

    .line 40
    .line 41
    sub-long v12, v1, v7

    .line 42
    .line 43
    rsub-int v6, v10, 0x2000

    .line 44
    .line 45
    move-wide v15, v1

    .line 46
    int-to-long v1, v6

    .line 47
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    long-to-int v11, v1

    .line 52
    iget-object v6, v0, Lokio/FileHandle$FileHandleSource;->c:Lokio/FileHandle;

    .line 53
    .line 54
    invoke-virtual/range {v6 .. v11}, Lokio/FileHandle;->b(J[BII)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, -0x1

    .line 59
    if-ne v1, v2, :cond_1

    .line 60
    .line 61
    iget v1, v14, Lokio/Segment;->b:I

    .line 62
    .line 63
    iget v2, v14, Lokio/Segment;->c:I

    .line 64
    .line 65
    if-ne v1, v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v14}, Lokio/Segment;->a()Lokio/Segment;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v3, Lokio/Buffer;->c:Lokio/Segment;

    .line 72
    .line 73
    invoke-static {v14}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    cmp-long v1, v4, v7

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    move-wide/from16 v7, p1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget v2, v14, Lokio/Segment;->c:I

    .line 84
    .line 85
    add-int/2addr v2, v1

    .line 86
    iput v2, v14, Lokio/Segment;->c:I

    .line 87
    .line 88
    int-to-long v1, v1

    .line 89
    add-long/2addr v7, v1

    .line 90
    iget-wide v9, v3, Lokio/Buffer;->f:J

    .line 91
    .line 92
    add-long/2addr v9, v1

    .line 93
    iput-wide v9, v3, Lokio/Buffer;->f:J

    .line 94
    .line 95
    move-wide v1, v15

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-wide/16 p1, -0x1

    .line 98
    .line 99
    :cond_3
    sub-long/2addr v7, v4

    .line 100
    :goto_1
    cmp-long v1, v7, p1

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    iget-wide v1, v0, Lokio/FileHandle$FileHandleSource;->f:J

    .line 105
    .line 106
    add-long/2addr v1, v7

    .line 107
    iput-wide v1, v0, Lokio/FileHandle$FileHandleSource;->f:J

    .line 108
    .line 109
    :cond_4
    return-wide v7

    .line 110
    :cond_5
    const-string v3, "byteCount < 0: "

    .line 111
    .line 112
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v2

    .line 126
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string v2, "closed"

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Lokio/Timeout;->d:Lokio/Timeout$Companion$NONE$1;

    .line 2
    .line 3
    return-object v0
.end method
