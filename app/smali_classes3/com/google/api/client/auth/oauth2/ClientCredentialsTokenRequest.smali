.class public Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
.super Lcom/google/api/client/auth/oauth2/TokenRequest;
.source "SourceFile"


# virtual methods
.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object p1
.end method

.method public final setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final setResponseClass(Ljava/lang/Class;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 0

    .line 1
    const-class p1, Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->responseClass:Ljava/lang/Class;

    .line 4
    .line 5
    return-object p0
.end method

.method public final setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
