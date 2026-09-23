.class public Lcom/google/auth/ApiKeyCredentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/net/URI;)Ljava/util/Map;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const-string v0, "x-goog-api-key"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
