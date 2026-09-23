.class Lcom/mycompany/app/web/WebViewActivity$285;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$285;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$285;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ej:Landroid/os/Message;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ej:Landroid/os/Message;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x4

    .line 16
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/view/MyWebBody;->c(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->fj:Landroid/os/Message;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$286;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$286;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 49
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Cc:Z

    .line 50
    .line 51
    return-void
.end method
