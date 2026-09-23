.class public Lcom/mycompany/app/dialog/DialogDeleteBook;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;,
        Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;

.field public final c0:I

.field public d0:Ljava/util/List;

.field public e0:Ljava/lang/String;

.field public final f0:Z

.field public final g0:Z

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Lcom/mycompany/app/view/MyRoundImage;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Lcom/mycompany/app/view/MyLineLinear;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Lcom/mycompany/app/view/MyProgressBar;

.field public o0:Lcom/mycompany/app/view/MyLineText;

.field public p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

.field public q0:Lcom/mycompany/app/main/MainListLoader;

.field public r0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public s0:Z

.field public t0:Z

.field public u0:Lcom/mycompany/app/web/WebClean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Ljava/lang/String;ZZLcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_3

    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->b0:Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;

    .line 20
    .line 21
    iput p2, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->c0:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->e0:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->f0:Z

    .line 28
    .line 29
    iput-boolean p6, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->g0:Z

    .line 30
    .line 31
    const/16 p3, 0x17

    .line 32
    .line 33
    if-ne p2, p3, :cond_1

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->v(Landroid/content/Context;Z)Lcom/mycompany/app/web/WebClean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->u0:Lcom/mycompany/app/web/WebClean;

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogDeleteBook$1;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDeleteBook$1;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const v1, -0x7f7f80

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, -0x252526

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDeleteBook;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x11

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iget v3, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->c0:I

    .line 10
    .line 11
    if-eq v3, v1, :cond_6

    .line 12
    .line 13
    const/16 v1, 0x12

    .line 14
    .line 15
    if-eq v3, v1, :cond_6

    .line 16
    .line 17
    const/16 v1, 0x13

    .line 18
    .line 19
    if-eq v3, v1, :cond_6

    .line 20
    .line 21
    const/16 v1, 0x14

    .line 22
    .line 23
    if-eq v3, v1, :cond_6

    .line 24
    .line 25
    const/16 v1, 0x15

    .line 26
    .line 27
    if-eq v3, v1, :cond_6

    .line 28
    .line 29
    const/16 v1, 0x16

    .line 30
    .line 31
    if-eq v3, v1, :cond_6

    .line 32
    .line 33
    const/16 v1, 0x17

    .line 34
    .line 35
    if-eq v3, v1, :cond_6

    .line 36
    .line 37
    const/16 v1, 0x18

    .line 38
    .line 39
    if-eq v3, v1, :cond_6

    .line 40
    .line 41
    const/16 v1, 0x1c

    .line 42
    .line 43
    if-eq v3, v1, :cond_6

    .line 44
    .line 45
    const/16 v1, 0x1d

    .line 46
    .line 47
    if-eq v3, v1, :cond_6

    .line 48
    .line 49
    const/16 v1, 0x1e

    .line 50
    .line 51
    if-eq v3, v1, :cond_6

    .line 52
    .line 53
    const/16 v1, 0x23

    .line 54
    .line 55
    if-eq v3, v1, :cond_6

    .line 56
    .line 57
    const/16 v1, 0x24

    .line 58
    .line 59
    if-ne v3, v1, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/16 v0, 0x20

    .line 63
    .line 64
    if-eq v3, v0, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 91
    .line 92
    const/16 v1, 0x8

    .line 93
    .line 94
    if-ne v0, v1, :cond_5

    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_0
    return-void

    .line 102
    :cond_6
    :goto_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDeleteBook;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->q0:Lcom/mycompany/app/main/MainListLoader;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->q0:Lcom/mycompany/app/main/MainListLoader;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->k0:Lcom/mycompany/app/view/MyLineLinear;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->k0:Lcom/mycompany/app/view/MyLineLinear;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->b0:Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->e0:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->r0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook;->u0:Lcom/mycompany/app/web/WebClean;

    .line 90
    .line 91
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
