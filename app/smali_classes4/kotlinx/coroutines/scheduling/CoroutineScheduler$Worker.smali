.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001R*\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0008\u0010\u0012\u001a\u00020\u00118\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "Ljava/lang/Thread;",
        "",
        "index",
        "indexInArray",
        "I",
        "b",
        "()I",
        "f",
        "(I)V",
        "",
        "nextParkedWorker",
        "Ljava/lang/Object;",
        "c",
        "()Ljava/lang/Object;",
        "g",
        "(Ljava/lang/Object;)V",
        "Lkotlinx/atomicfu/AtomicInt;",
        "workerCtl",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1042:1\n294#2,2:1043\n282#2:1045\n296#2,4:1046\n301#2:1050\n291#2,2:1051\n291#2,2:1055\n277#2:1062\n286#2:1063\n280#2:1064\n277#2:1065\n1#3:1053\n86#4:1054\n24#5,4:1057\n16#6:1061\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n673#1:1043,2\n673#1:1045\n673#1:1046,4\n688#1:1050\n762#1:1051,2\n816#1:1055,2\n864#1:1062\n890#1:1063\n890#1:1064\n972#1:1065\n799#1:1054\n860#1:1057,4\n860#1:1061\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final c:Lkotlinx/coroutines/scheduling/WorkQueue;

.field public final f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public h:J

.field public i:J

.field private volatile indexInArray:I

.field public j:I

.field public k:Z

