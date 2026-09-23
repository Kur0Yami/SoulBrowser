.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/common/cache/CacheStats;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v0, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    aput-object v0, v1, v2

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    aput-object v0, v1, v2

    .line 27
    .line 28
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->b(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "hitCount"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "missCount"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "loadSuccessCount"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "loadExceptionCount"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "totalLoadTime"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "evictionCount"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
