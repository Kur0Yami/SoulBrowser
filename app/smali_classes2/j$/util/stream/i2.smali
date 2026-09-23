.class public Lj$/util/stream/i2;
.super Lj$/util/stream/d;
.source "SourceFile"


# instance fields
.field public final h:Lj$/util/stream/v3;

.field public final i:Ljava/util/function/LongFunction;

.field public final j:Ljava/util/function/BinaryOperator;


# direct methods
.method public constructor <init>(Lj$/util/stream/i2;Lj$/util/Spliterator;)V
    .locals 0

    .line 2176
    invoke-direct {p0, p1, p2}, Lj$/util/stream/d;-><init>(Lj$/util/stream/d;Lj$/util/Spliterator;)V

    .line 2177
    iget-object p2, p1, Lj$/util/stream/i2;->h:Lj$/util/stream/v3;

    iput-object p2, p0, Lj$/util/stream/i2;->h:Lj$/util/stream/v3;

    .line 2178
    iget-object p2, p1, Lj$/util/stream/i2;->i:Ljava/util/function/LongFunction;

    iput-object p2, p0, Lj$/util/stream/i2;->i:Ljava/util/function/LongFunction;

    .line 2179
    iget-object p1, p1, Lj$/util/stream/i2;->j:Ljava/util/function/BinaryOperator;

    iput-object p1, p0, Lj$/util/stream/i2;->j:Ljava/util/function/BinaryOperator;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V
    .locals 0

    .line 2168
    invoke-direct {p0, p1, p2}, Lj$/util/stream/d;-><init>(Lj$/util/stream/v3;Lj$/util/Spliterator;)V

    .line 2169
    iput-object p1, p0, Lj$/util/stream/i2;->h:Lj$/util/stream/v3;

    .line 2170
    iput-object p3, p0, Lj$/util/stream/i2;->i:Ljava/util/function/LongFunction;

    .line 2171
    iput-object p4, p0, Lj$/util/stream/i2;->j:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2157
    invoke-virtual {p0}, Lj$/util/stream/i2;->f()Lj$/util/stream/c2;

    move-result-object v0

    return-object v0
.end method

.method public c(Lj$/util/Spliterator;)Lj$/util/stream/d;
    .locals 1

    .line 2184
    new-instance v0, Lj$/util/stream/i2;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/i2;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final f()Lj$/util/stream/c2;
    .locals 3

    .line 2190
    iget-object v0, p0, Lj$/util/stream/i2;->i:Ljava/util/function/LongFunction;

    iget-object v1, p0, Lj$/util/stream/i2;->h:Lj$/util/stream/v3;

    iget-object v2, p0, Lj$/util/stream/d;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2}, Lj$/util/stream/v3;->h0(Lj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/u1;

    .line 2191
    iget-object v1, p0, Lj$/util/stream/i2;->h:Lj$/util/stream/v3;

    iget-object v2, p0, Lj$/util/stream/d;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/v3;->v0(Lj$/util/Spliterator;Lj$/util/stream/n5;)Lj$/util/stream/n5;

    invoke-interface {v0}, Lj$/util/stream/u1;->build()Lj$/util/stream/c2;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lj$/util/stream/d;->d:Lj$/util/stream/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2197
    :cond_0
    iget-object v1, p0, Lj$/util/stream/i2;->j:Ljava/util/function/BinaryOperator;

    check-cast v0, Lj$/util/stream/i2;

    .line 245
    iget-object v0, v0, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 2197
    check-cast v0, Lj$/util/stream/c2;

    iget-object v2, p0, Lj$/util/stream/d;->e:Lj$/util/stream/d;

    check-cast v2, Lj$/util/stream/i2;

    .line 245
    iget-object v2, v2, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 2197
    check-cast v2, Lj$/util/stream/c2;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/c2;

    .line 255
    iput-object v0, p0, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 2198
    :goto_0
    invoke-super {p0, p1}, Lj$/util/stream/d;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
