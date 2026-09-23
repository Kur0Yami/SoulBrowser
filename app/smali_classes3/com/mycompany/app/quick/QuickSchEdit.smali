.class public Lcom/mycompany/app/quick/QuickSchEdit;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/web/WebViewActivity;

.field public f:Landroid/content/Context;

.field public g:Landroid/os/Handler;

.field public final h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

.field public i:Lcom/mycompany/app/quick/QuickView;

.field public j:Lcom/mycompany/app/quick/QuickControl;

.field public k:Z

.field public l:Z

.field public final m:I

.field public n:Lcom/mycompany/app/quick/QuickView;

.field public o:Lcom/mycompany/app/quick/QuickControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/content/Context;ILcom/mycompany/app/quick/QuickView$QuickViewListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSchEdit;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickSchEdit;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSchEdit;->l:Z

    .line 12
    .line 13
    iput p3, p0, Lcom/mycompany/app/quick/QuickSchEdit;->m:I

    .line 14
    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSchEdit;->g:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance p2, Lcom/mycompany/app/quick/QuickSchEdit$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/mycompany/app/quick/QuickSchEdit$1;-><init>(Lcom/mycompany/app/quick/QuickSchEdit;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static a(Lcom/mycompany/app/quick/QuickSchEdit;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/quick/QuickSchEdit;->getUiContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/QuickView;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/QuickView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickSchEdit;->n:Lcom/mycompany/app/quick/QuickView;

    .line 14
    .line 15
    new-instance v1, Lcom/mycompany/app/quick/QuickControl;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {v1, v0}, Lcom/mycompany/app/quick/QuickControl;->a(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickSchEdit;->o:Lcom/mycompany/app/quick/QuickControl;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit;->g:Landroid/os/Handler;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v1, Lcom/mycompany/app/quick/QuickSchEdit$2;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSchEdit$2;-><init>(Lcom/mycompany/app/quick/QuickSchEdit;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static b(Lcom/mycompany/app/quick/QuickSchEdit;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mycompany/app/quick/QuickSchEdit;->getUiContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->b()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private getUiContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit;->f:Landroid/content/Context;

    .line 7
    .line 8
    return-object v0
.end method
