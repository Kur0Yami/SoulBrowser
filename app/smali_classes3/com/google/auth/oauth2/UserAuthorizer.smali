.class public Lcom/google/auth/oauth2/UserAuthorizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/UserAuthorizer$TokenResponseWithConfig;,
        Lcom/google/auth/oauth2/UserAuthorizer$Builder;,
        Lcom/google/auth/oauth2/UserAuthorizer$UserCredentialsListener;,
        Lcom/google/auth/oauth2/UserAuthorizer$ClientAuthenticationType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "/oauth2callback"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    return-void
.end method
