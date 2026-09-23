.class public Landroidx/webkit/internal/SafeBrowsingResponseImpl;
.super Landroidx/webkit/SafeBrowsingResponseCompat;
.source "SourceFile"


# instance fields
.field public a:Landroid/webkit/SafeBrowsingResponse;

.field public b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->d:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O_MR1;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->a:Landroid/webkit/SafeBrowsingResponse;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->a:Landroidx/webkit/internal/WebkitToCompatConverter;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/webkit/internal/WebkitToCompatConverter;->a(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/SafeBrowsingResponse;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->a:Landroid/webkit/SafeBrowsingResponse;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->a:Landroid/webkit/SafeBrowsingResponse;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/webkit/internal/ApiHelperForOMR1;->a(Landroid/webkit/SafeBrowsingResponse;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->a:Landroidx/webkit/internal/WebkitToCompatConverter;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->a:Landroid/webkit/SafeBrowsingResponse;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/webkit/internal/WebkitToCompatConverter;->a:Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;->convertSafeBrowsingResponse(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-class v1, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;->showInterstitial(Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->a()Ljava/lang/UnsupportedOperationException;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    throw v0
.end method
