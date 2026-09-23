.class Lcom/mycompany/app/web/WebViewActivity$192;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$192;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$192;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b4:Lcom/mycompany/app/wview/WebDownView;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebDownView;->m()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 v1, 0x4d2

    .line 21
    .line 22
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c4:I

    .line 23
    .line 24
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebDownView;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/wview/WebDownView;-><init>(Landroid/content/Context;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b4:Lcom/mycompany/app/wview/WebDownView;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebDownView;->l()V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b4:Lcom/mycompany/app/wview/WebDownView;

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebDownView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b4:Lcom/mycompany/app/wview/WebDownView;

    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$192$1;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$192$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$192;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebDownView;->setListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->b4:Lcom/mycompany/app/wview/WebDownView;

    .line 55
    .line 56
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
