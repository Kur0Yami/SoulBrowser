.class public final Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field public final a:Lcom/google/common/cache/LongAddable;

.field public final b:Lcom/google/common/cache/LongAddable;

.field public final c:Lcom/google/common/cache/LongAddable;

.field public final d:Lcom/google/common/cache/LongAddable;

.field public final e:Lcom/google/common/cache/LongAddable;

.field public final f:Lcom/google/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/LongAddable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->a:Lcom/google/common/cache/LongAddable;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/LongAddable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->b:Lcom/google/common/cache/LongAddable;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/LongAddable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->c:Lcom/google/common/cache/LongAddable;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/LongAddable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->d:Lcom/google/common/cache/LongAddable;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/LongAddable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lcom/google/common/cache/LongAddable;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/LongAddable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->f:Lcom/google/common/cache/LongAddable;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->f:Lcom/google/common/cache/LongAddable;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->b:Lcom/google/common/cache/LongAddable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    int-to-long v1, v1

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->d:Lcom/google/common/cache/LongAddable;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lcom/google/common/cache/LongAddable;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->c:Lcom/google/common/cache/LongAddable;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lcom/google/common/cache/LongAddable;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->a:Lcom/google/common/cache/LongAddable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    int-to-long v1, v1

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
