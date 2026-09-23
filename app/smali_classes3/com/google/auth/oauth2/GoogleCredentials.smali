.class public Lcom/google/auth/oauth2/GoogleCredentials;
.super Lcom/google/auth/oauth2/OAuth2Credentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/QuotaProjectIdProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/GoogleCredentials$Builder;,
        Lcom/google/auth/oauth2/GoogleCredentials$GoogleCredentialsInfo;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/DefaultCredentialsProvider;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->b:Lj$/time/Duration;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->c:Lj$/time/Duration;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;Lj$/time/Duration;Lj$/time/Duration;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/auth/oauth2/GoogleCredentials$Builder;->d:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    const-string p1, "googleapis.com"

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 37
    .line 38
    return-void
.end method

.method public static k(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public final e()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->m:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/GoogleCredentials;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/GoogleCredentials;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-boolean p1, p1, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object v3, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v3, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0

    .line 1
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->b(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper;->d:Z

    .line 7
    .line 8
    const-string v1, "quotaProjectId"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "universeDomain"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "isExplicitUniverseDomain"

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->d(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/GoogleCredentials;->n()Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
