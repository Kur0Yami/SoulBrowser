.class Lcom/mycompany/app/web/WebViewActivity$612;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$612;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$612;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/mycompany/app/wview/WebTtsView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebTtsView;->j()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebTtsView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 32
    .line 33
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$612$1;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$612$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$612;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebTtsView;->setTtsListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 44
    .line 45
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
