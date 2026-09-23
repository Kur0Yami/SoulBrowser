.class public Lcom/mycompany/app/dialog/DialogCastGuide;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public final b0:I

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Landroid/widget/ImageView;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroid/widget/FrameLayout;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/view/MyRecyclerView;

.field public l0:Lcom/mycompany/app/main/MenuIconAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;I)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput p2, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->b0:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogCastGuide$1;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogCastGuide$1;-><init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final B(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final C(Landroid/widget/FrameLayout;ILjava/lang/String;I)V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/mycompany/app/view/MyCircleView;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/mycompany/app/view/MyRoundImage;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    .line 29
    .line 30
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const v4, -0x50506

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/high16 v4, -0x1000000

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const v4, -0xdededf

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const v4, -0x9090a

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyCircleView;->setColor(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    const/high16 p4, 0x41400000    # 12.0f

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v3, v4, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/16 p3, 0x28

    .line 76
    .line 77
    invoke-virtual {p0, p3}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    .line 83
    invoke-direct {p4, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    iput v4, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    .line 88
    invoke-virtual {v0, v1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    const/16 p3, 0x18

    .line 92
    .line 93
    invoke-virtual {p0, p3}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    .line 99
    invoke-direct {p4, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    const/16 p3, 0x8

    .line 103
    .line 104
    invoke-virtual {p0, p3}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 109
    .line 110
    iput v4, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    .line 112
    invoke-virtual {v0, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    .line 117
    const/4 p4, -0x1

    .line 118
    const/4 v1, -0x2

    .line 119
    invoke-direct {p3, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .line 121
    .line 122
    const/16 p4, 0x2c

    .line 123
    .line 124
    invoke-virtual {p0, p4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput v2, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 129
    .line 130
    invoke-virtual {v0, v3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    .line 135
    const/16 v2, 0x40

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-direct {p3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 145
    .line 146
    .line 147
    move-result p4

    .line 148
    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    .line 150
    const/16 p4, 0x48

    .line 151
    .line 152
    invoke-virtual {p0, p4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 153
    .line 154
    .line 155
    move-result p4

    .line 156
    mul-int/2addr p4, p2

    .line 157
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->l0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->D()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->l0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 36
    .line 37
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->d0:Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 52
    .line 53
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
