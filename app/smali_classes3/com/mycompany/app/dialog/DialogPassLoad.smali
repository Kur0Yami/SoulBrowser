.class public Lcom/mycompany/app/dialog/DialogPassLoad;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;
    }
.end annotation


# instance fields
.field public A0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public B0:Z

.field public C0:Z

.field public a0:Landroid/content/Context;

.field public b0:Ljava/lang/String;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Landroidx/appcompat/widget/AppCompatTextView;

.field public e0:Landroid/widget/LinearLayout;

.field public f0:Lcom/mycompany/app/view/MyRoundImage;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Lcom/mycompany/app/view/MyButtonCheck;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Lcom/mycompany/app/view/MyButtonCheck;

.field public p0:Landroid/widget/FrameLayout;

.field public q0:Lcom/mycompany/app/view/MyButtonCheck;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Lcom/mycompany/app/view/MyCoverView;

.field public t0:Lcom/mycompany/app/view/MyLineText;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

.field public w0:I

.field public x0:Z

.field public y0:Ljava/util/ArrayList;

.field public z0:Lcom/mycompany/app/main/MainItem$ChildItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->b0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogPassLoad$1;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPassLoad$1;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static C(ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->C0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

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
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const v1, -0x7f7f80

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v1, -0x252526

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->C0:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 45
    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPassLoad;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPassLoad;->E()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 72
    .line 73
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    :cond_8
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->b0:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->e0:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->p0:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->y0:Ljava/util/ArrayList;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 115
    .line 116
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 117
    .line 118
    .line 119
    return-void
.end method
