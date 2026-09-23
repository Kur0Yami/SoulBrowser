.class Lcom/google/auth/oauth2/OAuth2Credentials$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/auth/oauth2/OAuth2Credentials;


# direct methods
.method public constructor <init>(Lcom/google/auth/oauth2/OAuth2Credentials;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$1;->a:Lcom/google/auth/oauth2/OAuth2Credentials;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$1;->a:Lcom/google/auth/oauth2/OAuth2Credentials;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->i()Lcom/google/auth/oauth2/AccessToken;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->e()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v1, v0}, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->a(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
