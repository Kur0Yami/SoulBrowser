.class public Lcom/mycompany/app/main/list/MainListMemo;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic I1:I


# instance fields
.field public C1:Z

.field public D1:Lcom/mycompany/app/view/MyMainRelative;

.field public E1:Lcom/mycompany/app/main/MainListView2;

.field public F1:Lcom/mycompany/app/dialog/DialogEditMemo;

.field public G1:Lcom/mycompany/app/view/MyFadeFrame;

.field public H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static D0(Lcom/mycompany/app/main/list/MainListMemo;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 23
    .line 24
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->t:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->t:Z

    .line 30
    .line 31
    iget-object p0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    const-string v1, "mGuideMemo"

    .line 36
    .line 37
    invoke-static {v0, p0, v1, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->t:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void

    .line 51
    :cond_3
    new-instance v0, Lcom/mycompany/app/main/list/MainListMemo$4;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/list/MainListMemo$4;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->w0:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->x0:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    if-eqz p1, :cond_4

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-ne v1, v2, :cond_5

    .line 32
    .line 33
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_6
    :goto_1
    return v2
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->t()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListMemo;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView2;->z(Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/high16 v1, -0x1000000

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v1, -0x70708

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->C1:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    sget v2, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 13
    .line 14
    sget v3, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 15
    .line 16
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 17
    .line 18
    new-instance v5, Lcom/mycompany/app/view/MyMainRelative;

    .line 19
    .line 20
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    new-instance v6, Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    invoke-static {v7, v7, v8, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    new-instance v8, Lcom/mycompany/app/view/MyRecyclerView;

    .line 46
    .line 47
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v1, v1}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 51
    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-virtual {v8, v9}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 58
    .line 59
    .line 60
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    invoke-direct {v10, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 66
    .line 67
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 68
    .line 69
    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    new-instance v10, Lcom/mycompany/app/view/MyScrollBar;

    .line 73
    .line 74
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 78
    .line 79
    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 80
    .line 81
    iput v11, v10, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 82
    .line 83
    iput v12, v10, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 84
    .line 85
    const/4 v11, 0x4

    .line 86
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .line 91
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 92
    .line 93
    invoke-direct {v12, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    const v13, 0x800005

    .line 97
    .line 98
    .line 99
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    .line 101
    invoke-virtual {v6, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    new-instance v12, Lcom/mycompany/app/view/MyFadeImage;

    .line 105
    .line 106
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 110
    .line 111
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    .line 113
    .line 114
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 115
    .line 116
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    const/16 v15, 0x8

    .line 120
    .line 121
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .line 126
    invoke-direct {v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 130
    .line 131
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 132
    .line 133
    invoke-virtual {v6, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    const/4 v13, 0x0

    .line 139
    invoke-direct {v11, v0, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    .line 144
    .line 145
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 146
    .line 147
    int-to-float v9, v9

    .line 148
    const/high16 v13, 0x3f800000    # 1.0f

    .line 149
    .line 150
    invoke-virtual {v11, v9, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 151
    .line 152
    .line 153
    const/high16 v9, 0x41800000    # 16.0f

    .line 154
    .line 155
    invoke-virtual {v11, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 156
    .line 157
    .line 158
    sget v13, Lnet/kaki87/soul2/testing/R$string;->memo_guide:I

    .line 159
    .line 160
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    const/4 v9, -0x2

    .line 169
    invoke-direct {v13, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 170
    .line 171
    .line 172
    const/16 v9, 0x50

    .line 173
    .line 174
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    .line 176
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 177
    .line 178
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 179
    .line 180
    .line 181
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 182
    .line 183
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 184
    .line 185
    .line 186
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 187
    .line 188
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 189
    .line 190
    invoke-virtual {v6, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    new-instance v9, Lcom/mycompany/app/view/MyCoverView;

    .line 194
    .line 195
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .line 203
    invoke-direct {v13, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .line 205
    .line 206
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 207
    .line 208
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 209
    .line 210
    invoke-virtual {v6, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    new-instance v13, Lcom/mycompany/app/view/MyHeaderView;

    .line 214
    .line 215
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 219
    .line 220
    invoke-virtual {v6, v13, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 221
    .line 222
    .line 223
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 229
    .line 230
    .line 231
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    .line 233
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 234
    .line 235
    move-object/from16 v18, v9

    .line 236
    .line 237
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 238
    .line 239
    invoke-direct {v7, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .line 241
    .line 242
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 243
    .line 244
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    const/4 v7, 0x0

    .line 253
    invoke-direct {v1, v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    .line 255
    .line 256
    const/16 v7, 0x10

    .line 257
    .line 258
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    .line 260
    .line 261
    const/4 v9, 0x1

    .line 262
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 263
    .line 264
    .line 265
    const/high16 v7, 0x41900000    # 18.0f

    .line 266
    .line 267
    invoke-virtual {v1, v9, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 268
    .line 269
    .line 270
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 271
    .line 272
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 273
    .line 274
    move-object/from16 v19, v15

    .line 275
    .line 276
    const/4 v15, -0x1

    .line 277
    invoke-direct {v7, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    .line 279
    .line 280
    const/16 v9, 0x10

    .line 281
    .line 282
    invoke-virtual {v7, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 283
    .line 284
    .line 285
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 286
    .line 287
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v13, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .line 292
    .line 293
    new-instance v7, Landroid/widget/FrameLayout;

    .line 294
    .line 295
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v2}, Landroid/view/View;->setId(I)V

    .line 299
    .line 300
    .line 301
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 302
    .line 303
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 304
    .line 305
    move-object/from16 v20, v1

    .line 306
    .line 307
    const/4 v1, -0x2

    .line 308
    invoke-direct {v2, v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 312
    .line 313
    .line 314
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 315
    .line 316
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 317
    .line 318
    invoke-virtual {v13, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    .line 320
    .line 321
    new-instance v2, Landroid/widget/LinearLayout;

    .line 322
    .line 323
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    const/4 v9, 0x0

    .line 327
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 331
    .line 332
    .line 333
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    .line 335
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 336
    .line 337
    invoke-direct {v9, v1, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 338
    .line 339
    .line 340
    const v1, 0x800005

    .line 341
    .line 342
    .line 343
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    .line 345
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 346
    .line 347
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .line 352
    .line 353
    const/high16 v1, 0x41600000    # 14.0f

    .line 354
    .line 355
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    float-to-int v1, v1

    .line 360
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 361
    .line 362
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 369
    .line 370
    .line 371
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 372
    .line 373
    invoke-virtual {v2, v9, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 374
    .line 375
    .line 376
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 377
    .line 378
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v15, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v21, v9

    .line 388
    .line 389
    const/16 v9, 0x8

    .line 390
    .line 391
    invoke-virtual {v15, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 395
    .line 396
    invoke-virtual {v2, v15, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 397
    .line 398
    .line 399
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 400
    .line 401
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    .line 412
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 413
    .line 414
    invoke-direct {v1, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 415
    .line 416
    .line 417
    const v14, 0x800005

    .line 418
    .line 419
    .line 420
    iput v14, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
    .line 422
    invoke-virtual {v7, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .line 424
    .line 425
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 426
    .line 427
    const/4 v14, 0x0

    .line 428
    invoke-direct {v1, v0, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 429
    .line 430
    .line 431
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 432
    .line 433
    move-object/from16 v17, v9

    .line 434
    .line 435
    const/4 v9, 0x0

    .line 436
    invoke-virtual {v1, v14, v9, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 437
    .line 438
    .line 439
    const/16 v9, 0x10

    .line 440
    .line 441
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    .line 443
    .line 444
    const/4 v9, 0x3

    .line 445
    invoke-virtual {v1, v9}, Landroid/view/View;->setTextDirection(I)V

    .line 446
    .line 447
    .line 448
    const/4 v9, 0x1

    .line 449
    const/high16 v14, 0x41800000    # 16.0f

    .line 450
    .line 451
    invoke-virtual {v1, v9, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 452
    .line 453
    .line 454
    const/16 v9, 0x8

    .line 455
    .line 456
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 460
    .line 461
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 462
    .line 463
    move-object/from16 v16, v15

    .line 464
    .line 465
    const/4 v15, -0x2

    .line 466
    invoke-direct {v9, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    .line 468
    .line 469
    const v14, 0x800005

    .line 470
    .line 471
    .line 472
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 473
    .line 474
    const/high16 v14, 0x42500000    # 52.0f

    .line 475
    .line 476
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 477
    .line 478
    .line 479
    move-result v14

    .line 480
    float-to-int v14, v14

    .line 481
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v7, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    .line 486
    .line 487
    new-instance v9, Lcom/mycompany/app/view/MyButtonCheck;

    .line 488
    .line 489
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 490
    .line 491
    .line 492
    const/16 v14, 0x8

    .line 493
    .line 494
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 498
    .line 499
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 500
    .line 501
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 502
    .line 503
    .line 504
    const v15, 0x800005

    .line 505
    .line 506
    .line 507
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 508
    .line 509
    invoke-virtual {v7, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    .line 511
    .line 512
    new-instance v7, Landroid/widget/FrameLayout;

    .line 513
    .line 514
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    .line 518
    .line 519
    .line 520
    const/4 v4, 0x4

    .line 521
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .line 523
    .line 524
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 525
    .line 526
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 527
    .line 528
    const/4 v15, -0x2

    .line 529
    invoke-direct {v4, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 530
    .line 531
    .line 532
    const/16 v14, 0x15

    .line 533
    .line 534
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v13, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    .line 539
    .line 540
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 541
    .line 542
    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 546
    .line 547
    .line 548
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 549
    .line 550
    const/4 v14, -0x1

    .line 551
    invoke-direct {v3, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 552
    .line 553
    .line 554
    const/16 v14, 0xc

    .line 555
    .line 556
    invoke-virtual {v3, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    .line 561
    .line 562
    new-instance v3, Landroid/widget/FrameLayout;

    .line 563
    .line 564
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 565
    .line 566
    .line 567
    const/16 v14, 0x8

    .line 568
    .line 569
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    const/4 v14, -0x1

    .line 573
    invoke-virtual {v4, v3, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 574
    .line 575
    .line 576
    iput-object v5, v0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 577
    .line 578
    new-instance v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 579
    .line 580
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 581
    .line 582
    .line 583
    iput-object v5, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 584
    .line 585
    iput-object v6, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 586
    .line 587
    iput-object v8, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 588
    .line 589
    iput-object v10, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 590
    .line 591
    iput-object v12, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 592
    .line 593
    iput-object v11, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 594
    .line 595
    move-object/from16 v6, v18

    .line 596
    .line 597
    iput-object v6, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 598
    .line 599
    iput-object v13, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 600
    .line 601
    move-object/from16 v6, v19

    .line 602
    .line 603
    iput-object v6, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 604
    .line 605
    move-object/from16 v6, v20

    .line 606
    .line 607
    iput-object v6, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 608
    .line 609
    iput-object v2, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->y:Landroid/widget/LinearLayout;

    .line 610
    .line 611
    move-object/from16 v2, v21

    .line 612
    .line 613
    iput-object v2, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 614
    .line 615
    move-object/from16 v2, v16

    .line 616
    .line 617
    iput-object v2, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 618
    .line 619
    move-object/from16 v2, v17

    .line 620
    .line 621
    iput-object v2, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 622
    .line 623
    iput-object v1, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 624
    .line 625
    iput-object v9, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 626
    .line 627
    iput-object v4, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->A:Landroid/widget/RelativeLayout;

    .line 628
    .line 629
    iput-object v7, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->v:Landroid/widget/FrameLayout;

    .line 630
    .line 631
    iput-object v3, v14, Lcom/mycompany/app/main/MainListView$ListViewHolder;->w:Landroid/widget/FrameLayout;

    .line 632
    .line 633
    iput-object v14, v0, Lcom/mycompany/app/main/list/MainListMemo;->H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 634
    .line 635
    invoke-virtual {v0, v5, v7, v3}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 636
    .line 637
    .line 638
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 639
    .line 640
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 645
    .line 646
    .line 647
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 648
    .line 649
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 650
    .line 651
    .line 652
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 653
    .line 654
    if-nez v1, :cond_0

    .line 655
    .line 656
    return-void

    .line 657
    :cond_0
    new-instance v2, Lcom/mycompany/app/main/list/MainListMemo$1;

    .line 658
    .line 659
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListMemo$1;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    .line 664
    .line 665
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->n()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 24
    .line 25
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListView2;->o(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->F1:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditMemo;->dismiss()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->F1:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListMemo;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/main/list/MainListMemo;->C1:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0, v0}, Lcom/mycompany/app/main/MainListView2;->p(ZZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
