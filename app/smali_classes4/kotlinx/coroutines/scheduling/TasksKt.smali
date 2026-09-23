.class public final Lkotlinx/coroutines/scheduling/TasksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static final f:Lkotlinx/coroutines/scheduling/NanoTimeSource;

.field public static final g:Lkotlinx/coroutines/scheduling/TaskContext;

.field public static final h:Lkotlinx/coroutines/scheduling/TaskContext;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/internal/SystemPropsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "DefaultDispatcher"

    .line 10
    .line 11
    :cond_0
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v3, 0x1

    .line 14
    .line 15
    const-wide v5, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide/32 v1, 0x186a0

    .line 21
    .line 22
    .line 23
    const-string v7, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 24
    .line 25
    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->b(JJJLjava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->b:J

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->a()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->d(IILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->c:I

    .line 49
    .line 50
    const v0, 0x1ffffe

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    const-string v2, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->d(IILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->d:I

    .line 61
    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    const-wide/16 v1, 0x3c

    .line 65
    .line 66
    const-string v7, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 67
    .line 68
    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->b(JJJLjava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->e:J

    .line 77
    .line 78
    sget-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->a:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 79
    .line 80
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->f:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 81
    .line 82
    new-instance v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/TaskContextImpl;-><init>(I)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 89
    .line 90
    new-instance v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/TaskContextImpl;-><init>(I)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->h:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 97
    .line 98
    return-void
.end method
