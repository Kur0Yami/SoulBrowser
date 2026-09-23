.class public Lcom/google/auth/oauth2/PluggableAuthCredentials;
.super Lcom/google/auth/oauth2/ExternalAccountCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/PluggableAuthCredentials$Builder;
    }
.end annotation


# virtual methods
.method public final i()Lcom/google/auth/oauth2/AccessToken;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/PluggableAuthCredentials;

    .line 2
    .line 3
    new-instance v1, Lcom/google/auth/oauth2/PluggableAuthCredentials$Builder;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v1, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;->g:Ljava/util/Collection;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1
.end method
