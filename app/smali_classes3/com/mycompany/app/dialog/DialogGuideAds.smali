.class public Lcom/mycompany/app/dialog/DialogGuideAds;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/view/MyDialogLinear;

.field public c0:Landroid/widget/ImageView;

.field public d0:Landroidx/appcompat/widget/AppCompatTextView;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/view/MyRoundFrame;

.field public l0:Landroid/widget/FrameLayout;

.field public m0:Landroid/view/View;

.field public n0:Landroid/view/View;

.field public o0:Landroid/view/View;

.field public p0:Landroid/view/View;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

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
    new-instance v0, Lcom/mycompany/app/dialog/DialogGuideAds$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogGuideAds$1;-><init>(Lcom/mycompany/app/dialog/DialogGuideAds;)V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->b0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->k0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->k0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 36
    .line 37
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->c0:Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->l0:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->m0:Landroid/view/View;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->n0:Landroid/view/View;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->o0:Landroid/view/View;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->p0:Landroid/view/View;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideAds;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
