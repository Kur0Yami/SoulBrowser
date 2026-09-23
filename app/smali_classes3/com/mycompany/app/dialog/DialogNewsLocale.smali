.class public Lcom/mycompany/app/dialog/DialogNewsLocale;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;,
        Lcom/mycompany/app/dialog/DialogNewsLocale$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogNewsLocale$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic S0:I


# instance fields
.field public A0:I

.field public B0:I

.field public C0:Z

.field public D0:Z

.field public E0:Lcom/mycompany/app/view/MyWebSafe;

.field public F0:Z

.field public G0:Z

.field public H0:Z

.field public I0:Ljava/lang/String;

.field public J0:Ljava/lang/String;

.field public K0:Ljava/lang/String;

.field public L0:Z

.field public M0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public N0:Z

.field public O0:Z

.field public P0:Ljava/lang/String;

.field public Q0:Ljava/lang/String;

.field public R0:Ljava/lang/String;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

.field public d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

.field public e0:[Ljava/lang/String;

.field public f0:I

.field public g0:I

.field public h0:Lcom/mycompany/app/view/MyDialogRelative;

.field public i0:Lcom/mycompany/app/view/MyEditPure;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyRoundView;

.field public l0:Lcom/mycompany/app/view/MyButtonImage;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Lcom/mycompany/app/view/MyCoverView;

.field public o0:Landroid/view/View;

.field public p0:Lcom/mycompany/app/view/MyRecyclerView;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

.field public s0:Ljava/util/List;

.field public t0:Ljava/util/ArrayList;

.field public u0:Lcom/mycompany/app/main/MainLangAdapter;

.field public v0:Lcom/mycompany/app/view/MyManagerLinear;

.field public w0:Z

.field public x0:Z

.field public y0:Lcom/mycompany/app/main/MainTransLocale;

.field public z0:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;[Ljava/lang/String;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->c0:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->e0:[Ljava/lang/String;

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->f0:I

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->g0:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogNewsLocale$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogNewsLocale;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->H0:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->H0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsLocale$19;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$19;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->H0:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->H0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsLocale$20;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$20;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->I()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/mycompany/app/main/MainTransLocale;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->s0:Ljava/util/List;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->t0:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v8, Lcom/mycompany/app/dialog/DialogNewsLocale$14;

    .line 29
    .line 30
    invoke-direct {v8, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$14;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/main/MainTransLocale;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/view/MyDialogRelative;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;Lcom/mycompany/app/main/MainTransLocale$TransLocaleListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale$15;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$15;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 10
    .line 11
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_trans_view:I

    .line 12
    .line 13
    new-instance v4, Lcom/mycompany/app/view/MyDialogRelative;

    .line 14
    .line 15
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Lcom/mycompany/app/view/MyRoundView;

    .line 30
    .line 31
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyRoundView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 35
    .line 36
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    invoke-direct {v8, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v2}, Landroid/view/View;->setId(I)V

    .line 45
    .line 46
    .line 47
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 50
    .line 51
    .line 52
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    const/4 v10, -0x2

    .line 55
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 56
    .line 57
    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const/16 v10, 0x15

    .line 61
    .line 62
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    .line 64
    .line 65
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 66
    .line 67
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 79
    .line 80
    .line 81
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 82
    .line 83
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 92
    .line 93
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 94
    .line 95
    invoke-virtual {v8, v9, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 96
    .line 97
    .line 98
    sget-boolean v13, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 99
    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    const v13, -0x50506

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const v13, -0xc6b655

    .line 107
    .line 108
    .line 109
    :goto_0
    const/high16 v14, 0x40000000    # 2.0f

    .line 110
    .line 111
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    float-to-int v14, v14

    .line 116
    new-instance v15, Lcom/mycompany/app/view/MyCoverView;

    .line 117
    .line 118
    sget v10, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 119
    .line 120
    invoke-direct {v15, v1, v13, v14, v10}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v15, v12}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 127
    .line 128
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 129
    .line 130
    invoke-virtual {v8, v15, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .line 146
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 149
    .line 150
    invoke-direct {v13, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    const/16 v7, 0x11

    .line 154
    .line 155
    invoke-virtual {v13, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 173
    .line 174
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 175
    .line 176
    invoke-virtual {v8, v3, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 177
    .line 178
    .line 179
    new-instance v8, Lcom/mycompany/app/view/MyEditPure;

    .line 180
    .line 181
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    const/16 v11, 0x10

    .line 185
    .line 186
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    .line 188
    .line 189
    const/4 v13, 0x1

    .line 190
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 191
    .line 192
    .line 193
    const/4 v14, 0x3

    .line 194
    invoke-virtual {v8, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 195
    .line 196
    .line 197
    const/high16 v14, 0x41800000    # 16.0f

    .line 198
    .line 199
    invoke-virtual {v8, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    .line 201
    .line 202
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    const/16 v7, 0x1d

    .line 205
    .line 206
    if-lt v14, v7, :cond_2

    .line 207
    .line 208
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 209
    .line 210
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 211
    .line 212
    .line 213
    :cond_2
    sget v7, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 214
    .line 215
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 216
    .line 217
    .line 218
    const v7, -0x7e7e7f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 222
    .line 223
    .line 224
    const v7, 0x10000003

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 231
    .line 232
    .line 233
    const/4 v7, 0x0

    .line 234
    invoke-virtual {v8, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .line 236
    .line 237
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    .line 239
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 240
    .line 241
    const/4 v12, -0x1

    .line 242
    invoke-direct {v7, v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    .line 247
    .line 248
    const/high16 v2, 0x41a00000    # 20.0f

    .line 249
    .line 250
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    float-to-int v2, v2

    .line 255
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    invoke-static {v1, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    .line 268
    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 272
    .line 273
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 274
    .line 275
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 276
    .line 277
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 278
    .line 279
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .line 281
    .line 282
    new-instance v5, Landroid/view/View;

    .line 283
    .line 284
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    const/16 v7, 0x8

    .line 288
    .line 289
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    const/high16 v7, 0x43020000    # 130.0f

    .line 293
    .line 294
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    float-to-int v7, v7

    .line 299
    const/high16 v11, 0x41c00000    # 24.0f

    .line 300
    .line 301
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    float-to-int v11, v11

    .line 306
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    .line 308
    invoke-direct {v12, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    .line 310
    .line 311
    const/16 v7, 0x15

    .line 312
    .line 313
    invoke-virtual {v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    .line 315
    .line 316
    const/16 v7, 0xc

    .line 317
    .line 318
    invoke-virtual {v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    .line 320
    .line 321
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 322
    .line 323
    iput v11, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 324
    .line 325
    invoke-virtual {v4, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .line 327
    .line 328
    new-instance v11, Lcom/mycompany/app/view/MyLineText;

    .line 329
    .line 330
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    const/16 v1, 0x11

    .line 334
    .line 335
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 336
    .line 337
    .line 338
    const/high16 v1, 0x41800000    # 16.0f

    .line 339
    .line 340
    invoke-virtual {v11, v13, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 341
    .line 342
    .line 343
    sget v1, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 344
    .line 345
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    .line 347
    .line 348
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 349
    .line 350
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 351
    .line 352
    .line 353
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    .line 355
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 356
    .line 357
    const/4 v13, -0x1

    .line 358
    invoke-direct {v1, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    .line 366
    .line 367
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 368
    .line 369
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->i0:Lcom/mycompany/app/view/MyEditPure;

    .line 370
    .line 371
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 372
    .line 373
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->k0:Lcom/mycompany/app/view/MyRoundView;

    .line 374
    .line 375
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 376
    .line 377
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 378
    .line 379
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 380
    .line 381
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 382
    .line 383
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 384
    .line 385
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 386
    .line 387
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 388
    .line 389
    if-nez v1, :cond_3

    .line 390
    .line 391
    :goto_1
    return-void

    .line 392
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$2;

    .line 393
    .line 394
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$2;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    .line 399
    .line 400
    return-void
.end method

.method public static E(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->t0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-ge v2, v1, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    check-cast v5, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v6, v5, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 34
    .line 35
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    if-ltz v6, :cond_3

    .line 40
    .line 41
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-lt v6, v8, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    :cond_3
    :goto_1
    iput-object v3, v5, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    iget-object v3, v5, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 65
    .line 66
    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, v5, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 71
    .line 72
    :cond_4
    iput v4, v5, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->k:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->s0:Ljava/util/List;

    .line 76
    .line 77
    if-eqz v0, :cond_c

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_c

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 101
    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    iget v2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    if-eq v2, v5, :cond_8

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_8
    iget v2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 112
    .line 113
    add-int/lit16 v2, v2, -0x3e8

    .line 114
    .line 115
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 116
    .line 117
    if-eqz v5, :cond_a

    .line 118
    .line 119
    if-ltz v2, :cond_a

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-lt v2, v6, :cond_9

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_9
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/String;

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_a
    :goto_3
    move-object v2, v3

    .line 136
    :goto_4
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_b

    .line 143
    .line 144
    iget-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 145
    .line 146
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 147
    .line 148
    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 153
    .line 154
    :cond_b
    iput v4, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catch_0
    :cond_c
    :goto_5
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->M0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->M0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget v3, p1, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 41
    .line 42
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object v0, p1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 49
    .line 50
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->g0:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->g0:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->C0:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$12;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$12;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->g2()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "ko"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->L0:Z

    .line 44
    .line 45
    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_color_18:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_dark_18:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_black_18:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->G(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->C0:Z

    .line 57
    .line 58
    iput v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 59
    .line 60
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 61
    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_1
    return-void

    .line 79
    :cond_5
    const/16 v1, 0x8

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
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
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTransLocale;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->F()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    iput-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 28
    .line 29
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 39
    .line 40
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->k0:Lcom/mycompany/app/view/MyRoundView;

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundView;->a()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->k0:Lcom/mycompany/app/view/MyRoundView;

    .line 57
    .line 58
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 84
    .line 85
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 86
    .line 87
    if-eqz v1, :cond_9

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 93
    .line 94
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    if-eqz v1, :cond_a

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 102
    .line 103
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 104
    .line 105
    if-eqz v1, :cond_b

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainLangAdapter;->d()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iput v3, v1, Lcom/mycompany/app/main/MainLangAdapter;->q:I

    .line 112
    .line 113
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 114
    .line 115
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 116
    .line 117
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 118
    .line 119
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->i:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->j:Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;

    .line 122
    .line 123
    iget-object v3, v1, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 124
    .line 125
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 126
    .line 127
    .line 128
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 129
    .line 130
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 131
    .line 132
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 133
    .line 134
    if-eqz v1, :cond_d

    .line 135
    .line 136
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->F0:Z

    .line 137
    .line 138
    if-eqz v3, :cond_c

    .line 139
    .line 140
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->F0:Z

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 143
    .line 144
    .line 145
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 148
    .line 149
    .line 150
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 151
    .line 152
    :cond_d
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 153
    .line 154
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 155
    .line 156
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->c0:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 157
    .line 158
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 159
    .line 160
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->e0:[Ljava/lang/String;

    .line 161
    .line 162
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->i0:Lcom/mycompany/app/view/MyEditPure;

    .line 163
    .line 164
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 165
    .line 166
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->s0:Ljava/util/List;

    .line 167
    .line 168
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->t0:Ljava/util/ArrayList;

    .line 169
    .line 170
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->v0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 171
    .line 172
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 173
    .line 174
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->I0:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 177
    .line 178
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale;->K0:Ljava/lang/String;

    .line 179
    .line 180
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 181
    .line 182
    .line 183
    return-void
.end method
