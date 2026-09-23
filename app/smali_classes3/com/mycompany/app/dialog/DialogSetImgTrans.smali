.class public Lcom/mycompany/app/dialog/DialogSetImgTrans;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic t0:I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRoundLinear;

.field public e0:Lcom/mycompany/app/view/MyButtonText;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyButtonImage;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyRecyclerView;

.field public l0:Lcom/mycompany/app/view/MyLineText;

.field public m0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    .line 12
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->n0:Z

    .line 15
    .line 16
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->o0:Z

    .line 19
    .line 20
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->p0:Z

    .line 23
    .line 24
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->q0:Z

    .line 27
    .line 28
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->r0:Z

    .line 31
    .line 32
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->s0:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->s0:Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetImgTrans$1;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetImgTrans$1;-><init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->o0:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v3

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->o0:Z

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v1, v3

    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->p0:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    move v1, v2

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    move v1, v3

    .line 58
    :goto_3
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->q0:Z

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    move v1, v2

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move v1, v3

    .line 70
    :goto_4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->r0:Z

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    move v1, v2

    .line 80
    goto :goto_5

    .line 81
    :cond_6
    move v1, v3

    .line 82
    :goto_5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->s0:Z

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    move v3, v2

    .line 92
    :cond_7
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->n0:Z

    .line 96
    .line 97
    if-eqz v0, :cond_a

    .line 98
    .line 99
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->o0:Z

    .line 100
    .line 101
    if-nez v0, :cond_a

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->p0:Z

    .line 104
    .line 105
    if-nez v0, :cond_a

    .line 106
    .line 107
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->q0:Z

    .line 108
    .line 109
    if-nez v0, :cond_a

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->r0:Z

    .line 112
    .line 113
    if-nez v0, :cond_a

    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->s0:Z

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 121
    .line 122
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 123
    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    const v1, -0x7f7f80

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_9
    const v1, -0x252526

    .line 131
    .line 132
    .line 133
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 143
    .line 144
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 145
    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    const v1, -0x50506

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_b
    const v1, -0xe19938

    .line 153
    .line 154
    .line 155
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    .line 163
    .line 164
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->d0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->d0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 83
    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 90
    .line 91
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 101
    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 108
    .line 109
    :cond_b
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 112
    .line 113
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 114
    .line 115
    .line 116
    return-void
.end method
