.class public Lcom/mycompany/app/dialog/DialogSetHead;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public final b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Landroid/widget/FrameLayout;

.field public e0:Landroid/view/View;

.field public f0:Lcom/mycompany/app/view/MyBarView;

.field public g0:Lcom/mycompany/app/view/MyRecyclerView;

.field public h0:Lcom/mycompany/app/view/MyLineText;

.field public i0:Lcom/mycompany/app/main/MainHeadAdapter;

.field public j0:I

.field public k0:I

.field public l0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetHead;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    .line 12
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->j0:I

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->Q:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->k0:I

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->R:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->l0:I

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetHead$1;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetHead$1;-><init>(Lcom/mycompany/app/dialog/DialogSetHead;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->f0:Lcom/mycompany/app/view/MyBarView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->e0:Landroid/view/View;

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->k0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->f0:Lcom/mycompany/app/view/MyBarView;

    .line 14
    .line 15
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->k0:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetHead;->f0:Lcom/mycompany/app/view/MyBarView;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetHead;->a0:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v11, 0x2

    .line 25
    iget v12, p0, Lcom/mycompany/app/dialog/DialogSetHead;->l0:I

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-virtual/range {v2 .. v12}, Lcom/mycompany/app/view/MyBarView;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZIIZII)V

    .line 35
    .line 36
    .line 37
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->f0:Lcom/mycompany/app/view/MyBarView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyBarView;->d()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->f0:Lcom/mycompany/app/view/MyBarView;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead;->i0:Lcom/mycompany/app/main/MainHeadAdapter;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    iput-object v1, v0, Lcom/mycompany/app/main/MainHeadAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/mycompany/app/main/MainHeadAdapter;->f:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->i0:Lcom/mycompany/app/main/MainHeadAdapter;

    .line 55
    .line 56
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->a0:Landroid/content/Context;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->d0:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHead;->e0:Landroid/view/View;

    .line 61
    .line 62
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 63
    .line 64
    .line 65
    return-void
.end method
