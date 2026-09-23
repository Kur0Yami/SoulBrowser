.class Lcom/mycompany/app/dialog/DialogGreeting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$1;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting$1;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

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
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 22
    .line 23
    .line 24
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 43
    .line 44
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    const v7, 0x800013

    .line 48
    .line 49
    .line 50
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    .line 52
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 53
    .line 54
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v8, 0x2

    .line 62
    invoke-static {v1, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 67
    .line 68
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69
    .line 70
    .line 71
    const/high16 v8, 0x41800000    # 16.0f

    .line 72
    .line 73
    const/4 v9, 0x1

    .line 74
    invoke-virtual {v6, v9, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 75
    .line 76
    .line 77
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    .line 79
    const/4 v10, -0x2

    .line 80
    invoke-direct {v8, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    .line 85
    sget v7, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 86
    .line 87
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 88
    .line 89
    .line 90
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 91
    .line 92
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Landroid/widget/FrameLayout;

    .line 99
    .line 100
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    .line 105
    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 109
    .line 110
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 111
    .line 112
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 113
    .line 114
    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 118
    .line 119
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    float-to-int v7, v7

    .line 124
    const/high16 v8, 0x40000000    # 2.0f

    .line 125
    .line 126
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    float-to-int v8, v8

    .line 131
    new-instance v10, Lcom/mycompany/app/view/MyProgressBar;

    .line 132
    .line 133
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    iput-boolean v9, v10, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 137
    .line 138
    iput-boolean v9, v10, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 139
    .line 140
    iput v7, v10, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 141
    .line 142
    iput-boolean v9, v10, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 143
    .line 144
    const/16 v7, 0x8

    .line 145
    .line 146
    invoke-virtual {v10, v7}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v10, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 150
    .line 151
    .line 152
    const/high16 v8, 0x43020000    # 130.0f

    .line 153
    .line 154
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    float-to-int v8, v8

    .line 159
    const/high16 v9, 0x41c00000    # 24.0f

    .line 160
    .line 161
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    float-to-int v9, v9

    .line 166
    new-instance v11, Landroid/view/View;

    .line 167
    .line 168
    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .line 176
    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    const v8, 0x800055

    .line 180
    .line 181
    .line 182
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    .line 184
    invoke-virtual {v3, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 188
    .line 189
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 193
    .line 194
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    .line 199
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 200
    .line 201
    invoke-direct {v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    const/16 v5, 0xc

    .line 205
    .line 206
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 213
    .line 214
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogGreeting;->f0:Landroid/widget/ImageView;

    .line 215
    .line 216
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogGreeting;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 217
    .line 218
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogGreeting;->h0:Landroid/widget/FrameLayout;

    .line 219
    .line 220
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 221
    .line 222
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 223
    .line 224
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogGreeting;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 227
    .line 228
    if-nez v1, :cond_1

    .line 229
    .line 230
    :goto_0
    return-void

    .line 231
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogGreeting$2;

    .line 232
    .line 233
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGreeting$2;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    .line 238
    .line 239
    return-void
.end method
