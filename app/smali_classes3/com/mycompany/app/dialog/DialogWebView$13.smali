.class Lcom/mycompany/app/dialog/DialogWebView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$13;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogWebView;->k2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$13;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->S()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p1, :cond_4

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->o0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->W()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->f2:Lcom/mycompany/app/web/WebTransControl;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebTransControl;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebTransControl;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->f2:Lcom/mycompany/app/web/WebTransControl;

    .line 35
    .line 36
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogWebView;->g2:Landroid/view/View;

    .line 37
    .line 38
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$45;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogWebView$45;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_0
    return-void
.end method
