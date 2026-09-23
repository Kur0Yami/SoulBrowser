.class Lcom/mycompany/app/dialog/DialogWebView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$19;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$19;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->q0:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->r0:Lcom/mycompany/app/view/MyAdNative;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$20;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$20;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainApp;->d(Landroid/app/Activity;ILcom/mycompany/app/main/MainApp$AdLocalListener;)Lcom/mycompany/app/view/MyAdNative;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->r0:Lcom/mycompany/app/view/MyAdNative;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->b0()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->q0:Lcom/mycompany/app/view/MyAdFrame;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->r0:Lcom/mycompany/app/view/MyAdNative;

    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/view/MyAdFrame;->a(Lcom/mycompany/app/view/MyAdNative;ZLandroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->u0:Z

    .line 52
    .line 53
    return-void
.end method
