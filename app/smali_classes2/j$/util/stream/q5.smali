.class public final Lj$/util/stream/q5;
.super Lj$/util/stream/h5;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:J

.field public final synthetic d:Lj$/util/stream/r5;


# direct methods
.method public constructor <init>(Lj$/util/stream/r5;Lj$/util/stream/n5;)V
    .locals 2

    .line 294
    iput-object p1, p0, Lj$/util/stream/q5;->d:Lj$/util/stream/r5;

    invoke-direct {p0, p2}, Lj$/util/stream/h5;-><init>(Lj$/util/stream/n5;)V

    .line 295
    iget-wide v0, p1, Lj$/util/stream/r5;->t:J

    iput-wide v0, p0, Lj$/util/stream/q5;->b:J

    .line 296
    iget-wide p1, p1, Lj$/util/stream/r5;->u:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/q5;->c:J

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    .line 305
    iget-wide v0, p0, Lj$/util/stream/q5;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    .line 306
    iget-wide v0, p0, Lj$/util/stream/q5;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sub-long/2addr v0, v5

    .line 307
    iput-wide v0, p0, Lj$/util/stream/q5;->c:J

    .line 308
    iget-object v0, p0, Lj$/util/stream/h5;->a:Lj$/util/stream/n5;

    invoke-interface {v0, p1}, Lj$/util/stream/n5;->accept(I)V

    :cond_0
    return-void

    :cond_1
    sub-long/2addr v0, v5

    .line 312
    iput-wide v0, p0, Lj$/util/stream/q5;->b:J

    return-void
.end method

.method public final c(J)V
    .locals 7

    .line 300
    iget-object v0, p0, Lj$/util/stream/q5;->d:Lj$/util/stream/r5;

    iget-wide v3, v0, Lj$/util/stream/r5;->t:J

    iget-wide v5, p0, Lj$/util/stream/q5;->c:J

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lj$/util/stream/y5;->a(JJJ)J

    move-result-wide p1

    iget-object v0, p0, Lj$/util/stream/h5;->a:Lj$/util/stream/n5;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/n5;->c(J)V

    return-void
.end method

.method public final e()Z
    .locals 4

    .line 318
    iget-wide v0, p0, Lj$/util/stream/q5;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/h5;->a:Lj$/util/stream/n5;

    invoke-interface {v0}, Lj$/util/stream/n5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
