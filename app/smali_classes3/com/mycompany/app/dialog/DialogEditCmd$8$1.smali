.class Lcom/mycompany/app/dialog/DialogEditCmd$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditCmd$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditCmd$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$8$1;->c:Lcom/mycompany/app/dialog/DialogEditCmd$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd$8$1;->c:Lcom/mycompany/app/dialog/DialogEditCmd$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditCmd$8;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->f0:Z

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 25
    .line 26
    iget-wide v4, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-interface {v3, v4, v5, v1, v6}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditCmd;->dismiss()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 48
    .line 49
    sget v3, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v2, v3, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    const v3, -0x7f7f80

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const v3, -0x252526

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditCmd$11;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$11;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->p0:Z

    .line 100
    .line 101
    return-void
.end method
