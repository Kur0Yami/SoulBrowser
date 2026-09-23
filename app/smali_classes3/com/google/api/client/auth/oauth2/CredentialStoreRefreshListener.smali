.class public final Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/google/api/client/auth/oauth2/CredentialStore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;)V
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
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->a:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->a:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/api/client/auth/oauth2/CredentialStore;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->a:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/api/client/auth/oauth2/CredentialStore;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
