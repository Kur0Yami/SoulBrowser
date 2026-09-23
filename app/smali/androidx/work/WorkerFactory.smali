.class public abstract Landroidx/work/WorkerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerFactory"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/WorkerFactory;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/work/ListenableWorker;
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 8

    .line 1
    sget-object v0, Landroidx/work/WorkerFactory;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/WorkerFactory;->a()Landroidx/work/ListenableWorker;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-class v5, Landroidx/work/ListenableWorker;

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v4

    .line 23
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "Invalid class: "

    .line 28
    .line 29
    invoke-static {v6, p2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-array v7, v3, [Ljava/lang/Throwable;

    .line 34
    .line 35
    aput-object v4, v7, v2

    .line 36
    .line 37
    invoke-virtual {v5, v0, v6, v7}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-eqz v4, :cond_0

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    :try_start_1
    new-array v6, v5, [Ljava/lang/Class;

    .line 45
    .line 46
    const-class v7, Landroid/content/Context;

    .line 47
    .line 48
    aput-object v7, v6, v2

    .line 49
    .line 50
    const-class v7, Landroidx/work/WorkerParameters;

    .line 51
    .line 52
    aput-object v7, v6, v3

    .line 53
    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    new-array v5, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p1, v5, v2

    .line 61
    .line 62
    aput-object p3, v5, v3

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroidx/work/ListenableWorker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    move-object v1, p1

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const-string v4, "Could not instantiate "

    .line 78
    .line 79
    invoke-static {v4, p2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 84
    .line 85
    aput-object p1, v3, v2

    .line 86
    .line 87
    invoke-virtual {p3, v0, v4, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->isUsed()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string p3, ") returned an instance of a ListenableWorker ("

    .line 108
    .line 109
    const-string v0, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker."

    .line 110
    .line 111
    const-string v1, "WorkerFactory ("

    .line 112
    .line 113
    invoke-static {v1, p1, p3, p2, v0}, Landroid/support/v4/media/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2

    .line 123
    :cond_2
    :goto_2
    return-object v1
.end method
