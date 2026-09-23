.class public final Lokio/PriorityQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/PriorityQueue;",
        "",
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
        "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n1#1,514:1\n509#1,3:515\n509#1,3:518\n509#1,3:521\n509#1,3:524\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n415#1:515,3\n448#1:518,3\n481#1:521,3\n491#1:524,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:I

.field public b:[Lokio/AsyncTimeout;


# virtual methods
.method public final a(ILokio/AsyncTimeout;)V
    .locals 8

    .line 1
    :goto_0
    shr-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-wide v2, v1, Lokio/AsyncTimeout;->g:J

    .line 13
    .line 14
    iget-wide v4, p2, Lokio/AsyncTimeout;->g:J

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    sub-long/2addr v4, v2

    .line 19
    invoke-static {v6, v7, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    iput p1, v1, Lokio/AsyncTimeout;->f:I

    .line 26
    .line 27
    iget-object v2, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 28
    .line 29
    aput-object v1, v2, p1

    .line 30
    .line 31
    move p1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 34
    .line 35
    aput-object p2, v0, p1

    .line 36
    .line 37
    iput p1, p2, Lokio/AsyncTimeout;->f:I

    .line 38
    .line 39
    return-void
.end method

.method public final b(Lokio/AsyncTimeout;)V
    .locals 9

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lokio/AsyncTimeout;->f:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq v0, v1, :cond_6

    .line 10
    .line 11
    iget v2, p0, Lokio/PriorityQueue;->a:I

    .line 12
    .line 13
    iget-object v3, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput v1, p1, Lokio/AsyncTimeout;->f:I

    .line 21
    .line 22
    iget-object v1, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v4, v1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    iput v2, p0, Lokio/PriorityQueue;->a:I

    .line 30
    .line 31
    if-ne p1, v3, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-wide v1, p1, Lokio/AsyncTimeout;->g:J

    .line 35
    .line 36
    iget-wide v4, v3, Lokio/AsyncTimeout;->g:J

    .line 37
    .line 38
    sub-long/2addr v4, v1

    .line 39
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    invoke-static {v1, v2, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 48
    .line 49
    aput-object v3, p1, v0

    .line 50
    .line 51
    iput v0, v3, Lokio/AsyncTimeout;->f:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    if-gez p1, :cond_5

    .line 55
    .line 56
    :goto_0
    shl-int/lit8 p1, v0, 0x1

    .line 57
    .line 58
    add-int/lit8 v4, p1, 0x1

    .line 59
    .line 60
    iget v5, p0, Lokio/PriorityQueue;->a:I

    .line 61
    .line 62
    if-gt v4, v5, :cond_3

    .line 63
    .line 64
    iget-object v5, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 65
    .line 66
    aget-object p1, v5, p1

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 72
    .line 73
    aget-object v4, v5, v4

    .line 74
    .line 75
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-wide v5, p1, Lokio/AsyncTimeout;->g:J

    .line 79
    .line 80
    iget-wide v7, v4, Lokio/AsyncTimeout;->g:J

    .line 81
    .line 82
    sub-long/2addr v7, v5

    .line 83
    invoke-static {v1, v2, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-gez v5, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move-object p1, v4

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    if-gt p1, v5, :cond_4

    .line 93
    .line 94
    iget-object v4, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 95
    .line 96
    aget-object p1, v4, p1

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-wide v4, v3, Lokio/AsyncTimeout;->g:J

    .line 102
    .line 103
    iget-wide v6, p1, Lokio/AsyncTimeout;->g:J

    .line 104
    .line 105
    sub-long/2addr v6, v4

    .line 106
    invoke-static {v1, v2, v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-lez v4, :cond_4

    .line 111
    .line 112
    iget v4, p1, Lokio/AsyncTimeout;->f:I

    .line 113
    .line 114
    iput v0, p1, Lokio/AsyncTimeout;->f:I

    .line 115
    .line 116
    iget-object v5, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 117
    .line 118
    aput-object p1, v5, v0

    .line 119
    .line 120
    move v0, v4

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object p1, p0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 123
    .line 124
    aput-object v3, p1, v0

    .line 125
    .line 126
    iput v0, v3, Lokio/AsyncTimeout;->f:I

    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    invoke-virtual {p0, v0, v3}, Lokio/PriorityQueue;->a(ILokio/AsyncTimeout;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string v0, "Failed requirement."

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method
