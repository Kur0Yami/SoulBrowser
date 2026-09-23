.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;,
        Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;,
        Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;
    }
.end annotation


# instance fields
.field private final authorizationServerEncodedUrl:Ljava/lang/String;

.field private final clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private final clientId:Ljava/lang/String;

.field private final clock:Lcom/google/api/client/util/Clock;

.field private final credentialCreatedListener:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;

.field private final credentialDataStore:Lcom/google/api/client/util/store/DataStore;
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation
.end field

.field private final credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private final pkce:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;

.field private final refreshListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private final requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final scopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenServerEncodedUrl:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clientId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->authorizationServerEncodedUrl:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 75
    .line 76
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 83
    .line 84
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->scopes:Ljava/util/Collection;

    .line 85
    .line 86
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/util/Collection;

    .line 91
    .line 92
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clock:Lcom/google/api/client/util/Clock;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/google/api/client/util/Clock;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    .line 101
    .line 102
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->credentialCreatedListener:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialCreatedListener:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;

    .line 105
    .line 106
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->refreshListeners:Ljava/util/Collection;

    .line 107
    .line 108
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->refreshListeners:Ljava/util/Collection;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->pkce:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->pkce:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;

    .line 117
    .line 118
    return-void
.end method

.method public static synthetic access$000(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;)Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->pkce:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance v2, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;

    .line 39
    .line 40
    invoke-direct {v2, p1, v1}, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;-><init>(Ljava/lang/String;Lcom/google/api/client/util/store/DataStore;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    new-instance v2, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;

    .line 52
    .line 53
    invoke-direct {v2, p1, v1}, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->getRefreshListeners()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->refreshListeners:Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/google/api/client/auth/oauth2/Credential;

    .line 69
    .line 70
    invoke-direct {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$Builder;)V

    .line 71
    .line 72
    .line 73
    return-object p1
.end method

.method public createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/api/client/auth/oauth2/CredentialStore;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/google/api/client/auth/oauth2/StoredCredential;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p2, v1}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialCreatedListener:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-interface {p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;->a()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-object p1
.end method

.method public final getAuthorizationServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClock()Lcom/google/api/client/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCredentialDataStore()Lcom/google/api/client/util/store/DataStore;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCredentialStore()Lcom/google/api/client/auth/oauth2/CredentialStore;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->refreshListeners:Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScopesAsString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/util/Collection;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getTokenServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/api/client/auth/oauth2/StoredCredential;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->b()Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/google/api/client/auth/oauth2/CredentialStore;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    :goto_0
    const/4 p1, 0x0

    .line 65
    return-object p1

    .line 66
    :cond_4
    return-object v0
.end method
