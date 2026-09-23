.class Lcom/mycompany/app/dialog/DialogWebView$52;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$52;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$52;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebAreaView;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v1, v3}, Lcom/mycompany/app/wview/WebAreaView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 27
    .line 28
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$53;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$53;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lcom/mycompany/app/wview/WebAreaView;->setFltListener(Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/mycompany/app/wview/WebAreaView;->getViewWidth()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/mycompany/app/wview/WebAreaView;->getViewHeight()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$54;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$54;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->h2:Z

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->h2:Z

    .line 71
    .line 72
    return-void
.end method
