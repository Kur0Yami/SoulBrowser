.class Lcom/mycompany/app/web/WebViewActivity$153;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$153;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$153;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->qg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->rg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->qg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->rg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v5, 0x1

    .line 21
    iput-boolean v5, v4, Lcom/mycompany/app/web/WebNestView;->k:Z

    .line 22
    .line 23
    const-string v6, "window.close();"

    .line 24
    .line 25
    invoke-static {v4, v6, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->r6()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Lcom/mycompany/app/web/WebViewActivity;->I3(Z)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 35
    .line 36
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->tg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$154;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$154;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v2}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 58
    .line 59
    return-void
.end method
