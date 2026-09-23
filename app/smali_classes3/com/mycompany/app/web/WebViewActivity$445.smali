.class Lcom/mycompany/app/web/WebViewActivity$445;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$445;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$445;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebAreaView;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/mycompany/app/wview/WebAreaView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 29
    .line 30
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$446;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$446;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/mycompany/app/wview/WebAreaView;->setFltListener(Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/mycompany/app/wview/WebAreaView;->getViewWidth()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/mycompany/app/wview/WebAreaView;->getViewHeight()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$447;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$447;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xl:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xl:Z

    .line 73
    .line 74
    return-void
.end method
