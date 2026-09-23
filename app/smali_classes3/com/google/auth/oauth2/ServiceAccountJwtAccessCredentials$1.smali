.class Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$1;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Lcom/google/auth/oauth2/JwtClaims;",
        "Lcom/google/auth/oauth2/JwtCredentials;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/auth/oauth2/JwtClaims;

    .line 2
    .line 3
    sget p1, Lcom/google/auth/oauth2/JwtCredentials;->m:I

    .line 4
    .line 5
    sget-object p1, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    .line 6
    .line 7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->c:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method
