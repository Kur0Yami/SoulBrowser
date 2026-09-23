.class public Lcom/mycompany/app/main/list/MainListAgent;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# instance fields
.field public C1:Z

.field public D1:Z

.field public E1:Lcom/mycompany/app/view/MyMainRelative;

.field public F1:Lcom/mycompany/app/view/MyRecyclerView;

.field public G1:Lcom/mycompany/app/main/MainSelectAdapter;

.field public H1:Lcom/mycompany/app/main/MainListView;

.field public I1:I

.field public J1:Lcom/mycompany/app/main/MainListView$ListViewHolder;


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

.method public static D0(Lcom/mycompany/app/main/list/MainListAgent;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 4
    .line 5
    if-eq p2, p1, :cond_2

    .line 6
    .line 7
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    sput-object p1, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->t(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/lit8 p1, p1, 0x64

    .line 19
    .line 20
    sget p3, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 21
    .line 22
    if-ne p3, p1, :cond_1

    .line 23
    .line 24
    sget-object p3, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_2

    .line 31
    .line 32
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 33
    .line 34
    sput-object p2, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->t(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListAgent;->finish()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final finish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->D1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->I1:I

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iput v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->I1:I

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "EXTRA_TYPE"

    .line 19
    .line 20
    const/16 v2, 0x2a

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListAgent;->finish()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListAgent;->l0()V

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
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAgent;->E1:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAgent;->F1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const v0, -0xdededf

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 v0, -0x1

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAgent;->G1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

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
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListAgent;->C1:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "EXTRA_POPUP"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput-boolean v2, v0, Lcom/mycompany/app/main/list/MainListAgent;->D1:Z

    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 23
    .line 24
    iput v2, v0, Lcom/mycompany/app/main/list/MainListAgent;->I1:I

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 30
    .line 31
    sget v3, Lnet/kaki87/soul2/testing/R$id;->list_default_view:I

    .line 32
    .line 33
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 34
    .line 35
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_cast_ctrl:I

    .line 36
    .line 37
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 38
    .line 39
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    const/4 v9, -0x1

    .line 45
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lcom/mycompany/app/view/MyHeaderView;

    .line 52
    .line 53
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 57
    .line 58
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 59
    .line 60
    .line 61
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 67
    .line 68
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    .line 70
    .line 71
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    .line 73
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 74
    .line 75
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 76
    .line 77
    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 81
    .line 82
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    const/4 v13, 0x0

    .line 91
    invoke-direct {v12, v0, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    .line 93
    .line 94
    const/16 v14, 0x10

    .line 95
    .line 96
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    .line 101
    .line 102
    const/high16 v15, 0x41900000    # 18.0f

    .line 103
    .line 104
    invoke-virtual {v12, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 105
    .line 106
    .line 107
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .line 109
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 110
    .line 111
    invoke-direct {v15, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v15, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    .line 116
    .line 117
    sget v1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 118
    .line 119
    invoke-virtual {v15, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Landroid/widget/FrameLayout;

    .line 126
    .line 127
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    .line 135
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 136
    .line 137
    const/4 v9, -0x2

    .line 138
    invoke-direct {v2, v9, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    .line 143
    .line 144
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 145
    .line 146
    iput v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 147
    .line 148
    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    const/high16 v2, 0x41600000    # 14.0f

    .line 152
    .line 153
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    float-to-int v2, v2

    .line 158
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 159
    .line 160
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    .line 168
    .line 169
    const/16 v2, 0x8

    .line 170
    .line 171
    invoke-virtual {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .line 176
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 177
    .line 178
    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    const v2, 0x800005

    .line 182
    .line 183
    .line 184
    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    .line 186
    invoke-virtual {v1, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    invoke-direct {v9, v0, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    .line 193
    .line 194
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 195
    .line 196
    invoke-virtual {v9, v13, v4, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    .line 201
    .line 202
    const/4 v13, 0x3

    .line 203
    invoke-virtual {v9, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 204
    .line 205
    .line 206
    const/high16 v14, 0x41800000    # 16.0f

    .line 207
    .line 208
    const/4 v13, 0x1

    .line 209
    invoke-virtual {v9, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 210
    .line 211
    .line 212
    const/16 v13, 0x8

    .line 213
    .line 214
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    .line 219
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 220
    .line 221
    const/4 v4, -0x2

    .line 222
    invoke-direct {v13, v4, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 226
    .line 227
    const/high16 v4, 0x42500000    # 52.0f

    .line 228
    .line 229
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    float-to-int v4, v4

    .line 234
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    new-instance v4, Lcom/mycompany/app/view/MyButtonCheck;

    .line 241
    .line 242
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    const/16 v13, 0x8

    .line 246
    .line 247
    invoke-virtual {v4, v13}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    .line 252
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 253
    .line 254
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 255
    .line 256
    .line 257
    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    .line 259
    invoke-virtual {v1, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Landroid/widget/FrameLayout;

    .line 263
    .line 264
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 268
    .line 269
    .line 270
    const/4 v5, 0x4

    .line 271
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .line 276
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 277
    .line 278
    const/4 v2, -0x2

    .line 279
    invoke-direct {v13, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .line 281
    .line 282
    const/16 v14, 0x15

    .line 283
    .line 284
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    .line 289
    .line 290
    new-instance v13, Lcom/mycompany/app/view/MyRecyclerView;

    .line 291
    .line 292
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v13, v3}, Landroid/view/View;->setId(I)V

    .line 296
    .line 297
    .line 298
    const/4 v14, 0x1

    .line 299
    invoke-virtual {v13, v14, v14}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v13, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 303
    .line 304
    .line 305
    const/4 v14, 0x0

    .line 306
    invoke-virtual {v13, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 307
    .line 308
    .line 309
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 310
    .line 311
    const/4 v5, -0x1

    .line 312
    invoke-direct {v14, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    .line 314
    .line 315
    sget v2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 316
    .line 317
    iput v2, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 318
    .line 319
    invoke-virtual {v7, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    .line 321
    .line 322
    new-instance v2, Landroid/widget/FrameLayout;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    const/4 v14, 0x3

    .line 328
    invoke-static {v5, v5, v14, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const/4 v5, 0x2

    .line 333
    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 334
    .line 335
    .line 336
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 337
    .line 338
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 339
    .line 340
    invoke-virtual {v7, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    .line 342
    .line 343
    new-instance v3, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 344
    .line 345
    invoke-direct {v3, v0}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 346
    .line 347
    .line 348
    const/4 v5, 0x0

    .line 349
    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 356
    .line 357
    .line 358
    const/4 v14, 0x0

    .line 359
    invoke-virtual {v3, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 363
    .line 364
    .line 365
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 366
    .line 367
    invoke-direct {v5, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 371
    .line 372
    .line 373
    const/4 v5, -0x1

    .line 374
    invoke-virtual {v2, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 375
    .line 376
    .line 377
    new-instance v14, Lcom/mycompany/app/view/MyScrollBar;

    .line 378
    .line 379
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 380
    .line 381
    .line 382
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 383
    .line 384
    invoke-virtual {v14, v5}, Lcom/mycompany/app/view/MyScrollBar;->setPadBot(I)V

    .line 385
    .line 386
    .line 387
    const/4 v5, 0x4

    .line 388
    invoke-virtual {v14, v5}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    .line 393
    move-object/from16 p1, v1

    .line 394
    .line 395
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 396
    .line 397
    move-object/from16 v17, v3

    .line 398
    .line 399
    const/4 v3, -0x1

    .line 400
    invoke-direct {v5, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 401
    .line 402
    .line 403
    const v1, 0x800005

    .line 404
    .line 405
    .line 406
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 407
    .line 408
    invoke-virtual {v2, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .line 410
    .line 411
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage;

    .line 412
    .line 413
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 417
    .line 418
    .line 419
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 420
    .line 421
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    .line 423
    .line 424
    const/16 v5, 0x8

    .line 425
    .line 426
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 430
    .line 431
    .line 432
    new-instance v11, Lcom/mycompany/app/view/MyCoverView;

    .line 433
    .line 434
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v11, v5}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v11, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 441
    .line 442
    .line 443
    new-instance v3, Landroid/widget/FrameLayout;

    .line 444
    .line 445
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 455
    .line 456
    move-object/from16 v16, v11

    .line 457
    .line 458
    const/4 v6, -0x1

    .line 459
    const/4 v11, -0x2

    .line 460
    invoke-direct {v5, v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 461
    .line 462
    .line 463
    const/16 v6, 0xc

    .line 464
    .line 465
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v7, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .line 470
    .line 471
    iput-object v7, v0, Lcom/mycompany/app/main/list/MainListAgent;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 472
    .line 473
    iput-object v13, v0, Lcom/mycompany/app/main/list/MainListAgent;->F1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 474
    .line 475
    new-instance v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 476
    .line 477
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 478
    .line 479
    .line 480
    iput-object v7, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 481
    .line 482
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 483
    .line 484
    iput-object v10, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 485
    .line 486
    iput-object v12, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 487
    .line 488
    iput-object v15, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 489
    .line 490
    iput-object v9, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 491
    .line 492
    iput-object v4, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 493
    .line 494
    iput-object v2, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 495
    .line 496
    move-object/from16 v2, v17

    .line 497
    .line 498
    iput-object v2, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 499
    .line 500
    iput-object v14, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 501
    .line 502
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 503
    .line 504
    move-object/from16 v1, v16

    .line 505
    .line 506
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 507
    .line 508
    iput-object v5, v0, Lcom/mycompany/app/main/list/MainListAgent;->J1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 509
    .line 510
    move-object/from16 v1, p1

    .line 511
    .line 512
    invoke-virtual {v0, v7, v1, v3}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 513
    .line 514
    .line 515
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAgent;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 516
    .line 517
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 522
    .line 523
    .line 524
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAgent;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 527
    .line 528
    .line 529
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 530
    .line 531
    if-nez v1, :cond_0

    .line 532
    .line 533
    return-void

    .line 534
    :cond_0
    new-instance v2, Lcom/mycompany/app/main/list/MainListAgent$1;

    .line 535
    .line 536
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListAgent$1;-><init>(Lcom/mycompany/app/main/list/MainListAgent;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    .line 541
    .line 542
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->F1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->F1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->G1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainSelectAdapter;->w()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->G1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 31
    .line 32
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 33
    .line 34
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
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAgent;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/main/list/MainListAgent;->C1:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0, v0, v1}, Lcom/mycompany/app/main/MainListView;->R(ZZZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
