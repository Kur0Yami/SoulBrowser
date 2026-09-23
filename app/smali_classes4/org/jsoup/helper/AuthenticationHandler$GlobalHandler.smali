.class Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/helper/AuthenticationHandler$AuthShim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/AuthenticationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalHandler"
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lorg/jsoup/helper/AuthenticationHandler;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/net/Authenticator;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lorg/jsoup/helper/AuthenticationHandler;->b:I

    .line 15
    .line 16
    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/helper/RequestAuthenticator;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/helper/AuthenticationHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/net/Authenticator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lorg/jsoup/helper/AuthenticationHandler;->b:I

    .line 8
    .line 9
    iput-object p1, v0, Lorg/jsoup/helper/AuthenticationHandler;->a:Lorg/jsoup/helper/RequestAuthenticator;

    .line 10
    .line 11
    sget-object p1, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->a:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final get()Lorg/jsoup/helper/AuthenticationHandler;
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/jsoup/helper/AuthenticationHandler;

    .line 8
    .line 9
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
