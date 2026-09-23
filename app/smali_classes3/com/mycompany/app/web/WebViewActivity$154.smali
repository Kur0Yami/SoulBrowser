.class Lcom/mycompany/app/web/WebViewActivity$154;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$154;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$154;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->tg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->sg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->tg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/mycompany/app/web/WebViewActivity;->T7(Landroid/webkit/WebView;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ug:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->vg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$155;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$155;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v2}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 45
    .line 46
    .line 47
    :cond_3
    const/4 v1, 0x0

    .line 48
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 49
    .line 50
    return-void
.end method
