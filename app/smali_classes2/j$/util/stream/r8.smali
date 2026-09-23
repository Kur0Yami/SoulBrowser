.class public final Lj$/util/stream/r8;
.super Lj$/util/stream/j5;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/g9;


# instance fields
.field public b:J

.field public c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lj$/util/stream/q8;


# direct methods
.method public constructor <init>(Lj$/util/stream/q8;Lj$/util/stream/n5;Z)V
    .locals 0

    .line 370
    iput-object p1, p0, Lj$/util/stream/r8;->e:Lj$/util/stream/q8;

    iput-boolean p3, p0, Lj$/util/stream/r8;->d:Z

    .line 371
    invoke-direct {p0, p2}, Lj$/util/stream/j5;-><init>(Lj$/util/stream/n5;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 376
    iget-boolean v0, p0, Lj$/util/stream/r8;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/r8;->e:Lj$/util/stream/q8;

    iget-object v0, v0, Lj$/util/stream/q8;->u:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lj$/util/stream/r8;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 380
    :goto_1
    iget-boolean v1, p0, Lj$/util/stream/r8;->d:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 381
    iget-wide v2, p0, Lj$/util/stream/r8;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lj$/util/stream/r8;->b:J

    :cond_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 386
    :cond_4
    :goto_2
    iget-object v0, p0, Lj$/util/stream/j5;->a:Lj$/util/stream/n5;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()J
    .locals 2

    .line 391
    iget-wide v0, p0, Lj$/util/stream/r8;->b:J

    return-wide v0
.end method
