.class Lcom/mycompany/app/dialog/DialogSetReset$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetReset$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetReset$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetReset$3$1;->c:Lcom/mycompany/app/dialog/DialogSetReset$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset$3$1;->c:Lcom/mycompany/app/dialog/DialogSetReset$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetReset$3;->c:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v2, v1, v1, v3, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const v2, -0x7f7f80

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v2, -0x252526

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetReset$5;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSetReset$5;-><init>(Lcom/mycompany/app/dialog/DialogSetReset;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
