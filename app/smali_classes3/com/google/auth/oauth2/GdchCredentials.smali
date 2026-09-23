.class public Lcom/google/auth/oauth2/GdchCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/GdchCredentials$TransportFactoryForGdch;,
        Lcom/google/auth/oauth2/GdchCredentials$Builder;
    }
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    instance-of p1, p1, Lcom/google/auth/oauth2/GdchCredentials;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v3, v2, v0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v3, v2, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    aput-object v3, v2, v0

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    aput-object v3, v2, v0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    aput-object v3, v2, v0

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    aput-object v3, v2, v0

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    aput-object v3, v2, v0

    .line 30
    .line 31
    const/4 v0, 0x7

    .line 32
    aput-object v3, v2, v0

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    aput-object v1, v2, v0

    .line 37
    .line 38
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method public final i()Lcom/google/auth/oauth2/AccessToken;
    .locals 6

    .line 1
    const-string v0, "Audience are not configured for GDCH service account. Specify the audience by calling createWithGDCHAudience."

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->a:Ljava/net/URI;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->j:Lcom/google/api/client/util/Clock;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->g()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->c()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "system:serviceaccount:null:null"

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 40
    .line 41
    .line 42
    const-wide/16 v4, 0x3e8

    .line 43
    .line 44
    div-long/2addr v2, v4

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    int-to-long v4, v4

    .line 54
    add-long/2addr v2, v4

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 60
    .line 61
    .line 62
    throw v1
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
    const/4 v1, 0x0

    .line 6
    const-string v2, "projectId"

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "privateKeyId"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "serviceIdentityName"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "tokenServerUri"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "transportFactoryClassName"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "caCertPath"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "apiAudience"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "lifetime"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
