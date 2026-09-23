.class public final Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field public final a:Lcom/google/api/client/util/store/DataStore;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/util/store/DataStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/api/client/util/store/DataStore;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->a:Lcom/google/api/client/util/store/DataStore;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/auth/oauth2/StoredCredential;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->a:Lcom/google/api/client/util/store/DataStore;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p1, v1, v0}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/auth/oauth2/StoredCredential;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->a:Lcom/google/api/client/util/store/DataStore;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p1, v1, v0}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    .line 11
    .line 12
    .line 13
    return-void
.end method
