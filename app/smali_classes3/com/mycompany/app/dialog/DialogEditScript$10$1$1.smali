.class Lcom/mycompany/app/dialog/DialogEditScript$10$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript$10$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript$10$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$10$1$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$10$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$10$1$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$10$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditScript$10$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$10;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript$10;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogEditScript;->f0:Z

    .line 14
    .line 15
    new-instance v4, Lcom/mycompany/app/dialog/DialogEditScript$WebAppInterface;

    .line 16
    .line 17
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogEditScript$WebAppInterface;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android"

    .line 21
    .line 22
    invoke-virtual {v2, v4, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditScript$10;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 26
    .line 27
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->W:Z

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->n0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$16;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$16;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
