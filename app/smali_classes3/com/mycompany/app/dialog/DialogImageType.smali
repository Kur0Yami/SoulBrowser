.class public Lcom/mycompany/app/dialog/DialogImageType;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public A0:Landroidx/appcompat/widget/AppCompatTextView;

.field public B0:Lcom/mycompany/app/view/MyButtonCheck;

.field public C0:Lcom/mycompany/app/view/MyLineText;

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

.field public c0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

.field public d0:I

.field public e0:I

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyButtonCheck;

.field public j0:Landroid/widget/LinearLayout;

.field public k0:Lcom/mycompany/app/view/MyLineFrame;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyButtonCheck;

.field public n0:Lcom/mycompany/app/view/MyLineFrame;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Lcom/mycompany/app/view/MyButtonCheck;

.field public q0:Lcom/mycompany/app/view/MyLineFrame;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Lcom/mycompany/app/view/MyButtonCheck;

.field public t0:Lcom/mycompany/app/view/MyLineFrame;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Lcom/mycompany/app/view/MyButtonCheck;

.field public w0:Lcom/mycompany/app/view/MyLineFrame;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public y0:Lcom/mycompany/app/view/MyButtonCheck;

.field public z0:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/data/DataUrl$ImgCntItem;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogImageType;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogImageType;->c0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogImageType$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogImageType$1;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->c0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 12
    .line 13
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget v2, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 22
    .line 23
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iget v3, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->b:I

    .line 28
    .line 29
    add-int/2addr v2, v3

    .line 30
    :cond_2
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 31
    .line 32
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    iget v3, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->c:I

    .line 37
    .line 38
    add-int/2addr v2, v3

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 40
    .line 41
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    iget v3, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 46
    .line 47
    add-int/2addr v2, v3

    .line 48
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 49
    .line 50
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    iget v3, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->e:I

    .line 55
    .line 56
    add-int/2addr v2, v3

    .line 57
    :cond_5
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 58
    .line 59
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 60
    .line 61
    if-eqz v3, :cond_6

    .line 62
    .line 63
    iget v0, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->f:I

    .line 64
    .line 65
    add-int/2addr v2, v0

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    iget v3, p0, Lcom/mycompany/app/dialog/DialogImageType;->d0:I

    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_7
    iget v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 78
    .line 79
    if-nez v0, :cond_9

    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 82
    .line 83
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 84
    .line 85
    if-eqz v2, :cond_8

    .line 86
    .line 87
    const v2, -0x7f7f80

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_8
    const v2, -0x252526

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 106
    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    const v1, -0x50506

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_a
    const v1, -0xe19938

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    .line 124
    .line 125
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->f0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->n0:Lcom/mycompany/app/view/MyLineFrame;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->n0:Lcom/mycompany/app/view/MyLineFrame;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 63
    .line 64
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 81
    .line 82
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->t0:Lcom/mycompany/app/view/MyLineFrame;

    .line 83
    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->t0:Lcom/mycompany/app/view/MyLineFrame;

    .line 90
    .line 91
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 92
    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 99
    .line 100
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->w0:Lcom/mycompany/app/view/MyLineFrame;

    .line 101
    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->w0:Lcom/mycompany/app/view/MyLineFrame;

    .line 108
    .line 109
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 110
    .line 111
    if-eqz v0, :cond_c

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 117
    .line 118
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 119
    .line 120
    if-eqz v0, :cond_d

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 126
    .line 127
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 128
    .line 129
    if-eqz v0, :cond_e

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 135
    .line 136
    :cond_e
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->c0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->j0:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogImageType;->z0:Landroid/widget/FrameLayout;

    .line 161
    .line 162
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 163
    .line 164
    .line 165
    return-void
.end method
