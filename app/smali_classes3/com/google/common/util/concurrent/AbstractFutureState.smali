.class abstract Lcom/google/common/util/concurrent/AbstractFutureState;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/Object;

.field public static final i:Lcom/google/common/util/concurrent/LazyLogger;

.field public static final j:Z

.field public static final k:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;


# instance fields
.field public volatile c:Ljava/lang/Object;

.field public volatile f:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

.field public volatile g:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->h:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/common/util/concurrent/LazyLogger;

    .line 9
    .line 10
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/LazyLogger;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->i:Lcom/google/common/util/concurrent/LazyLogger;

    .line 16
    .line 17
    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    .line 18
    .line 19
    const-string v1, "false"

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    sput-boolean v0, Lcom/google/common/util/concurrent/AbstractFutureState;->j:Z

    .line 32
    .line 33
    const-string v0, "java.runtime.name"

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v2, "Android"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    :goto_1
    move-object v2, v1

    .line 59
    goto :goto_6

    .line 60
    :catch_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception v0

    .line 73
    goto :goto_3

    .line 74
    :catch_3
    move-exception v0

    .line 75
    :goto_3
    :try_start_3
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 78
    .line 79
    .line 80
    goto :goto_5

    .line 81
    :catch_4
    move-exception v1

    .line 82
    goto :goto_4

    .line 83
    :catch_5
    move-exception v1

    .line 84
    :goto_4
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    :goto_5
    move-object v6, v2

    .line 90
    move-object v2, v0

    .line 91
    move-object v0, v6

    .line 92
    :goto_6
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->k:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->i:Lcom/google/common/util/concurrent/LazyLogger;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/LazyLogger;->a()Ljava/util/logging/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 103
    .line 104
    const-string v5, "UnsafeAtomicHelper is broken!"

    .line 105
    .line 106
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/LazyLogger;->a()Ljava/util/logging/Logger;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v2, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 114
    .line 115
    invoke-virtual {v0, v4, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->a:Ljava/lang/Thread;

    .line 3
    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->g:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 5
    .line 6
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->c:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_1
    if-eqz p1, :cond_4

    .line 13
    .line 14
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->b:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->a:Ljava/lang/Thread;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->b:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 25
    .line 26
    iget-object p1, v1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->a:Ljava/lang/Thread;

    .line 27
    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFutureState;->k:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    .line 32
    .line 33
    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->c(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_2
    move-object p1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    :goto_3
    return-void
.end method
