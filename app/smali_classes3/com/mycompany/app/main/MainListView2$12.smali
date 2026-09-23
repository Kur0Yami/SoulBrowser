.class Lcom/mycompany/app/main/MainListView2$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$12;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2$12;->c:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView2;->n:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/16 v4, 0x8

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v5, v1, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    new-instance v5, Landroid/view/View;

    .line 32
    .line 33
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget v6, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 37
    .line 38
    invoke-virtual {v3, v5, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Landroid/view/View;

    .line 42
    .line 43
    invoke-direct {v6, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    sget v8, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 49
    .line 50
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    const v8, 0x800005

    .line 54
    .line 55
    .line 56
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    .line 58
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v5, 0x0

    .line 63
    move-object v6, v5

    .line 64
    :goto_0
    new-instance v7, Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-direct {v7, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    .line 75
    .line 76
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 79
    .line 80
    const/4 v11, -0x1

    .line 81
    invoke-direct {v9, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    iget-object v10, v1, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    if-nez v10, :cond_3

    .line 87
    .line 88
    sget v10, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 89
    .line 90
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 91
    .line 92
    :cond_3
    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    const/16 v10, 0x11

    .line 101
    .line 102
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    .line 104
    .line 105
    const/4 v12, 0x1

    .line 106
    const/high16 v13, 0x41800000    # 16.0f

    .line 107
    .line 108
    invoke-virtual {v9, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    .line 116
    invoke-direct {v14, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/high16 v15, 0x3f800000    # 1.0f

    .line 120
    .line 121
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    .line 123
    invoke-virtual {v7, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 127
    .line 128
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v14, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .line 145
    invoke-direct {v4, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 149
    .line 150
    invoke-virtual {v7, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 154
    .line 155
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    const/16 v12, 0x8

    .line 168
    .line 169
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 173
    .line 174
    invoke-direct {v12, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    .line 176
    .line 177
    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    .line 179
    invoke-virtual {v7, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    .line 189
    .line 190
    const/4 v10, 0x1

    .line 191
    invoke-virtual {v12, v10, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    const/16 v2, 0x8

    .line 198
    .line 199
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    .line 204
    invoke-direct {v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    .line 206
    .line 207
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 208
    .line 209
    invoke-virtual {v7, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    iput-object v3, v1, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 213
    .line 214
    iput-object v5, v1, Lcom/mycompany/app/main/MainListView2;->J:Landroid/view/View;

    .line 215
    .line 216
    iput-object v6, v1, Lcom/mycompany/app/main/MainListView2;->K:Landroid/view/View;

    .line 217
    .line 218
    iput-object v7, v1, Lcom/mycompany/app/main/MainListView2;->L:Landroid/widget/LinearLayout;

    .line 219
    .line 220
    iput-object v9, v1, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 221
    .line 222
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 223
    .line 224
    iput-object v4, v1, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 225
    .line 226
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 227
    .line 228
    if-nez v2, :cond_4

    .line 229
    .line 230
    :goto_1
    return-void

    .line 231
    :cond_4
    new-instance v3, Lcom/mycompany/app/main/MainListView2$13;

    .line 232
    .line 233
    invoke-direct {v3, v1}, Lcom/mycompany/app/main/MainListView2$13;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 237
    .line 238
    .line 239
    return-void
.end method
