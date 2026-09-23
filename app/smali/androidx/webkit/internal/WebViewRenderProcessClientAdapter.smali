.class public Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewRendererClientBoundaryInterface;


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->c:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/webkit/internal/WebViewRenderProcessImpl;->b:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    const-class p1, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 10
    .line 11
    new-instance p2, Landroidx/webkit/internal/a;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p2, p1, v0}, Landroidx/webkit/internal/a;-><init>(Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/webkit/internal/WebViewRenderProcessImpl;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1
.end method

.method public final onRendererUnresponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/webkit/internal/WebViewRenderProcessImpl;->b:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    const-class p1, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 10
    .line 11
    new-instance p2, Landroidx/webkit/internal/a;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p2, p1, v0}, Landroidx/webkit/internal/a;-><init>(Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/webkit/internal/WebViewRenderProcessImpl;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1
.end method
