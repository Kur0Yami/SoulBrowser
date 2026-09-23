.class Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;


# instance fields
.field public final synthetic a:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field public final synthetic b:Lcom/google/api/client/auth/oauth2/TokenRequest$1;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/TokenRequest$1;Lcom/google/api/client/http/HttpExecuteInterceptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->b:Lcom/google/api/client/auth/oauth2/TokenRequest$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->a:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->a:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->b:Lcom/google/api/client/auth/oauth2/TokenRequest$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->a:Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
