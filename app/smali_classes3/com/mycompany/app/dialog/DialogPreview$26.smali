.class Lcom/mycompany/app/dialog/DialogPreview$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$26;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$26;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->c1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->c1:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x1

    .line 14
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->W7(Landroid/webkit/WebView;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 18
    .line 19
    new-instance v3, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->d1:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$27;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$27;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
