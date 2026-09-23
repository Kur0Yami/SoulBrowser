.class Lcom/mycompany/app/dialog/DialogBackupLoad$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBackupLoad$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupLoad$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$15$1;->c:Lcom/mycompany/app/dialog/DialogBackupLoad$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$15$1;->c:Lcom/mycompany/app/dialog/DialogBackupLoad$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogBackupLoad$15;->c:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->M0:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->G()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 29
    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 33
    .line 34
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 39
    .line 40
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 51
    .line 52
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 57
    .line 58
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 59
    .line 60
    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v3, :cond_web_empty

    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    if-nez v3, :cond_3

    :cond_web_empty
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 68
    .line 69
    sget v3, Lnet/kaki87/soul2/testing/R$string;->backup_target:I

    .line 70
    .line 71
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->G0:Z

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    iput-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 81
    .line 82
    :cond_4
    const/4 v1, 0x0

    .line 83
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 91
    .line 92
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    :goto_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->quietKillProcess()V

    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 99
    .line 100
    .line 101
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->G0:Z

    .line 102
    .line 103
    return-void
.end method
