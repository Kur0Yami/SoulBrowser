.class Lcom/google/api/client/auth/oauth2/TokenRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/auth/oauth2/TokenRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/api/client/auth/oauth2/TokenRequest;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/TokenRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->a:Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->a:Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpRequestInitializer;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;-><init>(Lcom/google/api/client/auth/oauth2/TokenRequest$1;Lcom/google/api/client/http/HttpExecuteInterceptor;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 20
    .line 21
    .line 22
    return-void
.end method
