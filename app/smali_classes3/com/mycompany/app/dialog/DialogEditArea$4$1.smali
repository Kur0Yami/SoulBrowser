.class Lcom/mycompany/app/dialog/DialogEditArea$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$4$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$4$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditArea$4;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->H()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->G()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 23
    .line 24
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reset_confirm:I

    .line 25
    .line 26
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 27
    .line 28
    new-instance v5, Lcom/mycompany/app/dialog/DialogEditArea$12;

    .line 29
    .line 30
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogEditArea$12;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->o0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditArea$13;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditArea$13;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 48
    .line 49
    return-void
.end method
