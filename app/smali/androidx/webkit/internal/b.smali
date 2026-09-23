.class public final synthetic Landroidx/webkit/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/webkit/internal/b;->a:I

    iput-object p1, p0, Landroidx/webkit/internal/b;->b:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/webkit/internal/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/webkit/internal/PageImpl;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/webkit/internal/b;->b:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Landroidx/webkit/internal/PageImpl;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/webkit/internal/b;->b:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_1
    new-instance v0, Landroidx/webkit/internal/PageImpl;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/webkit/internal/b;->b:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_2
    new-instance v0, Landroidx/webkit/internal/PageImpl;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/webkit/internal/b;->b:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
