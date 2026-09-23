.class public abstract Lj$/util/stream/u3;
.super Ljava/util/concurrent/CountedCompleter;
.source "SourceFile"


# instance fields
.field public final a:Lj$/util/stream/c2;

.field public final b:I


# direct methods
.method public constructor <init>(Lj$/util/stream/c2;)V
    .locals 0

    .line 2039
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 2040
    iput-object p1, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    const/4 p1, 0x0

    .line 2041
    iput p1, p0, Lj$/util/stream/u3;->b:I

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/u3;Lj$/util/stream/c2;I)V
    .locals 0

    .line 2045
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 2046
    iput-object p2, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    .line 2047
    iput p3, p0, Lj$/util/stream/u3;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(II)Lj$/util/stream/u3;
.end method

.method public final compute()V
    .locals 8

    move-object v0, p0

    .line 2058
    :goto_0
    iget-object v1, v0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    invoke-interface {v1}, Lj$/util/stream/c2;->o()I

    move-result v1

    if-nez v1, :cond_0

    .line 2059
    invoke-virtual {v0}, Lj$/util/stream/u3;->a()V

    .line 2060
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void

    .line 2064
    :cond_0
    iget-object v1, v0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    invoke-interface {v1}, Lj$/util/stream/c2;->o()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2068
    :goto_1
    iget-object v3, v0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    invoke-interface {v3}, Lj$/util/stream/c2;->o()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 2069
    iget v3, v0, Lj$/util/stream/u3;->b:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lj$/util/stream/u3;->b(II)Lj$/util/stream/u3;

    move-result-object v3

    int-to-long v4, v2

    .line 2070
    iget-object v2, v3, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    invoke-interface {v2}, Lj$/util/stream/c2;->count()J

    move-result-wide v6

    add-long/2addr v6, v4

    long-to-int v2, v6

    .line 2071
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->fork()Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2073
    :cond_1
    iget v3, v0, Lj$/util/stream/u3;->b:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lj$/util/stream/u3;->b(II)Lj$/util/stream/u3;

    move-result-object v0

    goto :goto_0
.end method
