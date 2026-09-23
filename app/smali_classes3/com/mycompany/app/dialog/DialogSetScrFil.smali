.class public Lcom/mycompany/app/dialog/DialogSetScrFil;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic p0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRecyclerView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyLineText;

.field public h0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public i0:Lcom/mycompany/app/view/MyPopupMenu;

.field public j0:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public k0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:F


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 13
    .line 14
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 17
    .line 18
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 19
    .line 20
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->m0:I

    .line 21
    .line 22
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 23
    .line 24
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->n0:I

    .line 25
    .line 26
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 27
    .line 28
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->o0:F

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetScrFil$1;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetScrFil$1;-><init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final B()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->k0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->k0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()Z
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->m0:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 8
    .line 9
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->n0:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 14
    .line 15
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->o0:F

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public final E(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 8
    .line 9
    const-string v0, "mScrFilUse"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->b0:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v3, v2, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->b0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->D()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 32
    .line 33
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->m0:I

    .line 34
    .line 35
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 36
    .line 37
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->n0:I

    .line 38
    .line 39
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 40
    .line 41
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->o0:F

    .line 42
    .line 43
    :cond_2
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->dismiss()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->m0:I

    .line 2
    .line 3
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->n0:I

    .line 6
    .line 7
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->o0:F

    .line 10
    .line 11
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->b0:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "mScrFilAlpha"

    .line 26
    .line 27
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "mScrFilColor"

    .line 33
    .line 34
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "mScrFilPos"

    .line 40
    .line 41
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 10
    .line 11
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 17
    .line 18
    move v0, v3

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->D()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->F()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v3, v0

    .line 30
    :goto_0
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->B()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-interface {v1, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->C()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 66
    .line 67
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 75
    .line 76
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 84
    .line 85
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 93
    .line 94
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 102
    .line 103
    :cond_9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->b0:Landroid/content/Context;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 112
    .line 113
    .line 114
    return-void
.end method
