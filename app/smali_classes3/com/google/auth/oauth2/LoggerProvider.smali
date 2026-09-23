.class Lcom/google/auth/oauth2/LoggerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/slf4j/Logger;

.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/auth/oauth2/LoggerProvider;->b:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lorg/slf4j/Logger;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/LoggerProvider;->a:Lorg/slf4j/Logger;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/auth/oauth2/Slf4jUtils;->a:Lcom/google/gson/Gson;

    .line 6
    .line 7
    sget-boolean v0, Lcom/google/auth/oauth2/LoggingUtils;->a:Z

    .line 8
    .line 9
    const-string v0, "GOOGLE_SDK_JAVA_LOGGING"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "true"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lorg/slf4j/LoggerFactory;->d()Lorg/slf4j/ILoggerFactory;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/auth/oauth2/LoggerProvider;->b:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lorg/slf4j/ILoggerFactory;->a(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lorg/slf4j/helpers/NOPLogger;->c:Lorg/slf4j/helpers/NOPLogger;

    .line 39
    .line 40
    :goto_0
    iput-object v0, p0, Lcom/google/auth/oauth2/LoggerProvider;->a:Lorg/slf4j/Logger;

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/auth/oauth2/LoggerProvider;->a:Lorg/slf4j/Logger;

    .line 43
    .line 44
    return-object v0
.end method
