.class Lcom/mycompany/app/dialog/DialogEditText$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogEditText;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditText;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->f:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/mycompany/app/compress/CompressUtilZip2;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->h:Z

    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditText;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->j0:Lcom/mycompany/app/dialog/DialogEditText$DialogTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->h:Z

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->a0:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_password:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditText;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    const v1, -0x50506

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const v1, -0xe19938

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditText;->b0:Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditText$DialogTask;->g:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
.end method
