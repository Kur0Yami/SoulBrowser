.class public abstract Lcom/google/auth/oauth2/ExternalAccountCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ExternalAccountCredentials$CredentialSource;,
        Lcom/google/auth/oauth2/ExternalAccountCredentials$SubjectTokenTypes;,
        Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;,
        Lcom/google/auth/oauth2/ExternalAccountCredentials$ServiceAccountImpersonationOptions;
    }
.end annotation


# instance fields
.field public final transient q:Lcom/google/auth/http/HttpTransportFactory;


# direct methods
.method public constructor <init>(Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;->f:Lcom/google/auth/http/HttpTransportFactory;

    .line 5
    .line 6
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->c:Lcom/google/auth/http/HttpTransportFactory;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/auth/http/HttpTransportFactory;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->q:Lcom/google/auth/http/HttpTransportFactory;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->a(Ljava/net/URI;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/auth/oauth2/GoogleCredentials;->k(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    return-object v0

    .line 4
    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    throw v1
.end method
