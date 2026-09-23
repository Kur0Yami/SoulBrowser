.class Lcom/mycompany/app/dialog/DialogViewSrc$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->X7(Landroid/webkit/WebSettings;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$13$1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
