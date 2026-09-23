.class Lcom/mycompany/app/dialog/DialogSetPms$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPms;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPms;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$1;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms$1;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 22
    .line 23
    .line 24
    const/4 v5, -0x2

    .line 25
    const/4 v6, -0x1

    .line 26
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 30
    .line 31
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 35
    .line 36
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    .line 38
    .line 39
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 40
    .line 41
    int-to-float v7, v7

    .line 42
    const/high16 v8, 0x40000000    # 2.0f

    .line 43
    .line 44
    div-float/2addr v7, v8

    .line 45
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 46
    .line 47
    .line 48
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 51
    .line 52
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const v8, 0x800013

    .line 56
    .line 57
    .line 58
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    .line 60
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    invoke-direct {v7, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    .line 73
    .line 74
    const/16 v8, 0x10

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    .line 82
    .line 83
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 84
    .line 85
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 86
    .line 87
    .line 88
    const/high16 v8, 0x41800000    # 16.0f

    .line 89
    .line 90
    invoke-virtual {v7, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 91
    .line 92
    .line 93
    const/high16 v9, 0x42900000    # 72.0f

    .line 94
    .line 95
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    float-to-int v9, v9

    .line 100
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v10, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 106
    .line 107
    .line 108
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 109
    .line 110
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    invoke-static {v1, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .line 123
    invoke-direct {v11, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    .line 125
    .line 126
    const/high16 v9, 0x3f800000    # 1.0f

    .line 127
    .line 128
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 129
    .line 130
    invoke-virtual {v3, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 134
    .line 135
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x11

    .line 139
    .line 140
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 144
    .line 145
    .line 146
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 147
    .line 148
    invoke-virtual {v9, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 152
    .line 153
    .line 154
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 155
    .line 156
    invoke-virtual {v3, v9, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 157
    .line 158
    .line 159
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPms;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 160
    .line 161
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetPms;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 162
    .line 163
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetPms;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 164
    .line 165
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetPms;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogSetPms;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 168
    .line 169
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 172
    .line 173
    if-nez v1, :cond_1

    .line 174
    .line 175
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPms$2;

    .line 177
    .line 178
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPms$2;-><init>(Lcom/mycompany/app/dialog/DialogSetPms;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    return-void
.end method
