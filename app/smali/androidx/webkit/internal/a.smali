.class public final synthetic Landroidx/webkit/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/webkit/internal/a;->a:I

    iput-object p1, p0, Landroidx/webkit/internal/a;->b:Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/webkit/internal/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/webkit/internal/a;->b:Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;

    .line 7
    .line 8
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 9
    .line 10
    new-instance v1, Landroidx/webkit/internal/WebViewRenderProcessImpl;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Landroidx/webkit/internal/WebViewRenderProcessImpl;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    iget-object v0, p0, Landroidx/webkit/internal/a;->b:Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;

    .line 19
    .line 20
    check-cast v0, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 21
    .line 22
    new-instance v1, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
