.class public Lcom/mycompany/app/dialog/DialogSetRate;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic j0:I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRoundItem;

.field public e0:Lcom/mycompany/app/view/MySwitchView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyRecyclerView;

.field public h0:Lcom/mycompany/app/main/MainSelectAdapter;

.field public i0:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetRate;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetRate;->i0:I

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetRate$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetRate$1;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

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
.method public final B()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 11
    .line 12
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, -0x1

    .line 23
    :goto_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->i0:I

    .line 24
    .line 25
    if-ne v1, v0, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->i0:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    :goto_2
    return-void

    .line 35
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetRate$7;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSetRate$7;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->d0:Lcom/mycompany/app/view/MyRoundItem;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->d0:Lcom/mycompany/app/view/MyRoundItem;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySwitchView;->a()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainSelectAdapter;->w()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 54
    .line 55
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetRate;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
