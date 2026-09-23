.class public final Lcom/google/common/net/InternetDomainName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, ".\u3002\uff0e\uff61"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2e

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/base/Joiner;->d(C)Lcom/google/common/base/Joiner;

    .line 9
    .line 10
    .line 11
    const-string v0, "-_"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x30

    .line 18
    .line 19
    const/16 v2, 0x39

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->g(CC)Lcom/google/common/base/CharMatcher;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v2, 0x61

    .line 26
    .line 27
    const/16 v3, 0x7a

    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->g(CC)Lcom/google/common/base/CharMatcher;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/16 v3, 0x41

    .line 34
    .line 35
    const/16 v4, 0x5a

    .line 36
    .line 37
    invoke-static {v3, v4}, Lcom/google/common/base/CharMatcher;->g(CC)Lcom/google/common/base/CharMatcher;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->q(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->q(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->q(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of p1, p1, Lcom/google/common/net/InternetDomainName;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
