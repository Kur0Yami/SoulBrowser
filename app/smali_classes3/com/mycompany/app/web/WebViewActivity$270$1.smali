.class Lcom/mycompany/app/web/WebViewActivity$270$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$270;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$270;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$270$1;->c:Lcom/mycompany/app/web/WebViewActivity$270;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$270$1;->c:Lcom/mycompany/app/web/WebViewActivity$270;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$270;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->S5:Lcom/mycompany/app/web/WebVideoPip;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v4, v1, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebVideoPip;->g:Z

    .line 24
    .line 25
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 26
    .line 27
    iput-object v2, v1, Lcom/mycompany/app/web/WebVideoPip;->h:Landroid/view/ViewGroup;

    .line 28
    .line 29
    iput-object v3, v1, Lcom/mycompany/app/web/WebVideoPip;->k:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->x4(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoPip;->p:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, v1, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 39
    .line 40
    const/high16 v0, -0x1000000

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lcom/mycompany/app/web/WebVideoPip;->h:Landroid/view/ViewGroup;

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$1;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebVideoPip$1;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
