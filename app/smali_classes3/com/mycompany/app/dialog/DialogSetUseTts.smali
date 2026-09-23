.class public Lcom/mycompany/app/dialog/DialogSetUseTts;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic j0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyButtonImage;

.field public f0:Lcom/mycompany/app/view/MyRecyclerView;

.field public g0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public h0:Lcom/mycompany/app/dialog/DialogSetTts;

.field public i0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    sget-boolean p1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->i0:Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetUseTts$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetUseTts$1;-><init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->i0:Z

    .line 10
    .line 11
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->i0:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->h0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->h0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 69
    .line 70
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->b0:Landroid/content/Context;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 75
    .line 76
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
