.class Lcom/google/auth/oauth2/OAuth2Utils$DefaultHttpTransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/http/HttpTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHttpTransportFactory"
.end annotation


# virtual methods
.method public final a()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->b:Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 2
    .line 3
    return-object v0
.end method
