.class Lorg/jsoup/helper/AuthenticationHandler;
.super Ljava/net/Authenticator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/AuthenticationHandler$AuthShim;,
        Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;
    }
.end annotation


# static fields
.field public static final c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;


# instance fields
.field public a:Lorg/jsoup/helper/RequestAuthenticator;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "org.jsoup.helper.RequestAuthHandler"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 17
    .line 18
    sput-object v0, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :catch_1
    new-instance v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 5

    .line 1
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->get()Lorg/jsoup/helper/AuthenticationHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lorg/jsoup/helper/AuthenticationHandler;->a:Lorg/jsoup/helper/RequestAuthenticator;

    .line 11
    .line 12
    iget v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->b:I

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iput v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->b:I

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-le v2, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-nez v1, :cond_2

    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0

    .line 26
    :cond_2
    new-instance v0, Lorg/jsoup/helper/RequestAuthenticator$Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/net/Authenticator;->getRequestingURL()Ljava/net/URL;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0}, Ljava/net/Authenticator;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0}, Ljava/net/Authenticator;->getRequestingPrompt()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v0, v2, v3, v4}, Lorg/jsoup/helper/RequestAuthenticator$Context;-><init>(Ljava/net/URL;Ljava/net/Authenticator$RequestorType;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0}, Lorg/jsoup/helper/RequestAuthenticator;->authenticate(Lorg/jsoup/helper/RequestAuthenticator$Context;)Ljava/net/PasswordAuthentication;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
