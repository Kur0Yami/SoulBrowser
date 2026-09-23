.class public Lcom/mycompany/app/web/WebLoadView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebLoadView$LocalChromeClient;,
        Lcom/mycompany/app/web/WebLoadView$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebLoadView$WebAppInterface;
    }
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Lcom/mycompany/app/view/MyWebSafe;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/web/WebLoadView;->a:Landroid/view/ViewGroup;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mycompany/app/web/WebLoadView;->d:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p2, Lcom/mycompany/app/view/MyWebSafe;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 24
    .line 25
    const/4 p2, 0x4

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadView;->a:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 32
    .line 33
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 48
    .line 49
    const/4 p3, 0x1

    .line 50
    iput-boolean p3, p1, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 51
    .line 52
    iput-object p2, p1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    iput-object p2, p1, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 56
    .line 57
    iput v0, p1, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 58
    .line 59
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadView;->a:Landroid/view/ViewGroup;

    .line 62
    .line 63
    new-instance p2, Lcom/mycompany/app/web/WebLoadView$1;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebLoadView$1;-><init>(Lcom/mycompany/app/web/WebLoadView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/mycompany/app/web/WebLoadView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebLoadView;->e:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebLoadView;->e:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebLoadView$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebLoadView$2;-><init>(Lcom/mycompany/app/web/WebLoadView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebLoadView;->e:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebLoadView;->e:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebLoadView$3;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebLoadView$3;-><init>(Lcom/mycompany/app/web/WebLoadView;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 14
    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    iput-object v2, v0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 19
    .line 20
    iput-object v2, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 23
    .line 24
    iput v1, v0, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 25
    .line 26
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 27
    .line 28
    iput-object v2, p0, Lcom/mycompany/app/web/WebLoadView;->d:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebLoadView;->c:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebLoadView;->c:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 49
    .line 50
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/web/WebLoadView;->a:Landroid/view/ViewGroup;

    .line 51
    .line 52
    return-void
.end method
