.class Lcom/mycompany/app/dialog/DialogViewRead$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->W()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->r(Lcom/mycompany/app/dialog/DialogViewRead;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 7
    .line 8
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebVideoImage;

    .line 24
    .line 25
    iget-object v1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebVideoImage;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v2, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 31
    .line 32
    iget-object v1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 33
    .line 34
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    iget-object v4, v2, Lcom/mycompany/app/dialog/DialogViewRead;->a0:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v5, 0x6

    .line 39
    move-object v6, p1

    .line 40
    move-object v7, p2

    .line 41
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/web/WebVideoImage;->b(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;ILandroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void

    .line 49
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$91;

    .line 50
    .line 51
    invoke-direct {p2, v2}, Lcom/mycompany/app/dialog/DialogViewRead$91;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
