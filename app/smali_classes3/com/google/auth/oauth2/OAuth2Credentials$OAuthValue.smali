.class Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAuthValue"
.end annotation


# instance fields
.field public final c:Lcom/google/auth/oauth2/AccessToken;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/auth/oauth2/AccessToken;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->f:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->a()Lcom/google/common/collect/ImmutableMap$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Bearer "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/auth/oauth2/AccessToken;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "Authorization"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->a()Lcom/google/common/collect/ImmutableMap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;-><init>(Lcom/google/auth/oauth2/AccessToken;Lcom/google/common/collect/ImmutableMap;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->f:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->f:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->f:Ljava/util/Map;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method
