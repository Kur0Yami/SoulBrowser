.class Lcom/mycompany/app/dialog/DialogEditScript$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$17;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$17;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->o0:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->p0:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->o0:Z

    .line 9
    .line 10
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->h0:Z

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->G:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->d0:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->v()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->G:Lcom/mycompany/app/main/MainActivity;

    .line 32
    .line 33
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditScript$18;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditScript$18;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->d0:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 42
    .line 43
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$19;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$19;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->s(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    if-nez v1, :cond_5

    .line 57
    .line 58
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->K:Z

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->s(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->dismiss()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
