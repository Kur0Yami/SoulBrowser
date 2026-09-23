.class Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;


# direct methods
.method public constructor <init>(Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask$1;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;->m:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask$1;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->o(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 2
    .line 3
    sget v0, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;->m:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask$1;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->n(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
