.class Lcom/mycompany/app/setting/SettingVideoSub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$1;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$1;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->M1:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    const/high16 v2, 0x41400000    # 12.0f

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    float-to-int v2, v2

    .line 22
    new-instance v3, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    const/4 v7, -0x2

    .line 35
    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 39
    .line 40
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 41
    .line 42
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-direct {v2, v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .line 62
    .line 63
    const/high16 v8, 0x41800000    # 16.0f

    .line 64
    .line 65
    invoke-virtual {v2, v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 66
    .line 67
    .line 68
    sget v9, Lnet/kaki87/soul2/testing/R$string;->size:I

    .line 69
    .line 70
    invoke-static {v2, v9, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-direct {v9, v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 91
    .line 92
    .line 93
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 94
    .line 95
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    .line 100
    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    .line 102
    .line 103
    const v5, 0x800005

    .line 104
    .line 105
    .line 106
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    .line 108
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 109
    .line 110
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/mycompany/app/view/MyLineFrame;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 124
    .line 125
    .line 126
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 127
    .line 128
    invoke-virtual {v3, v1, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 129
    .line 130
    .line 131
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 137
    .line 138
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    .line 140
    .line 141
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 142
    .line 143
    invoke-virtual {v1, v4, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 144
    .line 145
    .line 146
    new-instance v10, Landroid/widget/SeekBar;

    .line 147
    .line 148
    invoke-direct {v10, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .line 153
    invoke-direct {v11, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    .line 155
    .line 156
    const v6, 0x800013

    .line 157
    .line 158
    .line 159
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    .line 161
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 162
    .line 163
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 164
    .line 165
    .line 166
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 167
    .line 168
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 180
    .line 181
    .line 182
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    .line 184
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 185
    .line 186
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 187
    .line 188
    .line 189
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    .line 191
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingVideoSub;->O1:Landroid/widget/LinearLayout;

    .line 195
    .line 196
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    iput-object v9, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 201
    .line 202
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 203
    .line 204
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingVideoSub;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 207
    .line 208
    if-nez v1, :cond_2

    .line 209
    .line 210
    :goto_0
    return-void

    .line 211
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoSub$2;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoSub$2;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    return-void
.end method
