.class Lcom/mycompany/app/dialog/DialogWebView$54;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$54;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$54;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v4, -0x162e

    .line 11
    .line 12
    invoke-virtual {v1, v3, v4, v4}, Lcom/mycompany/app/wview/WebAreaView;->e(Landroid/view/View;II)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->i2:Z

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->i2:Z

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$56;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogWebView$56;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->h2:Z

    .line 39
    .line 40
    return-void
.end method
