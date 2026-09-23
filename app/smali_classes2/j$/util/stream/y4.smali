.class public final Lj$/util/stream/y4;
.super Lj$/util/stream/j5;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Lj$/util/l0;

.field public final synthetic d:Lj$/util/stream/c1;


# direct methods
.method public constructor <init>(Lj$/util/stream/c1;Lj$/util/stream/n5;)V
    .locals 1

    .line 394
    iput-object p1, p0, Lj$/util/stream/y4;->d:Lj$/util/stream/c1;

    invoke-direct {p0, p2}, Lj$/util/stream/j5;-><init>(Lj$/util/stream/n5;)V

    .line 399
    iget-object p1, p0, Lj$/util/stream/j5;->a:Lj$/util/stream/n5;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/l0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lj$/util/l0;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/y4;->c:Lj$/util/l0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 408
    iget-object v0, p0, Lj$/util/stream/y4;->d:Lj$/util/stream/c1;

    iget-object v0, v0, Lj$/util/stream/c1;->u:Ljava/lang/Object;

    check-cast v0, Lj$/util/p;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/LongStream;

    if-eqz p1, :cond_2

    .line 410
    :try_start_0
    iget-boolean v0, p0, Lj$/util/stream/y4;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lj$/util/stream/y4;->c:Lj$/util/l0;

    if-nez v0, :cond_0

    .line 411
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 414
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    .line 415
    :cond_1
    iget-object v2, p0, Lj$/util/stream/j5;->a:Lj$/util/stream/n5;

    invoke-interface {v2}, Lj$/util/stream/n5;->e()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    .line 408
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 418
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :cond_3
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 403
    iget-object p1, p0, Lj$/util/stream/j5;->a:Lj$/util/stream/n5;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/n5;->c(J)V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lj$/util/stream/y4;->b:Z

    .line 424
    iget-object v0, p0, Lj$/util/stream/j5;->a:Lj$/util/stream/n5;

    invoke-interface {v0}, Lj$/util/stream/n5;->e()Z

    move-result v0

    return v0
.end method