.field public final synthetic l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private volatile nextParkedWorker:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile synthetic workerCtl$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const-string v1, "workerCtl$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    .line 9
    .line 10
    const-class p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 20
    .line 21
    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 25
    .line 26
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 34
    .line 35
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 36
    .line 37
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 38
    .line 39
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    .line 5
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x1

    .line 9
    iget-object v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    const-wide v1, 0x7ffffc0000000000L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v1, v4

    .line 27
    const/16 v6, 0x2a

    .line 28
    .line 29
    shr-long/2addr v1, v6

    .line 30
    long-to-int v1, v1

    .line 31
    if-nez v1, :cond_b

    .line 32
    .line 33
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/Task;->f:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 48
    .line 49
    invoke-interface {v1}, Lkotlinx/coroutines/scheduling/TaskContext;->m()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v1, v9, :cond_5

    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1, v10, v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    move-object v8, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eq v1, v0, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 71
    .line 72
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    :cond_6
    if-eq p1, v0, :cond_8

    .line 83
    .line 84
    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 85
    .line 86
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 94
    .line 95
    invoke-virtual {v10, v0, v9}, Lkotlinx/coroutines/scheduling/WorkQueue;->c(IZ)Lkotlinx/coroutines/scheduling/Task;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    move-object v8, v1

    .line 102
    :cond_8
    :goto_2
    if-nez v8, :cond_a

    .line 103
    .line 104
    iget-object p1, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 105
    .line 106
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 111
    .line 112
    if-nez p1, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i(I)Lkotlinx/coroutines/scheduling/Task;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :cond_9
    return-object p1

    .line 119
    :cond_a
    return-object v8

    .line 120
    :cond_b
    const-wide v1, 0x40000000000L

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    sub-long v6, v4, v1

    .line 126
    .line 127
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 128
    .line 129
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 136
    .line 137
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 138
    .line 139
    :goto_3
    if-eqz p1, :cond_10

    .line 140
    .line 141
    iget p1, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:I

    .line 142
    .line 143
    mul-int/lit8 p1, p1, 0x2

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d(I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_c

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_c
    const/4 v9, 0x0

    .line 153
    :goto_4
    if-eqz v9, :cond_d

    .line 154
    .line 155
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Lkotlinx/coroutines/scheduling/Task;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_d

    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 166
    .line 167
    invoke-virtual {p1, v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 172
    .line 173
    if-nez p1, :cond_e

    .line 174
    .line 175
    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    :cond_e
    if-eqz p1, :cond_f

    .line 180
    .line 181
    return-object p1

    .line 182
    :cond_f
    if-nez v9, :cond_11

    .line 183
    .line 184
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Lkotlinx/coroutines/scheduling/Task;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_11

    .line 189
    .line 190
    return-object p1

    .line 191
    :cond_10
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Lkotlinx/coroutines/scheduling/Task;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_11

    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_11
    const/4 p1, 0x3

    .line 199
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i(I)Lkotlinx/coroutines/scheduling/Task;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    .line 13
    .line 14
    add-int/lit8 v1, p1, -0x1

    .line 15
    .line 16
    and-int v2, v1, p1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    and-int p1, v0, v1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    const v1, 0x7fffffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    rem-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final e()Lkotlinx/coroutines/scheduling/Task;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 22
    .line 23
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 48
    .line 49
    return-object v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    .line 8
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-worker-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string v1, "TERMINATED"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 38
    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 13
    .line 14
    const-wide v3, 0x40000000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 20
    .line 21
    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 27
    .line 28
    :cond_2
    return v1
.end method

.method public final i(I)Lkotlinx/coroutines/scheduling/Task;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-wide/32 v6, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long/2addr v4, v6

    .line 17
    long-to-int v2, v4

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x2

    .line 20
    if-ge v2, v5, :cond_0

    .line 21
    .line 22
    return-object v4

    .line 23
    :cond_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v10, 0x0

    .line 28
    const-wide v11, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :goto_0
    if-ge v10, v2, :cond_11

    .line 34
    .line 35
    const/4 v15, 0x1

    .line 36
    add-int/2addr v6, v15

    .line 37
    if-le v6, v2, :cond_1

    .line 38
    .line 39
    move v6, v15

    .line 40
    :cond_1
    iget-object v5, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 47
    .line 48
    if-eqz v5, :cond_f

    .line 49
    .line 50
    if-eq v5, v0, :cond_f

    .line 51
    .line 52
    iget-object v5, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 53
    .line 54
    const/4 v7, 0x3

    .line 55
    if-ne v1, v7, :cond_2

    .line 56
    .line 57
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-wide v16, 0x7fffffffffffffffL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide/16 v18, 0x0

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v7, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const-wide v16, 0x7fffffffffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    sget-object v8, Lkotlinx/coroutines/scheduling/WorkQueue;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 84
    .line 85
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-ne v1, v15, :cond_3

    .line 90
    .line 91
    move v9, v15

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v9, 0x0

    .line 94
    :goto_1
    if-eq v7, v8, :cond_5

    .line 95
    .line 96
    const-wide/16 v18, 0x0

    .line 97
    .line 98
    if-eqz v9, :cond_4

    .line 99
    .line 100
    sget-object v13, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 101
    .line 102
    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-nez v13, :cond_4

    .line 107
    .line 108
    :goto_2
    move-object v7, v4

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    add-int/lit8 v13, v7, 0x1

    .line 111
    .line 112
    invoke-virtual {v5, v7, v9}, Lkotlinx/coroutines/scheduling/WorkQueue;->c(IZ)Lkotlinx/coroutines/scheduling/Task;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-nez v7, :cond_6

    .line 117
    .line 118
    move v7, v13

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    const-wide/16 v18, 0x0

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    :goto_3
    iget-object v13, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 124
    .line 125
    if-eqz v7, :cond_7

    .line 126
    .line 127
    iput-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v5, v4

    .line 130
    const-wide/16 v7, -0x1

    .line 131
    .line 132
    const-wide/16 v20, -0x1

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_7
    :goto_4
    sget-object v7, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 136
    .line 137
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    check-cast v14, Lkotlinx/coroutines/scheduling/Task;

    .line 142
    .line 143
    if-nez v14, :cond_8

    .line 144
    .line 145
    const-wide/16 v20, -0x1

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    const-wide/16 v20, -0x1

    .line 149
    .line 150
    iget-object v8, v14, Lkotlinx/coroutines/scheduling/Task;->f:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 151
    .line 152
    invoke-interface {v8}, Lkotlinx/coroutines/scheduling/TaskContext;->m()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-ne v8, v15, :cond_9

    .line 157
    .line 158
    move v8, v15

    .line 159
    goto :goto_5

    .line 160
    :cond_9
    const/4 v8, 0x2

    .line 161
    :goto_5
    and-int/2addr v8, v1

    .line 162
    if-nez v8, :cond_a

    .line 163
    .line 164
    :goto_6
    const-wide/16 v7, -0x2

    .line 165
    .line 166
    move-object v5, v4

    .line 167
    goto :goto_7

    .line 168
    :cond_a
    sget-object v8, Lkotlinx/coroutines/scheduling/TasksKt;->f:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v8

    .line 177
    move-object/from16 v23, v5

    .line 178
    .line 179
    iget-wide v4, v14, Lkotlinx/coroutines/scheduling/Task;->c:J

    .line 180
    .line 181
    sub-long/2addr v8, v4

    .line 182
    sget-wide v4, Lkotlinx/coroutines/scheduling/TasksKt;->b:J

    .line 183
    .line 184
    cmp-long v24, v8, v4

    .line 185
    .line 186
    if-gez v24, :cond_b

    .line 187
    .line 188
    sub-long/2addr v4, v8

    .line 189
    move-wide v7, v4

    .line 190
    const/4 v5, 0x0

    .line 191
    goto :goto_7

    .line 192
    :cond_b
    move-object/from16 v4, v23

    .line 193
    .line 194
    :cond_c
    const/4 v5, 0x0

    .line 195
    invoke-virtual {v7, v4, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_e

    .line 200
    .line 201
    iput-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 202
    .line 203
    move-wide/from16 v7, v20

    .line 204
    .line 205
    :goto_7
    cmp-long v4, v7, v20

    .line 206
    .line 207
    if-nez v4, :cond_d

    .line 208
    .line 209
    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 212
    .line 213
    iput-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 214
    .line 215
    return-object v1

    .line 216
    :cond_d
    cmp-long v4, v7, v18

    .line 217
    .line 218
    if-lez v4, :cond_10

    .line 219
    .line 220
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 221
    .line 222
    .line 223
    move-result-wide v11

    .line 224
    goto :goto_8

    .line 225
    :cond_e
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    if-eq v5, v14, :cond_c

    .line 230
    .line 231
    move-object v5, v4

    .line 232
    const/4 v4, 0x0

    .line 233
    goto :goto_4

    .line 234
    :cond_f
    const-wide v16, 0x7fffffffffffffffL

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :cond_10
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 240
    .line 241
    const/4 v4, 0x0

    .line 242
    const/4 v5, 0x2

    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_11
    const-wide v16, 0x7fffffffffffffffL

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    const-wide/16 v18, 0x0

    .line 251
    .line 252
    cmp-long v1, v11, v16

    .line 253
    .line 254
    if-eqz v1, :cond_12

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_12
    move-wide/from16 v11, v18

    .line 258
    .line 259
    :goto_9
    iput-wide v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    .line 260
    .line 261
    const/16 v22, 0x0

    .line 262
    .line 263
    return-object v22
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_0
    move v0, v2

    .line 5
    :cond_1
    :goto_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    .line 7
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 18
    .line 19
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->i:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 20
    .line 21
    if-eq v3, v4, :cond_18

    .line 22
    .line 23
    iget-boolean v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:Z

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-wide/32 v5, -0x200000

    .line 30
    .line 31
    .line 32
    const-wide/16 v7, 0x0

    .line 33
    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    .line 37
    .line 38
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 39
    .line 40
    iget-object v0, v3, Lkotlinx/coroutines/scheduling/Task;->f:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 41
    .line 42
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->m()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:J

    .line 47
    .line 48
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 49
    .line 50
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 51
    .line 52
    if-ne v0, v7, :cond_3

    .line 53
    .line 54
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 55
    .line 56
    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 57
    .line 58
    :cond_3
    if-nez v10, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    invoke-virtual {v9, v7, v8}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f(J)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i()Z

    .line 90
    .line 91
    .line 92
    :cond_7
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-interface {v7, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_3
    if-nez v10, :cond_8

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 112
    .line 113
    invoke-virtual {v0, v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 114
    .line 115
    .line 116
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 117
    .line 118
    if-eq v0, v4, :cond_0

    .line 119
    .line 120
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 121
    .line 122
    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_9
    iput-boolean v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:Z

    .line 126
    .line 127
    iget-wide v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    .line 128
    .line 129
    cmp-long v3, v3, v7

    .line 130
    .line 131
    const/4 v4, 0x1

    .line 132
    if-eqz v3, :cond_b

    .line 133
    .line 134
    if-nez v0, :cond_a

    .line 135
    .line 136
    move v0, v4

    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_a
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 142
    .line 143
    .line 144
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 145
    .line 146
    .line 147
    iget-wide v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    .line 148
    .line 149
    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 150
    .line 151
    .line 152
    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_b
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 157
    .line 158
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 159
    .line 160
    if-eq v3, v9, :cond_15

    .line 161
    .line 162
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 163
    .line 164
    const/4 v5, -0x1

    .line 165
    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    :cond_c
    :goto_4
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 169
    .line 170
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 171
    .line 172
    if-eq v3, v6, :cond_1

    .line 173
    .line 174
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 175
    .line 176
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-ne v6, v5, :cond_1

    .line 181
    .line 182
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 183
    .line 184
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 185
    .line 186
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_d

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_d
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 195
    .line 196
    sget-object v12, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->i:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 197
    .line 198
    if-ne v6, v12, :cond_e

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_e
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 203
    .line 204
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 205
    .line 206
    .line 207
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 208
    .line 209
    .line 210
    iget-wide v13, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:J

    .line 211
    .line 212
    cmp-long v6, v13, v7

    .line 213
    .line 214
    if-nez v6, :cond_f

    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 217
    .line 218
    .line 219
    move-result-wide v13

    .line 220
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 221
    .line 222
    const-wide/32 v15, 0x1fffff

    .line 223
    .line 224
    .line 225
    iget-wide v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:J

    .line 226
    .line 227
    add-long/2addr v13, v10

    .line 228
    iput-wide v13, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:J

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_f
    const-wide/32 v15, 0x1fffff

    .line 232
    .line 233
    .line 234
    :goto_5
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 235
    .line 236
    iget-wide v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:J

    .line 237
    .line 238
    invoke-static {v10, v11}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 242
    .line 243
    .line 244
    move-result-wide v10

    .line 245
    iget-wide v13, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:J

    .line 246
    .line 247
    sub-long/2addr v10, v13

    .line 248
    cmp-long v6, v10, v7

    .line 249
    .line 250
    if-ltz v6, :cond_c

    .line 251
    .line 252
    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:J

    .line 253
    .line 254
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 255
    .line 256
    iget-object v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 257
    .line 258
    monitor-enter v10

    .line 259
    :try_start_1
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 260
    .line 261
    .line 262
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-eqz v9, :cond_10

    .line 264
    .line 265
    move v9, v4

    .line 266
    goto :goto_6

    .line 267
    :cond_10
    move v9, v2

    .line 268
    :goto_6
    if-eqz v9, :cond_11

    .line 269
    .line 270
    monitor-exit v10

    .line 271
    goto :goto_4

    .line 272
    :cond_11
    :try_start_2
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 273
    .line 274
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 275
    .line 276
    .line 277
    move-result-wide v13

    .line 278
    and-long/2addr v13, v15

    .line 279
    long-to-int v11, v13

    .line 280
    iget v13, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    .line 282
    if-gt v11, v13, :cond_12

    .line 283
    .line 284
    monitor-exit v10

    .line 285
    goto :goto_4

    .line 286
    :cond_12
    :try_start_3
    invoke-virtual {v3, v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 287
    .line 288
    .line 289
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    if-nez v3, :cond_13

    .line 291
    .line 292
    monitor-exit v10

    .line 293
    goto :goto_4

    .line 294
    :cond_13
    :try_start_4
    iget v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v1, v3, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 303
    .line 304
    .line 305
    move-result-wide v13

    .line 306
    and-long/2addr v13, v15

    .line 307
    long-to-int v9, v13

    .line 308
    if-eq v9, v3, :cond_14

    .line 309
    .line 310
    iget-object v11, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 311
    .line 312
    invoke-virtual {v11, v9}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    check-cast v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 320
    .line 321
    iget-object v13, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 322
    .line 323
    invoke-virtual {v13, v3, v11}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v11, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v11, v9, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :catchall_1
    move-exception v0

    .line 334
    goto :goto_8

    .line 335
    :cond_14
    :goto_7
    iget-object v3, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 336
    .line 337
    const/4 v6, 0x0

    .line 338
    invoke-virtual {v3, v9, v6}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 339
    .line 340
    .line 341
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 342
    .line 343
    monitor-exit v10

    .line 344
    iput-object v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :goto_8
    monitor-exit v10

    .line 349
    throw v0

    .line 350
    :cond_15
    const-wide/32 v15, 0x1fffff

    .line 351
    .line 352
    .line 353
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 354
    .line 355
    iget-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 356
    .line 357
    if-eq v4, v9, :cond_16

    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :cond_16
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 362
    .line 363
    :goto_9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v19

    .line 367
    and-long v7, v19, v15

    .line 368
    .line 369
    long-to-int v7, v7

    .line 370
    const-wide/32 v8, 0x200000

    .line 371
    .line 372
    .line 373
    add-long v8, v19, v8

    .line 374
    .line 375
    and-long/2addr v8, v5

    .line 376
    iget v10, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 377
    .line 378
    iget-object v11, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 379
    .line 380
    invoke-virtual {v11, v7}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    iput-object v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 385
    .line 386
    sget-object v17, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 387
    .line 388
    int-to-long v10, v10

    .line 389
    or-long v21, v8, v10

    .line 390
    .line 391
    move-object/from16 v18, v3

    .line 392
    .line 393
    invoke-virtual/range {v17 .. v22}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-eqz v3, :cond_17

    .line 398
    .line 399
    goto/16 :goto_1

    .line 400
    .line 401
    :cond_17
    move-object/from16 v3, v18

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_18
    :goto_a
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->i:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 405
    .line 406
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 407
    .line 408
    .line 409
    return-void
.end method
