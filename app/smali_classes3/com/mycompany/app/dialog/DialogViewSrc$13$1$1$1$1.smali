.class Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->R:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyFindView;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyFindView;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 33
    .line 34
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$14;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$14;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v1, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v1, Lcom/mycompany/app/view/MyFindView;->i:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-boolean v2, v1, Lcom/mycompany/app/view/MyFindView;->g:Z

    .line 46
    .line 47
    iput-object v3, v1, Lcom/mycompany/app/view/MyFindView;->f:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->R:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    sget v4, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 53
    .line 54
    invoke-virtual {v2, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$15;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$15;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method
