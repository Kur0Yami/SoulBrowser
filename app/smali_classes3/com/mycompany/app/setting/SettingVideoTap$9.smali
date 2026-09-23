.class Lcom/mycompany/app/setting/SettingVideoTap$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoTap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap$9;->c:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap$9;->c:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 25
    .line 26
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_8:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    const/4 v6, -0x2

    .line 43
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    const v7, 0x800053

    .line 47
    .line 48
    .line 49
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 60
    .line 61
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x1

    .line 65
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    .line 67
    .line 68
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    .line 75
    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-direct {v8, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    .line 83
    .line 84
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 85
    .line 86
    int-to-float v10, v10

    .line 87
    const/high16 v11, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 90
    .line 91
    .line 92
    const/high16 v10, 0x41800000    # 16.0f

    .line 93
    .line 94
    invoke-virtual {v8, v7, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v8, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 101
    .line 102
    .line 103
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-direct {v12, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    .line 107
    .line 108
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 109
    .line 110
    int-to-float v13, v13

    .line 111
    invoke-virtual {v12, v13, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12, v7, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .line 122
    invoke-direct {v10, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .line 124
    .line 125
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 126
    .line 127
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 128
    .line 129
    invoke-virtual {v4, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-direct {v10, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    .line 136
    .line 137
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 138
    .line 139
    int-to-float v13, v13

    .line 140
    invoke-virtual {v10, v13, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 141
    .line 142
    .line 143
    const/high16 v13, 0x41600000    # 14.0f

    .line 144
    .line 145
    invoke-virtual {v10, v7, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .line 153
    invoke-direct {v14, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .line 155
    .line 156
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 157
    .line 158
    sget v16, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 159
    .line 160
    add-int v15, v15, v16

    .line 161
    .line 162
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    .line 164
    invoke-virtual {v4, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    invoke-direct {v14, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    .line 171
    .line 172
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 173
    .line 174
    int-to-float v9, v9

    .line 175
    invoke-virtual {v14, v9, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v7, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .line 186
    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    .line 188
    .line 189
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 190
    .line 191
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 192
    .line 193
    invoke-virtual {v4, v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 197
    .line 198
    sget v2, Lnet/kaki87/soul2/testing/R$string;->swipe_guide_1:I

    .line 199
    .line 200
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 201
    .line 202
    .line 203
    sget v2, Lnet/kaki87/soul2/testing/R$string;->swipe_guide_2:I

    .line 204
    .line 205
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    .line 207
    .line 208
    sget v2, Lnet/kaki87/soul2/testing/R$string;->double_tap_guide_1:I

    .line 209
    .line 210
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    .line 212
    .line 213
    sget v2, Lnet/kaki87/soul2/testing/R$string;->double_tap_guide_2:I

    .line 214
    .line 215
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 219
    .line 220
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoTap$10;

    .line 221
    .line 222
    invoke-direct {v4, v1}, Lcom/mycompany/app/setting/SettingVideoTap$10;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 226
    .line 227
    .line 228
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 229
    .line 230
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoTap$11;

    .line 231
    .line 232
    invoke-direct {v4, v1}, Lcom/mycompany/app/setting/SettingVideoTap$11;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    .line 237
    .line 238
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoTap$12;

    .line 239
    .line 240
    invoke-direct {v2, v1}, Lcom/mycompany/app/setting/SettingVideoTap$12;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 247
    .line 248
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 249
    .line 250
    invoke-virtual {v2, v1, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 251
    .line 252
    .line 253
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    move-object/from16 v0, p0

    .line 255
    .line 256
    sget v1, Lcom/mycompany/app/setting/SettingVideoTap;->Z1:I

    .line 257
    .line 258
    return-void
.end method
