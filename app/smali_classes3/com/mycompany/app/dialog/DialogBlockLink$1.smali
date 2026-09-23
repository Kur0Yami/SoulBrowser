.class Lcom/mycompany/app/dialog/DialogBlockLink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBlockLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$1;->c:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink$1;->c:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

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
    const/high16 v4, 0x42900000    # 72.0f

    .line 15
    .line 16
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 29
    .line 30
    .line 31
    const/4 v6, -0x1

    .line 32
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    .line 44
    .line 45
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 46
    .line 47
    int-to-float v8, v8

    .line 48
    const/high16 v9, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr v8, v9

    .line 51
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 57
    .line 58
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const v9, 0x800013

    .line 62
    .line 63
    .line 64
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x2

    .line 76
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 83
    .line 84
    .line 85
    const/high16 v9, 0x41800000    # 16.0f

    .line 86
    .line 87
    invoke-virtual {v8, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 88
    .line 89
    .line 90
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    .line 92
    const/4 v10, -0x2

    .line 93
    invoke-direct {v9, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    const/16 v10, 0x10

    .line 97
    .line 98
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    .line 100
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 101
    .line 102
    .line 103
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 104
    .line 105
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 117
    .line 118
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    .line 120
    .line 121
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    .line 123
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 124
    .line 125
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .line 127
    .line 128
    const v10, 0x800015

    .line 129
    .line 130
    .line 131
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    .line 133
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 134
    .line 135
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    .line 148
    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    const/high16 v5, 0x3f800000    # 1.0f

    .line 152
    .line 153
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 154
    .line 155
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 159
    .line 160
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 161
    .line 162
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 167
    .line 168
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 169
    .line 170
    if-nez v1, :cond_1

    .line 171
    .line 172
    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockLink$2;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockLink$2;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    .line 180
    .line 181
    return-void
.end method
