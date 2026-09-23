.class Lcom/mycompany/app/dialog/DialogSeekAudio$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekAudio$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekAudio$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekAudio$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekAudio$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekAudio$1;->c:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_seek_text:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, -0x2

    .line 25
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    const/high16 v8, 0x41400000    # 12.0f

    .line 29
    .line 30
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    float-to-int v8, v8

    .line 35
    const/4 v9, 0x0

    .line 36
    const/high16 v10, 0x41800000    # 16.0f

    .line 37
    .line 38
    invoke-static {v1, v9, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v12, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput v8, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 48
    .line 49
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 50
    .line 51
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    invoke-direct {v12, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v12, v2}, Landroid/view/View;->setId(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 69
    .line 70
    .line 71
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 72
    .line 73
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 74
    .line 75
    .line 76
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const/16 v9, 0x15

    .line 82
    .line 83
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    .line 85
    .line 86
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 89
    .line 90
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Landroid/widget/FrameLayout;

    .line 97
    .line 98
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 104
    .line 105
    invoke-direct {v8, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const/4 v9, 0x3

    .line 109
    invoke-virtual {v8, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 121
    .line 122
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    .line 124
    .line 125
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 126
    .line 127
    invoke-virtual {v3, v2, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    .line 129
    .line 130
    new-instance v8, Landroid/widget/SeekBar;

    .line 131
    .line 132
    invoke-direct {v8, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v9, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    const v6, 0x800013

    .line 141
    .line 142
    .line 143
    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    .line 145
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 146
    .line 147
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 148
    .line 149
    .line 150
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 151
    .line 152
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .line 164
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 165
    .line 166
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const v6, 0x800005

    .line 170
    .line 171
    .line 172
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    .line 174
    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 178
    .line 179
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 184
    .line 185
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 186
    .line 187
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 190
    .line 191
    if-nez v1, :cond_1

    .line 192
    .line 193
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekAudio$2;

    .line 195
    .line 196
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$2;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    .line 201
    .line 202
    return-void
.end method
