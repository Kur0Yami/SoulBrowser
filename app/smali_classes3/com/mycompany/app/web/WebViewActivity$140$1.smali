.class Lcom/mycompany/app/web/WebViewActivity$140$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$140;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$140;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$140$1;->a:Lcom/mycompany/app/web/WebViewActivity$140;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$140$1;->a:Lcom/mycompany/app/web/WebViewActivity$140;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$140;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->d3:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->y:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$140$1;->a:Lcom/mycompany/app/web/WebViewActivity$140;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$140;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l3:Lcom/mycompany/app/view/MySnackbar;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MySnackbar;->getSnackItem()Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/view/MySnackbar$SnackItem;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Wf:Lcom/mycompany/app/web/WebNestFrame;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$140$1$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$140$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$140$1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$140$1;->a:Lcom/mycompany/app/web/WebViewActivity$140;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$140;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l3:Lcom/mycompany/app/view/MySnackbar;

    .line 7
    .line 8
    return-void
.end method
