.class Lcom/mycompany/app/dialog/DialogEditArea$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$6$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$6$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditArea$6;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$string;->backup_target:I

    .line 22
    .line 23
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v1, v2, v2, v3, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const v3, -0x7f7f80

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const v3, -0x252526

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditArea$16;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogEditArea$16;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 66
    .line 67
    return-void
.end method
