.class public Landroidx/webkit/internal/ServiceWorkerControllerImpl;
.super Landroidx/webkit/ServiceWorkerControllerCompat;
.source "SourceFile"


# instance fields
.field public final a:Landroid/webkit/ServiceWorkerController;

.field public final b:Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->a:Landroidx/webkit/internal/ApiFeature$N;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$N;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForN;->a()Landroid/webkit/ServiceWorkerController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->a:Landroid/webkit/ServiceWorkerController;

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->b:Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForN;->a()Landroid/webkit/ServiceWorkerController;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->a:Landroid/webkit/ServiceWorkerController;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->a:Landroid/webkit/ServiceWorkerController;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/webkit/internal/ApiHelperForN;->b(Landroid/webkit/ServiceWorkerController;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->d()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iput-object v2, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->a:Landroid/webkit/ServiceWorkerController;

    .line 42
    .line 43
    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->a:Landroidx/webkit/internal/WebViewProviderFactory;

    .line 44
    .line 45
    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getServiceWorkerController()Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->b:Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;->getServiceWorkerWebSettings()Ljava/lang/reflect/InvocationHandler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-class v1, Lorg/chromium/support_lib_boundary/ServiceWorkerWebSettingsBoundaryInterface;

    .line 56
    .line 57
    invoke-static {v1, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lorg/chromium/support_lib_boundary/ServiceWorkerWebSettingsBoundaryInterface;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->a()Ljava/lang/UnsupportedOperationException;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    throw v0
.end method
