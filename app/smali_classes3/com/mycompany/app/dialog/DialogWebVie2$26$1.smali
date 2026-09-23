.class Lcom/mycompany/app/dialog/DialogWebVie2$26$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2$26;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2$26;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$26$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$26;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$26$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$26;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$26;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->p1:Lcom/mycompany/app/web/WebTransControl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->p1:Lcom/mycompany/app/web/WebTransControl;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->W0:Lcom/mycompany/app/view/MyLineFrame;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 24
    .line 25
    :try_start_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 26
    .line 27
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Z0:Z

    .line 28
    .line 29
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$27;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$27;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTransControl;->setListener(Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->W0:Lcom/mycompany/app/view/MyLineFrame;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 47
    .line 48
    const/4 v3, -0x1

    .line 49
    const/4 v4, -0x2

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebVie2$26$1$1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$26$1$1;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$26$1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
