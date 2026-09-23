.class Lcom/mycompany/app/dialog/DialogCapture$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$7;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$7;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogNormal;->show()V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->y:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->B:Z

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 25
    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture$10;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogCapture$10;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_4
    :goto_0
    return-void
.end method
