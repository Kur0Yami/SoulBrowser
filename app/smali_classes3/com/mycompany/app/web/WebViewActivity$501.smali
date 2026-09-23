.class Lcom/mycompany/app/web/WebViewActivity$501;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$501;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$501;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Na:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    if-nez v1, :cond_2

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ga:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Lcom/mycompany/app/wview/WebFltView;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/wview/WebFltView;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Na:Lcom/mycompany/app/wview/WebFltView;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Na:Lcom/mycompany/app/wview/WebFltView;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setHideBlocked(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Na:Lcom/mycompany/app/wview/WebFltView;

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$501$1;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$501$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$501;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->Na:Lcom/mycompany/app/wview/WebFltView;

    .line 53
    .line 54
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
