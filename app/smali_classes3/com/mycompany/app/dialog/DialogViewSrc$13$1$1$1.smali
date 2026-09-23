.class Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "view-source:"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogViewSrc;->c0:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogViewSrc;->u(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1$1;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
