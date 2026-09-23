.class Lcom/mycompany/app/dialog/DialogSetPms$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPms;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPms;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$4;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$4;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetPms;->j0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I

    .line 9
    .line 10
    iget v2, p1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 15
    .line 16
    iget v1, p1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPms;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    const v1, -0x7f7f80

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const v1, -0x252526

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetPms;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetPms$4$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetPms$4$1;-><init>(Lcom/mycompany/app/dialog/DialogSetPms$4;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
