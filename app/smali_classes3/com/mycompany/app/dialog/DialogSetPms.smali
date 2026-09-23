.class public Lcom/mycompany/app/dialog/DialogSetPms;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic m0:I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyLineFrame;

.field public e0:Lcom/mycompany/app/view/MyRoundImage;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyRecyclerView;

.field public h0:Lcom/mycompany/app/view/MyLineText;

.field public i0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public j0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public k0:I

.field public l0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetPms;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetPms;->j0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 13
    .line 14
    iget p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 17
    .line 18
    iget p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 19
    .line 20
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetPms$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetPms$1;-><init>(Lcom/mycompany/app/dialog/DialogSetPms;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 63
    .line 64
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPms;->j0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 71
    .line 72
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
