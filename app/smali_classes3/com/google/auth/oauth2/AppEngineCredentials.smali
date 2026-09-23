.class Lcom/google/auth/oauth2/AppEngineCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/ServiceAccountSigner;


# instance fields
.field public final q:Lcom/google/common/collect/ImmutableCollection;

.field public final r:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/auth/oauth2/AppEngineCredentials;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/google/auth/oauth2/GoogleCredentials$Builder;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/google/auth/oauth2/GoogleCredentials$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->w()Lcom/google/common/collect/ImmutableSet;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 30
    .line 31
    :goto_1
    iget-object p1, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->r:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/AppEngineCredentials;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/AppEngineCredentials;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->r:Z

    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/google/auth/oauth2/AppEngineCredentials;->r:Z

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->r:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 12
    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public final i()Lcom/google/auth/oauth2/AccessToken;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/io/IOException;

    .line 9
    .line 10
    const-string v2, "Could not get the access token."

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    const-string v1, "AppEngineCredentials requires createScoped call before use."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/AppEngineCredentials;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/google/auth/oauth2/AppEngineCredentials;-><init>(Ljava/util/Collection;Lcom/google/auth/oauth2/AppEngineCredentials;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->b(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "scopes"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->q:Lcom/google/common/collect/ImmutableCollection;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "scopesRequired"

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/google/auth/oauth2/AppEngineCredentials;->r:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->d(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
