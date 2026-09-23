.class Lcom/mycompany/app/web/WebViewActivity$152;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$152;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$152;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->og:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->pg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->og:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->pg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 15
    .line 16
    .line 17
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->T2:I

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebNestView;->k:Z

    .line 24
    .line 25
    const-string v3, "window.close();"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v1, v3, v4}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->h8(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
