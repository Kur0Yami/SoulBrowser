.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Provider;,
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Landroidx/work/WorkerFactory;

.field public final d:Landroidx/work/InputMergerFactory;

.field public final e:Landroidx/work/impl/DefaultRunnableScheduler;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    sub-int/2addr p1, v0

    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    new-instance v3, Landroidx/work/Configuration$1;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v3, v4}, Landroidx/work/Configuration$1;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/work/Configuration;->a:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sub-int/2addr p1, v0

    .line 45
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-instance v2, Landroidx/work/Configuration$1;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Landroidx/work/Configuration$1;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/work/Configuration;->b:Ljava/util/concurrent/ExecutorService;

    .line 63
    .line 64
    sget-object p1, Landroidx/work/WorkerFactory;->a:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p1, Landroidx/work/WorkerFactory$1;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/work/Configuration;->c:Landroidx/work/WorkerFactory;

    .line 72
    .line 73
    new-instance p1, Landroidx/work/InputMergerFactory$1;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/work/Configuration;->d:Landroidx/work/InputMergerFactory;

    .line 79
    .line 80
    new-instance p1, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 81
    .line 82
    invoke-direct {p1}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Landroidx/work/Configuration;->e:Landroidx/work/impl/DefaultRunnableScheduler;

    .line 86
    .line 87
    iput v1, p0, Landroidx/work/Configuration;->f:I

    .line 88
    .line 89
    const p1, 0x7fffffff

    .line 90
    .line 91
    .line 92
    iput p1, p0, Landroidx/work/Configuration;->g:I

    .line 93
    .line 94
    const/16 p1, 0x14

    .line 95
    .line 96
    iput p1, p0, Landroidx/work/Configuration;->h:I

    .line 97
    .line 98
    return-void
.end method
