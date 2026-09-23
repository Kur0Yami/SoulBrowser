.class Lcom/mycompany/app/video/VideoActivity$78$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$78;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$78;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$78$1;->c:Lcom/mycompany/app/video/VideoActivity$78;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$78$1;->c:Lcom/mycompany/app/video/VideoActivity$78;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$78;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebVideoProgress;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/high16 v3, 0x41a00000    # 20.0f

    .line 23
    .line 24
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    float-to-int v3, v3

    .line 29
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    const/16 v3, 0x10

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyFadeLinear;->setTouchable(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 49
    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->ic_sub_pos:I

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    const/high16 v6, 0x42100000    # 36.0f

    .line 67
    .line 68
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    float-to-int v6, v6

    .line 73
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .line 75
    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    const v6, 0x800013

    .line 79
    .line 80
    .line 81
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 82
    .line 83
    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    new-instance v5, Lcom/mycompany/app/view/MyTextView;

    .line 87
    .line 88
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const/high16 v7, 0x42b40000    # 90.0f

    .line 92
    .line 93
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    float-to-int v7, v7

    .line 98
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    .line 103
    .line 104
    const/high16 v7, 0x42200000    # 40.0f

    .line 105
    .line 106
    invoke-virtual {v5, v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 107
    .line 108
    .line 109
    const/4 v7, -0x1

    .line 110
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 114
    .line 115
    .line 116
    const/high16 v3, -0x1000000

    .line 117
    .line 118
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    .line 123
    const/4 v7, -0x2

    .line 124
    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    .line 129
    const/high16 v6, 0x41200000    # 10.0f

    .line 130
    .line 131
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    float-to-int v1, v1

    .line 136
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    .line 144
    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .line 146
    .line 147
    const/16 v3, 0x11

    .line 148
    .line 149
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    .line 151
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 152
    .line 153
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    iput-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 157
    .line 158
    iput-object v5, v0, Lcom/mycompany/app/video/VideoActivity;->F3:Lcom/mycompany/app/view/MyTextView;

    .line 159
    .line 160
    iput-boolean v4, v2, Lcom/mycompany/app/web/WebVideoProgress;->x:Z

    .line 161
    .line 162
    const/4 v1, 0x4

    .line 163
    iput v1, v2, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 164
    .line 165
    new-instance v1, Landroid/graphics/Paint;

    .line 166
    .line 167
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v1, v2, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v2, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 176
    .line 177
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v2, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 183
    .line 184
    const/high16 v3, 0x61000000

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Landroid/graphics/RectF;

    .line 190
    .line 191
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object v1, v2, Lcom/mycompany/app/web/WebVideoProgress;->H:Landroid/graphics/RectF;

    .line 195
    .line 196
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 197
    .line 198
    if-nez v0, :cond_2

    .line 199
    .line 200
    return-void

    .line 201
    :cond_2
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$78$1$1;

    .line 202
    .line 203
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$78$1$1;-><init>(Lcom/mycompany/app/video/VideoActivity$78$1;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    return-void
.end method
