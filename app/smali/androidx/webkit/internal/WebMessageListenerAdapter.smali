.class public Landroidx/webkit/internal/WebMessageListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageListenerBoundaryInterface;


# instance fields
.field public final c:Landroidx/webkit/WebViewCompat$WebMessageListener;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/WebMessageListenerAdapter;->c:Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSupportedFeatures()[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 2
    .line 3
    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final onPostMessage(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;ZLjava/lang/reflect/InvocationHandler;)V
    .locals 0

    .line 1
    const-class p1, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/webkit/internal/WebMessageAdapter;->a(Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;)Landroidx/webkit/WebMessageCompat;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-class p2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 16
    .line 17
    invoke-static {p2, p5}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 22
    .line 23
    new-instance p3, Landroidx/webkit/internal/a;

    .line 24
    .line 25
    const/4 p4, 0x0

    .line 26
    invoke-direct {p3, p2, p4}, Landroidx/webkit/internal/a;-><init>(Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p3}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/webkit/internal/WebMessageListenerAdapter;->c:Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 36
    .line 37
    invoke-interface {p2, p1}, Landroidx/webkit/WebViewCompat$WebMessageListener;->a(Landroidx/webkit/WebMessageCompat;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
