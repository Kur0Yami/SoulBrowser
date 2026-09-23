.class public Lcom/mycompany/app/dialog/DialogGuideNoti;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/view/MyDialogLinear;

.field public c0:Landroid/view/View;

.field public d0:Landroidx/appcompat/widget/AppCompatTextView;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroid/view/View;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroid/view/View;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroid/view/View;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroid/view/View;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroid/view/View;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Lcom/mycompany/app/view/MyLineText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 1

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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogGuideNoti$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogGuideNoti$1;-><init>(Lcom/mycompany/app/dialog/DialogGuideNoti;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->b0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->c0:Landroid/view/View;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->f0:Landroid/view/View;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->h0:Landroid/view/View;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->j0:Landroid/view/View;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->l0:Landroid/view/View;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->n0:Landroid/view/View;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
