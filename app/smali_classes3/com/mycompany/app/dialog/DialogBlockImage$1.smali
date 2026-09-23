.class Lcom/mycompany/app/dialog/DialogBlockImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBlockImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage$1;->c:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage$1;->c:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyDialogRelative;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/high16 v3, 0x430c0000    # 140.0f

    .line 15
    .line 16
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    float-to-int v3, v3

    .line 21
    new-instance v4, Lcom/mycompany/app/view/MyRoundImage;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    const/4 v7, -0x1

    .line 38
    invoke-direct {v6, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 42
    .line 43
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 44
    .line 45
    .line 46
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 47
    .line 48
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    .line 62
    .line 63
    const/4 v8, -0x2

    .line 64
    invoke-virtual {v2, v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 65
    .line 66
    .line 67
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 68
    .line 69
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 73
    .line 74
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v9, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 78
    .line 79
    .line 80
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 81
    .line 82
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    .line 87
    .line 88
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 89
    .line 90
    int-to-float v5, v5

    .line 91
    const/high16 v10, 0x40000000    # 2.0f

    .line 92
    .line 93
    div-float/2addr v5, v10

    .line 94
    invoke-virtual {v8, v5}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 95
    .line 96
    .line 97
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    .line 99
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 100
    .line 101
    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 107
    .line 108
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 109
    .line 110
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 111
    .line 112
    invoke-virtual {v9, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 121
    .line 122
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    .line 124
    .line 125
    sget v10, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 126
    .line 127
    int-to-float v10, v10

    .line 128
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorRadius(F)V

    .line 129
    .line 130
    .line 131
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    .line 133
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 134
    .line 135
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    .line 137
    .line 138
    const v11, 0x800055

    .line 139
    .line 140
    .line 141
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    .line 143
    invoke-virtual {v9, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    new-instance v10, Lcom/mycompany/app/view/MyRecyclerView;

    .line 147
    .line 148
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 152
    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    invoke-virtual {v10, v11}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 156
    .line 157
    .line 158
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v12, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    const/high16 v11, 0x3f800000    # 1.0f

    .line 164
    .line 165
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 166
    .line 167
    invoke-virtual {v3, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance v11, Lcom/mycompany/app/view/MyLineText;

    .line 171
    .line 172
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    const/16 v1, 0x11

    .line 176
    .line 177
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    .line 179
    .line 180
    const/high16 v1, 0x41800000    # 16.0f

    .line 181
    .line 182
    invoke-virtual {v11, v6, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 183
    .line 184
    .line 185
    sget v1, Lnet/kaki87/soul2/testing/R$string;->refresh:I

    .line 186
    .line 187
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    .line 189
    .line 190
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 191
    .line 192
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 193
    .line 194
    .line 195
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 196
    .line 197
    invoke-virtual {v3, v11, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 198
    .line 199
    .line 200
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 201
    .line 202
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 203
    .line 204
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 205
    .line 206
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 207
    .line 208
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

    .line 209
    .line 210
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 211
    .line 212
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 215
    .line 216
    if-nez v1, :cond_1

    .line 217
    .line 218
    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockImage$2;

    .line 220
    .line 221
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockImage$2;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    .line 226
    .line 227
    return-void
.end method
