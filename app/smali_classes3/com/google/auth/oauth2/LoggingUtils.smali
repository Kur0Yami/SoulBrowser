.class Lcom/google/auth/oauth2/LoggingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GOOGLE_SDK_JAVA_LOGGING"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "true"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lcom/google/auth/oauth2/LoggingUtils;->a:Z

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lcom/google/api/client/http/HttpRequest;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/auth/oauth2/LoggingUtils;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/auth/oauth2/Slf4jLoggingHelpers;->b(Lcom/google/api/client/http/HttpRequest;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static b(Lcom/google/api/client/http/HttpResponse;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/auth/oauth2/LoggingUtils;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/auth/oauth2/Slf4jLoggingHelpers;->a:Lcom/google/gson/Gson;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/google/auth/oauth2/LoggerProvider;->a()Lorg/slf4j/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lorg/slf4j/Logger;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "response.status"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string v1, "response.status.message"

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    const-string p0, "response.headers"

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object p0, Lorg/slf4j/event/Level;->f:Lorg/slf4j/event/Level;

    .line 63
    .line 64
    invoke-static {p1, p0, v0, p2}, Lcom/google/auth/oauth2/Slf4jUtils;->a(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_0
    return-void
.end method

.method public static c(Lcom/google/api/client/util/GenericData;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/auth/oauth2/LoggingUtils;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/auth/oauth2/Slf4jLoggingHelpers;->a:Lcom/google/gson/Gson;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/google/auth/oauth2/LoggerProvider;->a()Lorg/slf4j/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lorg/slf4j/Logger;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/auth/oauth2/Slf4jLoggingHelpers;->c(Lcom/google/api/client/util/GenericData;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Lorg/slf4j/event/Level;->g:Lorg/slf4j/event/Level;

    .line 22
    .line 23
    invoke-static {p1, v0, p0, p2}, Lcom/google/auth/oauth2/Slf4jUtils;->a(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_0
    return-void
.end method
