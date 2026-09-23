.class Lcom/mycompany/app/web/WebViewActivity$113;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$113;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$113;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pf:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->qf:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->rf:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->sf:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->pf:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->qf:Lcom/mycompany/app/web/WebNestFrame;

    .line 15
    .line 16
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->rf:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object v2, v1, Lcom/mycompany/app/web/WebNestView;->v0:Lcom/mycompany/app/web/WebNestFrame;

    .line 24
    .line 25
    iput-object v3, v1, Lcom/mycompany/app/web/WebNestView;->w0:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iput-object v5, v1, Lcom/mycompany/app/web/WebNestView;->x0:Ljava/lang/String;

    .line 33
    .line 34
    iput v4, v1, Lcom/mycompany/app/web/WebNestView;->y0:I

    .line 35
    .line 36
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$116;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$116;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v4}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$117;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$117;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x4

    .line 53
    invoke-virtual {v2, v4}, Lcom/mycompany/app/web/WebNestFrame;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tf:Lcom/mycompany/app/web/WebNestView;

    .line 57
    .line 58
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->uf:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$114;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$114;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 75
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->uc:Z

    .line 76
    .line 77
    return-void
.end method
