.class Lcom/mycompany/app/web/WebViewActivity$474;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$474;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$474;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->im:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->jm:I

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->km:I

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->lm:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->mm:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->hm:Z

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->mm:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->G3:Lcom/mycompany/app/quick/QuickSubView;

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v6, Lcom/mycompany/app/quick/QuickSubView;

    .line 25
    .line 26
    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    iput-boolean v7, v6, Lcom/mycompany/app/quick/QuickSubView;->H:Z

    .line 31
    .line 32
    iput-object v0, v6, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 33
    .line 34
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->G3:Lcom/mycompany/app/quick/QuickSubView;

    .line 35
    .line 36
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 37
    .line 38
    new-instance v8, Lcom/mycompany/app/web/WebViewActivity$475;

    .line 39
    .line 40
    invoke-direct {v8, v0}, Lcom/mycompany/app/web/WebViewActivity$475;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 41
    .line 42
    .line 43
    iput-object v8, v6, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 44
    .line 45
    iput v1, v6, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 46
    .line 47
    iput v2, v6, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 48
    .line 49
    iput v3, v6, Lcom/mycompany/app/quick/QuickSubView;->i:I

    .line 50
    .line 51
    iput v4, v6, Lcom/mycompany/app/quick/QuickSubView;->j:I

    .line 52
    .line 53
    iput-object v5, v6, Lcom/mycompany/app/quick/QuickSubView;->k:Ljava/lang/String;

    .line 54
    .line 55
    iput-boolean v7, v6, Lcom/mycompany/app/quick/QuickSubView;->l:Z

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/mycompany/app/quick/QuickSubView;->d()V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$476;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$476;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method
