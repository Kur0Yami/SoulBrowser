.class public Lcom/google/api/client/testing/http/javanet/MockHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# virtual methods
.method public final connect()V
    .locals 0

    return-void
.end method

.method public final disconnect()V
    .locals 0

    return-void
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 2
    .line 3
    const/16 v1, 0x190

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final setDoOutput(Z)V
    .locals 0

    return-void
.end method

.method public final usingProxy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
