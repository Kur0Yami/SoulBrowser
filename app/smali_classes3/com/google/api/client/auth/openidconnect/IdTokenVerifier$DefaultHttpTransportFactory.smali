.class Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$DefaultHttpTransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/auth/openidconnect/HttpTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHttpTransportFactory"
.end annotation


# virtual methods
.method public final a()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->HTTP_TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    .line 2
    .line 3
    return-object v0
.end method
