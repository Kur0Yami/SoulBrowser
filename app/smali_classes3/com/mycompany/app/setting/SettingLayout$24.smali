.class Lcom/mycompany/app/setting/SettingLayout$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$24;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$24;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->H2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 23
    .line 24
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_8:I

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    const/4 v5, -0x2

    .line 41
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    const v6, 0x800053

    .line 45
    .line 46
    .line 47
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 58
    .line 59
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    .line 65
    .line 66
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    .line 73
    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-direct {v7, v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    .line 81
    .line 82
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 83
    .line 84
    int-to-float v9, v9

    .line 85
    const/high16 v10, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 88
    .line 89
    .line 90
    const/high16 v9, 0x41800000    # 16.0f

    .line 91
    .line 92
    invoke-virtual {v7, v6, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v7, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 99
    .line 100
    .line 101
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-direct {v11, v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    .line 105
    .line 106
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 107
    .line 108
    int-to-float v12, v12

    .line 109
    invoke-virtual {v11, v12, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v6, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 124
    .line 125
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 126
    .line 127
    invoke-virtual {v3, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-direct {v9, v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    .line 134
    .line 135
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 136
    .line 137
    int-to-float v8, v8

    .line 138
    invoke-virtual {v9, v8, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 139
    .line 140
    .line 141
    const/high16 v8, 0x41600000    # 14.0f

    .line 142
    .line 143
    invoke-virtual {v9, v6, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    .line 151
    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 155
    .line 156
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 157
    .line 158
    add-int/2addr v5, v8

    .line 159
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 160
    .line 161
    invoke-virtual {v3, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->H2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 165
    .line 166
    sget v1, Lnet/kaki87/soul2/testing/R$string;->quick_guide_1:I

    .line 167
    .line 168
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    .line 170
    .line 171
    sget v1, Lnet/kaki87/soul2/testing/R$string;->icon_edit_guide:I

    .line 172
    .line 173
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    .line 175
    .line 176
    sget v1, Lnet/kaki87/soul2/testing/R$string;->bar_remove_info:I

    .line 177
    .line 178
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->H2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 182
    .line 183
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$25;

    .line 184
    .line 185
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$25;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->H2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 192
    .line 193
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$26;

    .line 194
    .line 195
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$26;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/mycompany/app/setting/SettingLayout$27;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingLayout$27;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLayout;->H2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 212
    .line 213
    invoke-virtual {v1, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 214
    .line 215
    .line 216
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    sget v0, Lcom/mycompany/app/setting/SettingLayout;->J2:I

    .line 218
    .line 219
    return-void
.end method
