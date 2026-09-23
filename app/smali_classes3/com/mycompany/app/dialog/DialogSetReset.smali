.class public Lcom/mycompany/app/dialog/DialogSetReset;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

.field public final c0:I

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroid/view/View;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroid/view/View;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroid/view/View;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Landroid/view/View;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroid/view/View;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Z

.field public s0:Z

.field public t0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetReset;->b0:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetReset;->c0:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetReset$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetReset$1;-><init>(Lcom/mycompany/app/dialog/DialogSetReset;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetReset;->r0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetReset;->t0:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetReset;->dismiss()V

    .line 10
    .line 11
    .line 12
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->a0:Landroid/content/Context;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->b0:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->g0:Landroid/view/View;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->i0:Landroid/view/View;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->k0:Landroid/view/View;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->m0:Landroid/view/View;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->o0:Landroid/view/View;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetReset;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
