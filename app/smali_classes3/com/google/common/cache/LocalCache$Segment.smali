.class final Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/cache/LocalCache;

.field public volatile f:I

.field public g:J

.field public h:I

.field public i:I

.field public volatile j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final k:J

.field public final l:Ljava/lang/ref/ReferenceQueue;

.field public final m:Ljava/lang/ref/ReferenceQueue;

.field public final n:Ljava/util/AbstractQueue;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final p:Ljava/util/AbstractQueue;

.field public final q:Ljava/util/AbstractQueue;

.field public final r:Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 12
    .line 13
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->k:J

    .line 14
    .line 15
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 19
    .line 20
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 21
    .line 22
    invoke-direct {p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    mul-int/lit8 p2, p2, 0x3

    .line 30
    .line 31
    div-int/lit8 p2, p2, 0x4

    .line 32
    .line 33
    iput p2, p0, Lcom/google/common/cache/LocalCache$Segment;->i:I

    .line 34
    .line 35
    iget-object v0, p1, Lcom/google/common/cache/LocalCache;->n:Lcom/google/common/cache/Weigher;

    .line 36
    .line 37
    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->c:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    int-to-long v0, p2

    .line 43
    cmp-long p3, v0, p3

    .line 44
    .line 45
    if-nez p3, :cond_1

    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    iput p2, p0, Lcom/google/common/cache/LocalCache$Segment;->i:I

    .line 50
    .line 51
    :cond_1
    :goto_0
    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 52
    .line 53
    iget-object p2, p1, Lcom/google/common/cache/LocalCache;->k:Lcom/google/common/cache/LocalCache$Strength;

    .line 54
    .line 55
    sget-object p3, Lcom/google/common/cache/LocalCache$Strength;->c:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 56
    .line 57
    const/4 p4, 0x0

    .line 58
    if-eq p2, p3, :cond_2

    .line 59
    .line 60
    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object p2, p4

    .line 67
    :goto_1
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 68
    .line 69
    iget-object p2, p1, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 70
    .line 71
    if-eq p2, p3, :cond_3

    .line 72
    .line 73
    new-instance p4, Ljava/lang/ref/ReferenceQueue;

    .line 74
    .line 75
    invoke-direct {p4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 76
    .line 77
    .line 78
    :cond_3
    iput-object p4, p0, Lcom/google/common/cache/LocalCache$Segment;->m:Ljava/lang/ref/ReferenceQueue;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    sget-object p2, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Queue;

    .line 93
    .line 94
    :goto_2
    check-cast p2, Ljava/util/AbstractQueue;

    .line 95
    .line 96
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->n:Ljava/util/AbstractQueue;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->b()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    new-instance p2, Lcom/google/common/cache/LocalCache$WriteQueue;

    .line 105
    .line 106
    invoke-direct {p2}, Lcom/google/common/cache/LocalCache$WriteQueue;-><init>()V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    sget-object p2, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Queue;

    .line 111
    .line 112
    :goto_3
    check-cast p2, Ljava/util/AbstractQueue;

    .line 113
    .line 114
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    new-instance p1, Lcom/google/common/cache/LocalCache$AccessQueue;

    .line 123
    .line 124
    invoke-direct {p1}, Lcom/google/common/cache/LocalCache$AccessQueue;-><init>()V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    sget-object p1, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Queue;

    .line 129
    .line 130
    :goto_4
    check-cast p1, Ljava/util/AbstractQueue;

    .line 131
    .line 132
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 29
    .line 30
    invoke-virtual {v3, p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory;->b(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->m:Ljava/lang/ref/ReferenceQueue;

    .line 35
    .line 36
    invoke-interface {v1, p2, v2, p1}, Lcom/google/common/cache/LocalCache$ValueReference;->f(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p1, p2}, Lcom/google/common/cache/ReferenceEntry;->e(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->n:Ljava/util/AbstractQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 13

    .line 1
    sget-object v7, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->k:Lcom/google/common/cache/LocalCache$Strength;

    .line 6
    .line 7
    sget-object v8, Lcom/google/common/cache/LocalCache$Strength;->c:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 8
    .line 9
    const/16 v9, 0x10

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    if-eq v0, v8, :cond_3

    .line 13
    .line 14
    move v0, v10

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v11, v2, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 42
    .line 43
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    add-int/lit8 v4, v4, -0x1

    .line 48
    .line 49
    and-int v12, v3, v4

    .line 50
    .line 51
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/google/common/cache/ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .line 57
    move-object v4, v1

    .line 58
    move-object v1, v2

    .line 59
    move-object v2, v3

    .line 60
    :goto_0
    if-eqz v3, :cond_1

    .line 61
    .line 62
    if-ne v3, v4, :cond_2

    .line 63
    .line 64
    :try_start_1
    iget v4, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    iput v4, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 69
    .line 70
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v3, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 91
    .line 92
    add-int/lit8 v3, v3, -0x1

    .line 93
    .line 94
    invoke-virtual {v11, v12, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput v3, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 109
    .line 110
    .line 111
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    goto :goto_0

    .line 113
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    if-ne v0, v9, :cond_0

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move-object v1, v2

    .line 120
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 130
    .line 131
    if-eq v0, v8, :cond_a

    .line 132
    .line 133
    :cond_4
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->m:Ljava/lang/ref/ReferenceQueue;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    move-object v6, v0

    .line 142
    check-cast v6, Lcom/google/common/cache/LocalCache$ValueReference;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v0, v2}, Lcom/google/common/cache/LocalCache;->e(I)Lcom/google/common/cache/LocalCache$Segment;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    .line 167
    .line 168
    :try_start_3
    iget-object v8, v3, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/lit8 v1, v1, -0x1

    .line 175
    .line 176
    and-int v11, v2, v1

    .line 177
    .line 178
    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lcom/google/common/cache/ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 183
    .line 184
    move v4, v2

    .line 185
    move-object v2, v1

    .line 186
    move-object v1, v3

    .line 187
    move-object v3, v2

    .line 188
    :goto_4
    if-eqz v3, :cond_7

    .line 189
    .line 190
    move v5, v4

    .line 191
    :try_start_4
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-ne v12, v5, :cond_6

    .line 200
    .line 201
    if-eqz v4, :cond_6

    .line 202
    .line 203
    iget-object v12, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 204
    .line 205
    iget-object v12, v12, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 206
    .line 207
    invoke-virtual {v12, v0, v4}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    if-eqz v12, :cond_6

    .line 212
    .line 213
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-ne v0, v6, :cond_5

    .line 218
    .line 219
    iget v0, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 220
    .line 221
    add-int/lit8 v0, v0, 0x1

    .line 222
    .line 223
    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 224
    .line 225
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget v2, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 234
    .line 235
    add-int/lit8 v2, v2, -0x1

    .line 236
    .line 237
    invoke-virtual {v8, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iput v2, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_8

    .line 250
    .line 251
    :goto_5
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :catchall_2
    move-exception v0

    .line 256
    goto :goto_7

    .line 257
    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_8

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_6
    :try_start_5
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 268
    .line 269
    .line 270
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 271
    move v4, v5

    .line 272
    goto :goto_4

    .line 273
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-nez v0, :cond_8

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 284
    .line 285
    if-ne v10, v9, :cond_4

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :catchall_3
    move-exception v0

    .line 289
    move-object v1, v3

    .line 290
    :goto_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_9

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 300
    .line 301
    .line 302
    :cond_9
    throw v0

    .line 303
    :cond_a
    :goto_8
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->g:J

    .line 2
    .line 3
    int-to-long v2, p3

    .line 4
    sub-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->g:J

    .line 6
    .line 7
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 14
    .line 15
    invoke-interface {p3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 19
    .line 20
    iget-object p4, p3, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    .line 21
    .line 22
    sget-object v0, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Queue;

    .line 23
    .line 24
    if-eq p4, v0, :cond_1

    .line 25
    .line 26
    new-instance p4, Lcom/google/common/cache/RemovalNotification;

    .line 27
    .line 28
    invoke-direct {p4, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p3, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final e(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->b()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-long v0, v0

    .line 22
    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->k:J

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    sget-object v1, Lcom/google/common/cache/RemovalCause;->i:Lcom/google/common/cache/RemovalCause;

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->q(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/google/common/cache/LocalCache$Segment;->g:J

    .line 48
    .line 49
    cmp-long p1, v4, v2

    .line 50
    .line 51
    if-lez p1, :cond_6

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-lez v4, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/common/cache/LocalCache$Segment;->q(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_6
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 13
    .line 14
    shl-int/lit8 v3, v1, 0x1

    .line 15
    .line 16
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 17
    .line 18
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    mul-int/lit8 v3, v3, 0x3

    .line 26
    .line 27
    div-int/lit8 v3, v3, 0x4

    .line 28
    .line 29
    iput v3, p0, Lcom/google/common/cache/LocalCache$Segment;->i:I

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v5, v1, :cond_6

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lcom/google/common/cache/ReferenceEntry;

    .line 45
    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    and-int/2addr v8, v3

    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_1
    move-object v9, v6

    .line 64
    :goto_1
    if-eqz v7, :cond_3

    .line 65
    .line 66
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    and-int/2addr v10, v3

    .line 71
    if-eq v10, v8, :cond_2

    .line 72
    .line 73
    move-object v9, v7

    .line 74
    move v8, v10

    .line 75
    :cond_2
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    if-eq v6, v9, :cond_5

    .line 84
    .line 85
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    and-int/2addr v7, v3

    .line 90
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Lcom/google/common/cache/ReferenceEntry;

    .line 95
    .line 96
    invoke-virtual {p0, v6, v8}, Lcom/google/common/cache/LocalCache$Segment;->a(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {p0, v6}, Lcom/google/common/cache/LocalCache$Segment;->p(Lcom/google/common/cache/ReferenceEntry;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 110
    .line 111
    :goto_3
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    iput-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .line 121
    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 122
    .line 123
    return-void
.end method

.method public final g(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->b()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 11
    .line 12
    sget-object v1, Lcom/google/common/cache/RemovalCause;->h:Lcom/google/common/cache/RemovalCause;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->d(Lcom/google/common/cache/ReferenceEntry;J)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/common/cache/LocalCache$Segment;->q(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->d(Lcom/google/common/cache/ReferenceEntry;J)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/common/cache/LocalCache$Segment;->q(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2
    .line 3
    const-string v1, "CacheLoader returned null for key "

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    :try_start_1
    iget-object v1, p3, Lcom/google/common/cache/LocalCache$LoadingValueReference;->g:Lcom/google/common/base/Stopwatch;

    .line 14
    .line 15
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    iget-boolean v5, v1, Lcom/google/common/base/Stopwatch;->a:Z

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    iget-wide v7, v1, Lcom/google/common/base/Stopwatch;->b:J

    .line 26
    .line 27
    sub-long/2addr v5, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-wide v5, v2

    .line 30
    :goto_0
    invoke-virtual {v4, v5, v6, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-interface {v0, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->d(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->w(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object p4

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v4, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    .line 44
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "."

    .line 54
    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :catchall_1
    move-exception v1

    .line 67
    const/4 p4, 0x0

    .line 68
    :goto_1
    if-nez p4, :cond_6

    .line 69
    .line 70
    iget-object p4, p3, Lcom/google/common/cache/LocalCache$LoadingValueReference;->g:Lcom/google/common/base/Stopwatch;

    .line 71
    .line 72
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    iget-boolean v5, p4, Lcom/google/common/base/Stopwatch;->a:Z

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    iget-wide v5, p4, Lcom/google/common/base/Stopwatch;->b:J

    .line 83
    .line 84
    sub-long/2addr v2, v5

    .line 85
    :cond_2
    invoke-virtual {v4, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->c(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 93
    .line 94
    .line 95
    :try_start_2
    iget-object p4, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 96
    .line 97
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    add-int/lit8 v0, v0, -0x1

    .line 102
    .line 103
    and-int/2addr v0, p2

    .line 104
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/google/common/cache/ReferenceEntry;

    .line 109
    .line 110
    move-object v3, v2

    .line 111
    :goto_2
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-ne v5, p2, :cond_5

    .line 122
    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 126
    .line 127
    iget-object v5, v5, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 128
    .line 129
    invoke-virtual {v5, p1, v4}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-ne p1, p3, :cond_4

    .line 140
    .line 141
    iget-object p1, p3, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 142
    .line 143
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    iget-object p1, p3, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 150
    .line 151
    invoke-interface {v3, p1}, Lcom/google/common/cache/ReferenceEntry;->e(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :catchall_2
    move-exception p1

    .line 156
    goto :goto_4

    .line 157
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->r(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p4, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 172
    .line 173
    .line 174
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    goto :goto_2

    .line 176
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :cond_6
    :goto_5
    throw v1
.end method

.method public final i(ILjava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    and-int/2addr v1, p1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eq v1, p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->x()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 38
    .line 39
    invoke-virtual {v2, p2, v1}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public final j(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->x()V

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->x()V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 27
    .line 28
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->d(Lcom/google/common/cache/ReferenceEntry;J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    return-object v1

    .line 53
    :cond_3
    return-object v0
.end method

.method public final k(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v3, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->a()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {v1, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 19
    .line 20
    .line 21
    iget v5, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    sub-int/2addr v5, v6

    .line 25
    iget-object v7, v1, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sub-int/2addr v8, v6

    .line 32
    and-int/2addr v8, v2

    .line 33
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Lcom/google/common/cache/ReferenceEntry;

    .line 38
    .line 39
    move-object v10, v9

    .line 40
    :goto_0
    const/4 v11, 0x0

    .line 41
    if-eqz v10, :cond_4

    .line 42
    .line 43
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    if-ne v13, v2, :cond_3

    .line 52
    .line 53
    if-eqz v12, :cond_3

    .line 54
    .line 55
    iget-object v13, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 56
    .line 57
    iget-object v13, v13, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 58
    .line 59
    invoke-virtual {v13, v0, v12}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_3

    .line 64
    .line 65
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->d()Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-eqz v14, :cond_0

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    if-nez v14, :cond_1

    .line 82
    .line 83
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    sget-object v4, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 88
    .line 89
    invoke-virtual {v1, v12, v14, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_1
    iget-object v15, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 97
    .line 98
    invoke-virtual {v15, v10, v3, v4}, Lcom/google/common/cache/LocalCache;->d(Lcom/google/common/cache/ReferenceEntry;J)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_2

    .line 103
    .line 104
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    sget-object v4, Lcom/google/common/cache/RemovalCause;->h:Lcom/google/common/cache/RemovalCause;

    .line 109
    .line 110
    invoke-virtual {v1, v12, v14, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-object v3, v1, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 114
    .line 115
    invoke-interface {v3, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 119
    .line 120
    invoke-interface {v3, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    iput v5, v1, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v1, v10, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->n(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v1, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 130
    .line 131
    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 138
    .line 139
    .line 140
    return-object v14

    .line 141
    :cond_3
    :try_start_1
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    move-object v13, v11

    .line 147
    :goto_2
    if-eqz v6, :cond_6

    .line 148
    .line 149
    new-instance v11, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    .line 150
    .line 151
    invoke-direct {v11}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 152
    .line 153
    .line 154
    if-nez v10, :cond_5

    .line 155
    .line 156
    iget-object v3, v1, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v1, v0, v2, v9}, Lcom/google/common/cache/LocalCache$EntryFactory;->d(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-interface {v10, v11}, Lcom/google/common/cache/ReferenceEntry;->e(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    invoke-interface {v10, v11}, Lcom/google/common/cache/ReferenceEntry;->e(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 181
    .line 182
    .line 183
    if-eqz v6, :cond_7

    .line 184
    .line 185
    :try_start_2
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 186
    move-object/from16 v3, p3

    .line 187
    .line 188
    :try_start_3
    invoke-virtual {v11, v0, v3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->g(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v0, v2, v11, v3}, Lcom/google/common/cache/LocalCache$Segment;->h(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    iget-object v2, v1, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 198
    .line 199
    invoke-interface {v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b()V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 206
    :catchall_2
    move-exception v0

    .line 207
    iget-object v2, v1, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 208
    .line 209
    invoke-interface {v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b()V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_7
    invoke-virtual {v1, v10, v0, v13}, Lcom/google/common/cache/LocalCache$Segment;->y(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 222
    .line 223
    .line 224
    throw v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x3f

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iget v3, p0, Lcom/google/common/cache/LocalCache$Segment;->i:I

    .line 20
    .line 21
    if-le v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->f()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    and-int/2addr v3, p2

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/google/common/cache/ReferenceEntry;

    .line 44
    .line 45
    move-object v5, v4

    .line 46
    :goto_1
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, p2, :cond_4

    .line 58
    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 62
    .line 63
    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 64
    .line 65
    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget p4, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 82
    .line 83
    add-int/lit8 p4, p4, 0x1

    .line 84
    .line 85
    iput p4, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 86
    .line 87
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-eqz p4, :cond_1

    .line 92
    .line 93
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    sget-object p4, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 98
    .line 99
    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v5, p3, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    iget p1, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_1
    invoke-virtual {p0, v5, p3, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 109
    .line 110
    .line 111
    iget p1, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 112
    .line 113
    add-int/lit8 p1, p1, 0x1

    .line 114
    .line 115
    :goto_2
    iput p1, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 116
    .line 117
    invoke-virtual {p0, v5}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 124
    .line 125
    .line 126
    return-object v6

    .line 127
    :cond_2
    if-eqz p4, :cond_3

    .line 128
    .line 129
    :try_start_1
    invoke-virtual {p0, v5, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->n(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :cond_3
    :try_start_2
    iget p4, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 140
    .line 141
    add-int/lit8 p4, p4, 0x1

    .line 142
    .line 143
    iput p4, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 144
    .line 145
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    sget-object p4, Lcom/google/common/cache/RemovalCause;->f:Lcom/google/common/cache/RemovalCause;

    .line 150
    .line 151
    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v5, p3, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v5}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_4
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    iget p4, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 167
    .line 168
    add-int/lit8 p4, p4, 0x1

    .line 169
    .line 170
    iput p4, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 171
    .line 172
    iget-object p4, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 173
    .line 174
    iget-object p4, p4, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 175
    .line 176
    invoke-virtual {p4, p0, p1, p2, v4}, Lcom/google/common/cache/LocalCache$EntryFactory;->d(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget p2, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 187
    .line 188
    add-int/lit8 p2, p2, 0x1

    .line 189
    .line 190
    iput p2, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 191
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 200
    .line 201
    .line 202
    throw p1
.end method

.method public final n(Lcom/google/common/cache/ReferenceEntry;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o(Lcom/google/common/cache/ReferenceEntry;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->n:Ljava/util/AbstractQueue;

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final p(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sget-object v3, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final q(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    and-int/2addr p2, v1

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v4, v1

    .line 15
    check-cast v4, Lcom/google/common/cache/ReferenceEntry;

    .line 16
    .line 17
    move-object v5, v4

    .line 18
    :goto_0
    if-eqz v5, :cond_1

    .line 19
    .line 20
    if-ne v5, p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 23
    .line 24
    add-int/2addr p1, v2

    .line 25
    iput p1, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 26
    .line 27
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    move-object v3, p0

    .line 44
    move-object v9, p3

    .line 45
    invoke-virtual/range {v3 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget p3, v3, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 50
    .line 51
    sub-int/2addr p3, v2

    .line 52
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput p3, v3, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 56
    .line 57
    return v2

    .line 58
    :cond_0
    move-object v3, p0

    .line 59
    move-object v9, p3

    .line 60
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v3, p0

    .line 66
    const/4 p1, 0x0

    .line 67
    return p1
.end method

.method public final r(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    if-eq p1, p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/LocalCache$Segment;->a(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->p(Lcom/google/common/cache/ReferenceEntry;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 28
    .line 29
    return-object v1
.end method

.method public final s(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;
    .locals 1

    .line 1
    invoke-interface {p5}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p3, p4, v0, p6}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 9
    .line 10
    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 14
    .line 15
    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-interface {p5}, Lcom/google/common/cache/LocalCache$ValueReference;->d()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-interface {p5, p2}, Lcom/google/common/cache/LocalCache$ValueReference;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->r(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final t(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->c()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->g(J)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    .line 10
    .line 11
    check-cast v0, Lcom/google/common/cache/LocalCache$2;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/common/cache/LocalCache;->n:Lcom/google/common/cache/Weigher;

    .line 8
    .line 9
    check-cast v2, Lcom/google/common/cache/CacheBuilder$OneWeigher;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/LocalCache$Strength$1;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/google/common/cache/LocalCache$StrongValueReference;

    .line 20
    .line 21
    invoke-direct {v2, p2}, Lcom/google/common/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v2}, Lcom/google/common/cache/ReferenceEntry;->e(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->b()V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->g:J

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    int-to-long v4, v4

    .line 34
    add-long/2addr v2, v4

    .line 35
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->g:J

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/ReferenceEntry;->j(J)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->q:Ljava/util/AbstractQueue;

    .line 47
    .line 48
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->p:Ljava/util/AbstractQueue;

    .line 52
    .line 53
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p2}, Lcom/google/common/cache/LocalCache$ValueReference;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final w(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/common/cache/RemovalCause;->f:Lcom/google/common/cache/RemovalCause;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->t(J)V

    .line 15
    .line 16
    .line 17
    iget v3, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    iget v4, p0, Lcom/google/common/cache/LocalCache$Segment;->i:I

    .line 22
    .line 23
    if-le v3, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->f()V

    .line 26
    .line 27
    .line 28
    iget v3, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/lit8 v5, v5, -0x1

    .line 43
    .line 44
    and-int/2addr v5, p2

    .line 45
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lcom/google/common/cache/ReferenceEntry;

    .line 50
    .line 51
    move-object v7, v6

    .line 52
    :goto_1
    if-eqz v7, :cond_6

    .line 53
    .line 54
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-ne v9, p2, :cond_5

    .line 63
    .line 64
    if-eqz v8, :cond_5

    .line 65
    .line 66
    iget-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 67
    .line 68
    iget-object v9, v9, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/base/Equivalence;

    .line 69
    .line 70
    invoke-virtual {v9, p1, v8}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_5

    .line 75
    .line 76
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->b()Lcom/google/common/cache/LocalCache$ValueReference;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eq p3, p2, :cond_2

    .line 85
    .line 86
    if-nez v4, :cond_1

    .line 87
    .line 88
    sget-object v5, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 89
    .line 90
    if-eq p2, v5, :cond_1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    const/4 p2, 0x0

    .line 94
    invoke-virtual {p0, p1, p4, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    :goto_3
    :try_start_1
    iget p2, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 105
    .line 106
    add-int/lit8 p2, p2, 0x1

    .line 107
    .line 108
    iput p2, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 109
    .line 110
    iget-object p2, p3, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 111
    .line 112
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_4

    .line 117
    .line 118
    if-nez v4, :cond_3

    .line 119
    .line 120
    sget-object v0, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 121
    .line 122
    :cond_3
    iget-object p2, p3, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 123
    .line 124
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v3, v3, -0x1

    .line 132
    .line 133
    :cond_4
    invoke-virtual {p0, v7, p4, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 134
    .line 135
    .line 136
    iput v3, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 137
    .line 138
    invoke-virtual {p0, v7}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->a()Lcom/google/common/cache/ReferenceEntry;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    iget p3, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 148
    .line 149
    add-int/lit8 p3, p3, 0x1

    .line 150
    .line 151
    iput p3, p0, Lcom/google/common/cache/LocalCache$Segment;->h:I

    .line 152
    .line 153
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 154
    .line 155
    iget-object p3, p3, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p0, p1, p2, v6}, Lcom/google/common/cache/LocalCache$EntryFactory;->d(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->v(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iput v3, p0, Lcom/google/common/cache/LocalCache$Segment;->f:I

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->e(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->u()V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    return-void
.end method

.method public final y(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2
    .line 3
    const-string v1, "CacheLoader returned null for key "

    .line 4
    .line 5
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    xor-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    const-string v3, "Recursive load of: %s"

    .line 18
    .line 19
    invoke-static {v3, p2, v2}, Lcom/google/common/base/Preconditions;->k(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->e()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$Segment;->c:Lcom/google/common/cache/LocalCache;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/Ticker;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/common/base/Ticker;->a()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->o(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b()V

    .line 40
    .line 41
    .line 42
    return-object p3

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    .line 46
    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, "."

    .line 56
    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b()V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
