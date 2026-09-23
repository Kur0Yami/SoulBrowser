.class public Lcom/mycompany/app/dialog/DialogSetFull;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;
    }
.end annotation


# static fields
.field public static final synthetic y0:I


# instance fields
.field public final a0:I

.field public b0:Lcom/mycompany/app/main/MainActivity;

.field public c0:Landroid/content/Context;

.field public d0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public g0:Lcom/mycompany/app/view/MyButtonRelative;

.field public h0:Landroid/widget/ImageView;

.field public i0:Lcom/mycompany/app/view/MyLineImage;

.field public j0:Lcom/mycompany/app/view/MyLineImage;

.field public k0:Lcom/mycompany/app/view/MyLineImage;

.field public l0:Lcom/mycompany/app/view/MyLineImage;

.field public m0:Landroid/view/View;

.field public n0:Lcom/mycompany/app/view/MyRecyclerView;

.field public o0:Lcom/mycompany/app/view/MyLineText;

.field public p0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:Z

.field public u0:Z

.field public v0:I

.field public w0:Lcom/mycompany/app/view/GlideRequests;

.field public final x0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetFull$8;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetFull$8;-><init>(Lcom/mycompany/app/dialog/DialogSetFull;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->x0:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->c0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetFull;->d0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 20
    .line 21
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->q0:Z

    .line 24
    .line 25
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->r0:Z

    .line 28
    .line 29
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->s0:Z

    .line 32
    .line 33
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->t0:Z

    .line 36
    .line 37
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 38
    .line 39
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 40
    .line 41
    add-int/2addr p1, p2

    .line 42
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->a0:I

    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetFull$1;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetFull$1;-><init>(Lcom/mycompany/app/dialog/DialogSetFull;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->f0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :cond_1
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->f0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->m0:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->f0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->m0:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final C(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->h0:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->u0:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetFull;->a0:I

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 18
    .line 19
    if-gtz v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->u0:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 28
    .line 29
    add-int/2addr v1, v2

    .line 30
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 31
    .line 32
    if-lt v1, v3, :cond_2

    .line 33
    .line 34
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetFull;->u0:Z

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->q0:Z

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 44
    .line 45
    add-int/2addr v1, v3

    .line 46
    int-to-float v1, v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->s0:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 55
    .line 56
    int-to-float v1, v3

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 62
    .line 63
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 64
    .line 65
    int-to-float v1, v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 71
    .line 72
    int-to-float v1, v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->s0:Z

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 87
    .line 88
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 89
    .line 90
    sub-int/2addr v1, v3

    .line 91
    int-to-float v1, v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->r0:Z

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->t0:Z

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 104
    .line 105
    neg-int v1, v3

    .line 106
    int-to-float v1, v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 112
    .line 113
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 114
    .line 115
    neg-int v1, v1

    .line 116
    int-to-float v1, v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->t0:Z

    .line 122
    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 132
    .line 133
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->v0:I

    .line 134
    .line 135
    sub-int/2addr v3, v1

    .line 136
    int-to-float v1, v3

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    .line 139
    .line 140
    :goto_2
    if-eqz p1, :cond_9

    .line 141
    .line 142
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->x0:Ljava/lang/Runnable;

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->h0:Landroid/widget/ImageView;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->h0:Landroid/widget/ImageView;

    .line 152
    .line 153
    const-wide/16 v1, 0x14

    .line 154
    .line 155
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_3
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->c0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->g0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonRelative;->f()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->g0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->i0:Lcom/mycompany/app/view/MyLineImage;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->i0:Lcom/mycompany/app/view/MyLineImage;

    .line 42
    .line 43
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->j0:Lcom/mycompany/app/view/MyLineImage;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->j0:Lcom/mycompany/app/view/MyLineImage;

    .line 51
    .line 52
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 60
    .line 61
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 69
    .line 70
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->n0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->n0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 78
    .line 79
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull;->p0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 89
    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->p0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 96
    .line 97
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->c0:Landroid/content/Context;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->d0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->f0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->h0:Landroid/widget/ImageView;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFull;->m0:Landroid/view/View;

    .line 108
    .line 109
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 110
    .line 111
    .line 112
    return-void
.end method
