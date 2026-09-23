.class public final synthetic Landroidx/webkit/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/webkit/internal/c;->a:I

    iput-object p1, p0, Landroidx/webkit/internal/c;->b:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/webkit/internal/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/webkit/internal/NavigationAdapter;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/webkit/internal/c;->b:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/webkit/internal/NavigationAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Landroidx/webkit/internal/NavigationAdapter;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/webkit/internal/c;->b:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroidx/webkit/internal/NavigationAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_1
    new-instance v0, Landroidx/webkit/internal/NavigationAdapter;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/webkit/internal/c;->b:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroidx/webkit/internal/NavigationAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
