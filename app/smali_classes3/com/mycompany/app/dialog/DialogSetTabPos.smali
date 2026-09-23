.class public Lcom/mycompany/app/dialog/DialogSetTabPos;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final C0:[I

.field public static final D0:[I


# instance fields
.field public A0:Lcom/mycompany/app/view/GlideRequests;

.field public B0:Z

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroid/widget/FrameLayout;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyButtonImage;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonRelative;

.field public j0:Lcom/mycompany/app/view/MyLineFrame;

.field public k0:Landroid/widget/ImageView;

.field public l0:Lcom/mycompany/app/view/MyLineImage;

.field public m0:Lcom/mycompany/app/view/MyLineImage;

.field public n0:Lcom/mycompany/app/view/MyLineImage;

.field public o0:Lcom/mycompany/app/view/MyLineImage;

.field public p0:Lcom/mycompany/app/view/MyLineImage;

.field public q0:Lcom/mycompany/app/view/MySelectView;

.field public r0:Lcom/mycompany/app/view/MyLineRelative;

.field public s0:Landroid/view/View;

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Lcom/mycompany/app/view/MyLineText;

.field public final w0:I

.field public x0:I

.field public y0:Lcom/mycompany/app/view/MyPopupMenu;

.field public z0:Lcom/mycompany/app/dialog/DialogCastGuide;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x3

    .line 6
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->C0:[I

    .line 11
    .line 12
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_show:I

    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$string;->above_top:I

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->below_top:I

    .line 17
    .line 18
    sget v3, Lnet/kaki87/soul2/testing/R$string;->above_bot:I

    .line 19
    .line 20
    sget v4, Lnet/kaki87/soul2/testing/R$string;->below_bot:I

    .line 21
    .line 22
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->D0:[I

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 17
    .line 18
    const/high16 p2, 0x41a00000    # 20.0f

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    float-to-int p1, p1

    .line 25
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->w0:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTabPos$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetTabPos$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetTabPos;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->w0:I

    .line 12
    .line 13
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetTabPos;->D0:[I

    .line 14
    .line 15
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 16
    .line 17
    aget v2, v2, v3

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->B0:Z

    .line 31
    .line 32
    new-instance p1, Landroid/transition/ChangeBounds;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$10;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogSetTabPos$10;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroid/transition/Scene;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 48
    .line 49
    invoke-direct {v2, v3}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    const/16 v3, 0x50

    .line 59
    .line 60
    const/16 v4, 0x30

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 66
    .line 67
    mul-int/lit8 v0, v1, 0x2

    .line 68
    .line 69
    invoke-static {v0, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 73
    .line 74
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 78
    .line 79
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 83
    .line 84
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 88
    .line 89
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyLineImage;->d(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v6, 0x2

    .line 94
    if-ne p1, v6, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 97
    .line 98
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 102
    .line 103
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 107
    .line 108
    mul-int/2addr v1, v6

    .line 109
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 113
    .line 114
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 118
    .line 119
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyLineImage;->d(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    const/4 v7, 0x3

    .line 124
    if-ne p1, v7, :cond_4

    .line 125
    .line 126
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 127
    .line 128
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 132
    .line 133
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 137
    .line 138
    mul-int/2addr v1, v6

    .line 139
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 143
    .line 144
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineImage;->d(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    if-ne p1, v2, :cond_5

    .line 154
    .line 155
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 156
    .line 157
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 161
    .line 162
    mul-int/lit8 v4, v1, 0x2

    .line 163
    .line 164
    invoke-static {v5, v4, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 168
    .line 169
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 173
    .line 174
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineImage;->d(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 184
    .line 185
    invoke-static {v1, v5, v4, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 189
    .line 190
    invoke-static {v5, v1, v3, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->C(IIILandroid/view/View;)V

    .line 191
    .line 192
    .line 193
    :goto_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 194
    .line 195
    if-nez p1, :cond_6

    .line 196
    .line 197
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 198
    .line 199
    const/16 v0, 0x8

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 210
    .line 211
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 216
    .line 217
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 226
    .line 227
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    :cond_7
    :goto_1
    return-void
.end method

.method public static C(IIILandroid/view/View;)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    .line 15
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16
    .line 17
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 20
    .line 21
    .line 22
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->z0:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCastGuide;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->z0:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->i0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonRelative;->f()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->i0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 80
    .line 81
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 82
    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 89
    .line 90
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->m0:Lcom/mycompany/app/view/MyLineImage;

    .line 91
    .line 92
    if-eqz v0, :cond_a

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->m0:Lcom/mycompany/app/view/MyLineImage;

    .line 98
    .line 99
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 100
    .line 101
    if-eqz v0, :cond_b

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 107
    .line 108
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 109
    .line 110
    if-eqz v0, :cond_c

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 116
    .line 117
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 118
    .line 119
    if-eqz v0, :cond_d

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineImage;->c()V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 125
    .line 126
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->r0:Lcom/mycompany/app/view/MyLineRelative;

    .line 127
    .line 128
    if-eqz v0, :cond_e

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->r0:Lcom/mycompany/app/view/MyLineRelative;

    .line 134
    .line 135
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 136
    .line 137
    if-eqz v0, :cond_f

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 140
    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 143
    .line 144
    :cond_f
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->b0:Landroid/content/Context;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->e0:Landroid/widget/FrameLayout;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 153
    .line 154
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->k0:Landroid/widget/ImageView;

    .line 155
    .line 156
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 157
    .line 158
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->s0:Landroid/view/View;

    .line 159
    .line 160
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 165
    .line 166
    .line 167
    return-void
.end method
