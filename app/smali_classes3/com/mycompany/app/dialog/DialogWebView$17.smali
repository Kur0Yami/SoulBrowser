.class Lcom/mycompany/app/dialog/DialogWebView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$17;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$17;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    sget v2, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v3

    .line 25
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    # Preview WebNestView: Activity context menus do not reliably fire inside a
    # Dialog window, so drive HitTest from OnLongClickListener.
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    instance-of v4, v2, Lcom/mycompany/app/web/WebViewActivity;

    if-eqz v4, :cond_sb_lp

    check-cast v2, Lcom/mycompany/app/web/WebViewActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v4, Lcom/mycompany/app/dialog/DialogWebView$LongClick;

    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebView$LongClick;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v4, Lcom/mycompany/app/dialog/DialogWebView$PreviewTouch;

    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebView$PreviewTouch;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_sb_lp
    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 37
    .line 38
    invoke-virtual {v2, v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$27;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method
