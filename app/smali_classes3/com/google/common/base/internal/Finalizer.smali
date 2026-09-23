.class public Lcom/google/common/base/internal/Finalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Ljava/lang/Thread;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/base/internal/Finalizer;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lcom/google/common/base/internal/Finalizer;->c:Ljava/util/logging/Logger;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x5

    .line 17
    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v3, Ljava/lang/ThreadGroup;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v3, v2, v4

    .line 23
    .line 24
    const-class v3, Ljava/lang/Runnable;

    .line 25
    .line 26
    aput-object v3, v2, v1

    .line 27
    .line 28
    const-class v3, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    aput-object v3, v2, v4

    .line 32
    .line 33
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    aput-object v3, v2, v4

    .line 37
    .line 38
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    aput-object v3, v2, v4

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-nez v2, :cond_0

    .line 50
    .line 51
    :try_start_1
    const-string v2, "inheritableThreadLocals"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    sget-object v0, Lcom/google/common/base/internal/Finalizer;->c:Ljava/util/logging/Logger;

    .line 62
    .line 63
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 64
    .line 65
    const-string v2, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
