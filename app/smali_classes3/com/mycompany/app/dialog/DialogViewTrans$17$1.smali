.class Lcom/mycompany/app/dialog/DialogViewTrans$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans$17;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans$17;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$17$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$17;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$17$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$17;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h1:Lcom/mycompany/app/web/WebTransControl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h1:Lcom/mycompany/app/web/WebTransControl;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 11
    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-eqz v2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 26
    .line 27
    :try_start_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 28
    .line 29
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 30
    .line 31
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->T0:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$18;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$18;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTransControl;->setListener(Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    const/4 v4, -0x2

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewTrans$12;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$12;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method
