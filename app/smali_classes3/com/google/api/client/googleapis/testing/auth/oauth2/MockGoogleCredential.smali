.class public Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;
.super Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$MockClientAuthentication;,
        Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_xyz"

.field private static final DEFAULT_TOKEN_RESPONSE_JSON:Ljava/lang/String; = "{\"access_token\": \"access_xyz\", \"expires_in\":  3600, \"refresh_token\": \"refresh123\", \"token_type\": \"Bearer\"}"

.field private static final EXPIRES_IN_SECONDS:Ljava/lang/String; = "3600"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh123"

.field private static final TOKEN_RESPONSE:Ljava/lang/String; = "{\"access_token\": \"%s\", \"expires_in\":  %s, \"refresh_token\": \"%s\", \"token_type\": \"%s\"}"

.field private static final TOKEN_TYPE:Ljava/lang/String; = "Bearer"


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newMockHttpTransportWithSampleTokenResponse()Lcom/google/api/client/testing/http/MockHttpTransport;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "application/json; charset=UTF-8"

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->b:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;->DEFAULT_TOKEN_RESPONSE_JSON:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->setResponse(Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;)Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->b:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    const-string v3, "Cannnot set a low level HTTP request when a low level HTTP response has been set."

    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, v1, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->a:Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    .line 42
    .line 43
    new-instance v0, Lcom/google/api/client/testing/http/MockHttpTransport;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/google/api/client/testing/http/MockHttpTransport;-><init>(Lcom/google/api/client/testing/http/MockHttpTransport$Builder;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
