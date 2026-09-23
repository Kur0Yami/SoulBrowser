.class Lcom/mycompany/app/image/ImageTransView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageTransView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageTransView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageTransView$10;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/image/ImageTransView;->J:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView$10;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyRoundFrame;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 28
    .line 29
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/view/MyArrowView;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const/4 v2, -0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    sget v2, Lnet/kaki87/soul2/testing/R$string;->long_move_guide:I

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 75
    .line 76
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 77
    .line 78
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 79
    .line 80
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    const/16 v2, 0x11

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    const/high16 v3, 0x41600000    # 14.0f

    .line 96
    .line 97
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 101
    .line 102
    const v2, -0xe4a1e0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyArrowView;->setSnack(I)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 116
    .line 117
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    const v2, 0x44e0e0e0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_white_18:I

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    new-instance v2, Lcom/mycompany/app/image/ImageTransView$6;

    .line 145
    .line 146
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageTransView$6;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 153
    .line 154
    new-instance v2, Lcom/mycompany/app/image/ImageTransView$7;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 163
    .line 164
    new-instance v2, Lcom/mycompany/app/image/ImageTransView$8;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageTransView$8;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 170
    .line 171
    .line 172
    :cond_2
    :goto_0
    return-void
.end method
