.class Lcom/mycompany/app/dialog/DialogDeleteBook$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDeleteBook$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteBook$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$3$1;->c:Lcom/mycompany/app/dialog/DialogDeleteBook$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$3$1;->c:Lcom/mycompany/app/dialog/DialogDeleteBook$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDeleteBook$3;->c:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->b0:Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;->a()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->k0:Lcom/mycompany/app/view/MyLineLinear;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 60
    .line 61
    sget v4, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 67
    .line 68
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    const v4, -0x50506

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/high16 v4, -0x1000000

    .line 77
    .line 78
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iput-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 86
    .line 87
    :cond_3
    const/4 v1, 0x0

    .line 88
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 89
    .line 90
    new-instance v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 96
    .line 97
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->s0:Z

    .line 103
    .line 104
    return-void
.end method
