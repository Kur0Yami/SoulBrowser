.class public Lcom/google/api/client/auth/oauth2/TokenResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final transient c:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->c:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 5
    .line 6
    return-void
.end method
