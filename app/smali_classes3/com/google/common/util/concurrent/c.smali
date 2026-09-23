.class public final synthetic Lcom/google/common/util/concurrent/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/AutoCloseable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->c:Ljava/lang/AutoCloseable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->c:Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture;->a:Lcom/google/common/util/concurrent/LazyLogger;

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->A(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/google/common/util/concurrent/Platform;->a(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture;->a:Lcom/google/common/util/concurrent/LazyLogger;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/LazyLogger;->a()Ljava/util/logging/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 20
    .line 21
    const-string v3, "thrown by close()"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
