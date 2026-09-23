.class Lcom/mycompany/app/web/WebViewActivity$619;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$619;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$619;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eb:Lcom/mycompany/app/wview/WebFltView;

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
    new-instance v1, Lcom/mycompany/app/wview/WebFltView;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/wview/WebFltView;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eb:Lcom/mycompany/app/wview/WebFltView;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eb:Lcom/mycompany/app/wview/WebFltView;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setHideBlocked(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eb:Lcom/mycompany/app/wview/WebFltView;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$619$1;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$619$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$619;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->eb:Lcom/mycompany/app/wview/WebFltView;

    .line 42
    .line 43
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
