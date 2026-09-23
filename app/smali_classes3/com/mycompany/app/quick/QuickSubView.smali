.class public Lcom/mycompany/app/quick/QuickSubView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;
    }
.end annotation


# static fields
.field public static final synthetic e0:I


# instance fields
.field public A:Lcom/mycompany/app/quick/QuickDragHelper;

.field public B:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public C:Z

.field public D:I

.field public E:I

.field public F:Lcom/mycompany/app/view/MyCoverView;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Landroid/view/View;

.field public K:I

.field public L:Landroid/graphics/Rect;

.field public M:Landroid/graphics/drawable/BitmapDrawable;

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c:Landroid/content/Context;

.field public c0:I

.field public d0:Ljava/util/ArrayList;

.field public f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroidx/appcompat/widget/AppCompatTextView;

.field public o:Lcom/mycompany/app/view/MyButtonCheck;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/LinearLayout;

.field public v:Lcom/mycompany/app/view/MyLineText;

.field public w:Landroidx/appcompat/widget/AppCompatTextView;

.field public x:Lcom/mycompany/app/view/MyRecyclerView;

.field public y:Lcom/mycompany/app/quick/QuickAdapter;

.field public z:Lcom/mycompany/app/view/MyManagerGrid;


# direct methods
.method public static bridge synthetic a(Lcom/mycompany/app/quick/QuickSubView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mycompany/app/quick/QuickSubView;->setEditView(Z)V

    return-void
.end method

.method private setEditView(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->A()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v0, v1, v2}, Lcom/mycompany/app/quick/QuickSubView;->f(IIZ)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->u:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->p:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->q:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->r:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->s:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->t:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/mycompany/app/quick/QuickSubView$14;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSubView$14;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->i(Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v1, Lcom/mycompany/app/quick/QuickSubView$15;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSubView$15;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/mycompany/app/quick/QuickSubView;->setEditView(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    iget v2, p0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 23
    .line 24
    new-instance v4, Lcom/mycompany/app/quick/QuickSubView$12;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/mycompany/app/quick/QuickSubView$12;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/mycompany/app/view/MyRecyclerView;->x0(IIZLcom/mycompany/app/view/MyFadeListener;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->q()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyRecyclerView;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3, v3}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    const/4 v6, -0x2

    .line 34
    invoke-virtual {v0, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    invoke-direct {v7, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const/16 v8, 0x8

    .line 43
    .line 44
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    sget v9, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 48
    .line 49
    const/4 v10, -0x1

    .line 50
    invoke-virtual {v0, v7, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-direct {v9, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    .line 58
    .line 59
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 60
    .line 61
    invoke-virtual {v9, v12, v4, v12, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    const/16 v12, 0x10

    .line 65
    .line 66
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    .line 68
    .line 69
    const/4 v12, 0x3

    .line 70
    invoke-virtual {v9, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 71
    .line 72
    .line 73
    const/high16 v12, 0x41800000    # 16.0f

    .line 74
    .line 75
    invoke-virtual {v9, v3, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 76
    .line 77
    .line 78
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .line 80
    sget v14, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 81
    .line 82
    invoke-direct {v13, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const/16 v6, 0x15

    .line 86
    .line 87
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    .line 89
    .line 90
    const/high16 v14, 0x42500000    # 52.0f

    .line 91
    .line 92
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    float-to-int v14, v14

    .line 97
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    new-instance v13, Lcom/mycompany/app/view/MyButtonCheck;

    .line 104
    .line 105
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .line 110
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 111
    .line 112
    sget v5, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 113
    .line 114
    invoke-direct {v14, v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    new-instance v5, Landroid/view/View;

    .line 124
    .line 125
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    sget v14, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 139
    .line 140
    invoke-direct {v6, v10, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    sget v14, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 144
    .line 145
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    .line 147
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Landroid/view/View;

    .line 151
    .line 152
    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .line 160
    sget v15, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 161
    .line 162
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    .line 165
    sget v15, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 166
    .line 167
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 168
    .line 169
    invoke-virtual {v0, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    new-instance v14, Landroid/view/View;

    .line 173
    .line 174
    invoke-direct {v14, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    .line 182
    sget v11, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 183
    .line 184
    invoke-direct {v15, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 185
    .line 186
    .line 187
    sget v11, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 188
    .line 189
    iput v11, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 190
    .line 191
    invoke-virtual {v0, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    new-instance v11, Landroid/view/View;

    .line 195
    .line 196
    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    .line 204
    sget v3, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 205
    .line 206
    invoke-direct {v15, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 207
    .line 208
    .line 209
    sget v3, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 210
    .line 211
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 212
    .line 213
    const v3, 0x800053

    .line 214
    .line 215
    .line 216
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    .line 218
    invoke-virtual {v0, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    new-instance v15, Landroid/view/View;

    .line 222
    .line 223
    invoke-direct {v15, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v8}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .line 231
    sget v3, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 232
    .line 233
    invoke-direct {v12, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .line 235
    .line 236
    sget v3, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 237
    .line 238
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 239
    .line 240
    const v3, 0x800055

    .line 241
    .line 242
    .line 243
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    .line 245
    invoke-virtual {v0, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    new-instance v3, Landroid/widget/LinearLayout;

    .line 249
    .line 250
    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    .line 264
    sget v12, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 265
    .line 266
    invoke-direct {v8, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 267
    .line 268
    .line 269
    const v12, 0x800053

    .line 270
    .line 271
    .line 272
    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 273
    .line 274
    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 278
    .line 279
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    const/16 v12, 0x11

    .line 283
    .line 284
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    .line 286
    .line 287
    const/4 v4, 0x1

    .line 288
    const/high16 v12, 0x41800000    # 16.0f

    .line 289
    .line 290
    invoke-virtual {v8, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 291
    .line 292
    .line 293
    sget v4, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 294
    .line 295
    const/4 v12, 0x0

    .line 296
    invoke-static {v8, v4, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    const/high16 v10, 0x3f800000    # 1.0f

    .line 301
    .line 302
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 303
    .line 304
    invoke-virtual {v3, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    .line 306
    .line 307
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    const/4 v10, 0x0

    .line 310
    invoke-direct {v4, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 311
    .line 312
    .line 313
    const/16 v1, 0x11

    .line 314
    .line 315
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 316
    .line 317
    .line 318
    const/high16 v1, 0x41800000    # 16.0f

    .line 319
    .line 320
    const/4 v10, 0x1

    .line 321
    invoke-virtual {v4, v10, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 322
    .line 323
    .line 324
    sget v1, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 325
    .line 326
    const/4 v10, -0x1

    .line 327
    invoke-static {v4, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const/high16 v10, 0x3f800000    # 1.0f

    .line 332
    .line 333
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 334
    .line 335
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .line 337
    .line 338
    iput-object v7, v0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 339
    .line 340
    iput-object v9, v0, Lcom/mycompany/app/quick/QuickSubView;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 341
    .line 342
    iput-object v13, v0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 343
    .line 344
    iput-object v5, v0, Lcom/mycompany/app/quick/QuickSubView;->p:Landroid/view/View;

    .line 345
    .line 346
    iput-object v6, v0, Lcom/mycompany/app/quick/QuickSubView;->q:Landroid/view/View;

    .line 347
    .line 348
    iput-object v14, v0, Lcom/mycompany/app/quick/QuickSubView;->r:Landroid/view/View;

    .line 349
    .line 350
    iput-object v11, v0, Lcom/mycompany/app/quick/QuickSubView;->s:Landroid/view/View;

    .line 351
    .line 352
    iput-object v15, v0, Lcom/mycompany/app/quick/QuickSubView;->t:Landroid/view/View;

    .line 353
    .line 354
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickSubView;->u:Landroid/widget/LinearLayout;

    .line 355
    .line 356
    iput-object v8, v0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 357
    .line 358
    iput-object v4, v0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 359
    .line 360
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 361
    .line 362
    const/4 v12, 0x0

    .line 363
    invoke-virtual {v0, v12}, Lcom/mycompany/app/quick/QuickSubView;->setColor(Z)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 367
    .line 368
    if-nez v1, :cond_1

    .line 369
    .line 370
    goto :goto_0

    .line 371
    :cond_1
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$10;

    .line 372
    .line 373
    invoke-direct {v2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 380
    .line 381
    const/4 v4, 0x1

    .line 382
    invoke-virtual {v1, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 383
    .line 384
    .line 385
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 386
    .line 387
    sget v2, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 388
    .line 389
    int-to-float v2, v2

    .line 390
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->p:Landroid/view/View;

    .line 394
    .line 395
    sget v2, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 396
    .line 397
    int-to-float v2, v2

    .line 398
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 399
    .line 400
    .line 401
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->q:Landroid/view/View;

    .line 402
    .line 403
    sget v2, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 404
    .line 405
    int-to-float v2, v2

    .line 406
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->r:Landroid/view/View;

    .line 410
    .line 411
    sget v2, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 412
    .line 413
    int-to-float v2, v2

    .line 414
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 418
    .line 419
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->setRoundSize(I)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 425
    .line 426
    sget v2, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 427
    .line 428
    int-to-float v2, v2

    .line 429
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 430
    .line 431
    .line 432
    new-instance v1, Lcom/mycompany/app/quick/QuickSubView$1;

    .line 433
    .line 434
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/QuickSubView$1;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 441
    .line 442
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$2;

    .line 443
    .line 444
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 451
    .line 452
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$3;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 461
    .line 462
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$4;

    .line 463
    .line 464
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSubView$4;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 471
    .line 472
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$5;

    .line 473
    .line 474
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSubView$5;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    .line 479
    .line 480
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 481
    .line 482
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$6;

    .line 483
    .line 484
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSubView$6;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    .line 489
    .line 490
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 491
    .line 492
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->k:Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookQuick;->d(Landroid/content/Context;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    iput v1, v0, Lcom/mycompany/app/quick/QuickSubView;->D:I

    .line 499
    .line 500
    if-nez v1, :cond_2

    .line 501
    .line 502
    const/4 v4, 0x1

    .line 503
    iput v4, v0, Lcom/mycompany/app/quick/QuickSubView;->E:I

    .line 504
    .line 505
    goto :goto_1

    .line 506
    :cond_2
    const/4 v2, 0x4

    .line 507
    if-ge v1, v2, :cond_3

    .line 508
    .line 509
    iput v1, v0, Lcom/mycompany/app/quick/QuickSubView;->E:I

    .line 510
    .line 511
    goto :goto_1

    .line 512
    :cond_3
    iput v2, v0, Lcom/mycompany/app/quick/QuickSubView;->E:I

    .line 513
    .line 514
    :goto_1
    new-instance v7, Lcom/mycompany/app/view/MyManagerGrid;

    .line 515
    .line 516
    iget v1, v0, Lcom/mycompany/app/quick/QuickSubView;->E:I

    .line 517
    .line 518
    invoke-direct {v7, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 519
    .line 520
    .line 521
    iput-object v7, v0, Lcom/mycompany/app/quick/QuickSubView;->z:Lcom/mycompany/app/view/MyManagerGrid;

    .line 522
    .line 523
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter;

    .line 524
    .line 525
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 526
    .line 527
    iget-boolean v6, v0, Lcom/mycompany/app/quick/QuickSubView;->l:Z

    .line 528
    .line 529
    new-instance v8, Lcom/mycompany/app/quick/QuickSubView$7;

    .line 530
    .line 531
    invoke-direct {v8, v0}, Lcom/mycompany/app/quick/QuickSubView$7;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 532
    .line 533
    .line 534
    const/4 v5, 0x1

    .line 535
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/quick/QuickAdapter;-><init>(Landroid/content/Context;IZLcom/mycompany/app/view/MyManagerGrid;Lcom/mycompany/app/quick/QuickAdapter$QuickListener;)V

    .line 536
    .line 537
    .line 538
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 539
    .line 540
    new-instance v1, Lcom/mycompany/app/quick/QuickDragHelper;

    .line 541
    .line 542
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$8;

    .line 543
    .line 544
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSubView$8;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 545
    .line 546
    .line 547
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/quick/QuickDragHelper;-><init>(Lcom/mycompany/app/quick/QuickSubView;Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;)V

    .line 548
    .line 549
    .line 550
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->A:Lcom/mycompany/app/quick/QuickDragHelper;

    .line 551
    .line 552
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 553
    .line 554
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 555
    .line 556
    .line 557
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->B:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 558
    .line 559
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 560
    .line 561
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 562
    .line 563
    .line 564
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 565
    .line 566
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->z:Lcom/mycompany/app/view/MyManagerGrid;

    .line 567
    .line 568
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 569
    .line 570
    .line 571
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 572
    .line 573
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 574
    .line 575
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 576
    .line 577
    .line 578
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->M:Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->W:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->a0:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v0, v4, :cond_8

    .line 29
    .line 30
    if-eq v0, v3, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    if-eq v0, v5, :cond_8

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->I:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v3, p0, Lcom/mycompany/app/quick/QuickSubView;->J:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSubView;->I:Z

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->U:I

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->V:I

    .line 61
    .line 62
    iget v5, p0, Lcom/mycompany/app/quick/QuickSubView;->U:I

    .line 63
    .line 64
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 65
    .line 66
    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v5, Landroid/graphics/Canvas;

    .line 71
    .line 72
    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x4

    .line 79
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 89
    .line 90
    .line 91
    iput-object v5, p0, Lcom/mycompany/app/quick/QuickSubView;->M:Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    .line 93
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->Q:I

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    add-int/2addr v5, v0

    .line 100
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->R:I

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    add-int/2addr v3, v0

    .line 107
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->W:I

    .line 108
    .line 109
    sub-int v0, v5, v0

    .line 110
    .line 111
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->b0:I

    .line 112
    .line 113
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->a0:I

    .line 114
    .line 115
    sub-int v0, v3, v0

    .line 116
    .line 117
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->c0:I

    .line 118
    .line 119
    new-instance v0, Landroid/graphics/Rect;

    .line 120
    .line 121
    iget v6, p0, Lcom/mycompany/app/quick/QuickSubView;->U:I

    .line 122
    .line 123
    add-int/2addr v6, v5

    .line 124
    iget v7, p0, Lcom/mycompany/app/quick/QuickSubView;->V:I

    .line 125
    .line 126
    add-int/2addr v7, v3

    .line 127
    invoke-direct {v0, v5, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->L:Landroid/graphics/Rect;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/mycompany/app/quick/QuickSubView;->M:Landroid/graphics/drawable/BitmapDrawable;

    .line 133
    .line 134
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 138
    .line 139
    .line 140
    iput-boolean v4, p0, Lcom/mycompany/app/quick/QuickSubView;->N:Z

    .line 141
    .line 142
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->N:Z

    .line 143
    .line 144
    if-eqz v0, :cond_c

    .line 145
    .line 146
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->L:Landroid/graphics/Rect;

    .line 147
    .line 148
    if-eqz v0, :cond_c

    .line 149
    .line 150
    iget v3, p0, Lcom/mycompany/app/quick/QuickSubView;->W:I

    .line 151
    .line 152
    iget v5, p0, Lcom/mycompany/app/quick/QuickSubView;->b0:I

    .line 153
    .line 154
    add-int/2addr v3, v5

    .line 155
    iget v5, p0, Lcom/mycompany/app/quick/QuickSubView;->a0:I

    .line 156
    .line 157
    iget v6, p0, Lcom/mycompany/app/quick/QuickSubView;->c0:I

    .line 158
    .line 159
    add-int/2addr v5, v6

    .line 160
    iget v6, p0, Lcom/mycompany/app/quick/QuickSubView;->U:I

    .line 161
    .line 162
    add-int/2addr v6, v3

    .line 163
    iget v7, p0, Lcom/mycompany/app/quick/QuickSubView;->V:I

    .line 164
    .line 165
    add-int/2addr v7, v5

    .line 166
    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->M:Landroid/graphics/drawable/BitmapDrawable;

    .line 170
    .line 171
    iget-object v8, p0, Lcom/mycompany/app/quick/QuickSubView;->L:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 177
    .line 178
    .line 179
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->O:Z

    .line 180
    .line 181
    if-nez v0, :cond_c

    .line 182
    .line 183
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->Q:I

    .line 184
    .line 185
    if-ge v6, v0, :cond_4

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->S:I

    .line 189
    .line 190
    if-le v3, v0, :cond_5

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_5
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->R:I

    .line 194
    .line 195
    if-ge v7, v0, :cond_6

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->T:I

    .line 199
    .line 200
    if-le v5, v0, :cond_c

    .line 201
    .line 202
    :goto_1
    iput-boolean v4, p0, Lcom/mycompany/app/quick/QuickSubView;->O:Z

    .line 203
    .line 204
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 205
    .line 206
    if-nez v0, :cond_7

    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_7
    invoke-direct {p0, v1}, Lcom/mycompany/app/quick/QuickSubView;->setEditView(Z)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 214
    .line 215
    iget v3, p0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 216
    .line 217
    iget v4, p0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 218
    .line 219
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->x0(IIZLcom/mycompany/app/view/MyFadeListener;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->O:Z

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSubView;->O:Z

    .line 228
    .line 229
    iget v0, p0, Lcom/mycompany/app/quick/QuickSubView;->K:I

    .line 230
    .line 231
    iput v0, p0, Lcom/mycompany/app/quick/QuickSubView;->P:I

    .line 232
    .line 233
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 234
    .line 235
    if-eqz v0, :cond_c

    .line 236
    .line 237
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 238
    .line 239
    if-nez v1, :cond_9

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 243
    .line 244
    if-eqz v1, :cond_a

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 247
    .line 248
    .line 249
    iput-object v2, v0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 250
    .line 251
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 252
    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_b
    new-instance v0, Lcom/mycompany/app/view/MyCoverView;

    .line 257
    .line 258
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 259
    .line 260
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 261
    .line 262
    int-to-float v2, v2

    .line 263
    const/high16 v5, 0x41000000    # 8.0f

    .line 264
    .line 265
    div-float/2addr v2, v5

    .line 266
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 271
    .line 272
    mul-int/2addr v5, v3

    .line 273
    const v3, -0x50506

    .line 274
    .line 275
    .line 276
    invoke-direct {v0, v1, v3, v2, v5}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 277
    .line 278
    .line 279
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 280
    .line 281
    const/16 v1, 0x8

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 287
    .line 288
    const/high16 v1, -0x5f000000

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 294
    .line 295
    new-instance v1, Lcom/mycompany/app/quick/QuickSubView$13;

    .line 296
    .line 297
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 304
    .line 305
    const/4 v1, -0x1

    .line 306
    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 310
    .line 311
    const/high16 v1, 0x3f800000    # 1.0f

    .line 312
    .line 313
    const-wide/16 v2, 0xc8

    .line 314
    .line 315
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 316
    .line 317
    .line 318
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 319
    .line 320
    new-instance v1, Lcom/mycompany/app/quick/QuickSubView$16;

    .line 321
    .line 322
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSubView$16;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 326
    .line 327
    .line 328
    :cond_c
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->J:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSubView;->J:Landroid/view/View;

    .line 11
    .line 12
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSubView;->I:Z

    .line 13
    .line 14
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSubView;->L:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSubView;->M:Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    return-void
.end method

.method public final f(IIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->l:Z

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    const v1, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 29
    .line 30
    .line 31
    const v0, -0x50506

    .line 32
    .line 33
    .line 34
    const v1, -0x7f7f80

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 39
    .line 40
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 48
    .line 49
    const/high16 v1, 0x21000000

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 52
    .line 53
    .line 54
    const v0, -0xe19938

    .line 55
    .line 56
    .line 57
    const v1, -0x252526

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSubView;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSubView;->o:Lcom/mycompany/app/view/MyButtonCheck;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x1

    .line 73
    if-lt p1, p2, :cond_2

    .line 74
    .line 75
    move p2, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move p2, v3

    .line 78
    :goto_1
    invoke-virtual {v2, p2, p3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 79
    .line 80
    .line 81
    if-lez p1, :cond_3

    .line 82
    .line 83
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 84
    .line 85
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 100
    .line 101
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    :goto_2
    if-ne p1, v4, :cond_4

    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/mycompany/app/quick/QuickSubView$9;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSubView$9;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, -0x1

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->S(IZ)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/mycompany/app/quick/QuickSubView;->setEditView(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    return v1
.end method

.method public setColor(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSubView;->l:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v1, -0x1000000

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->u:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 28
    .line 29
    const v1, -0xdededf

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const v1, -0x50506

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->q:Landroid/view/View;

    .line 44
    .line 45
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_b:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->r:Landroid/view/View;

    .line 51
    .line 52
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_b:I

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->s:Landroid/view/View;

    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->t:Landroid/view/View;

    .line 65
    .line 66
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    const v2, -0x70708

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->u:Landroid/widget/LinearLayout;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 110
    .line 111
    const/4 v2, -0x1

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->q:Landroid/view/View;

    .line 121
    .line 122
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_g:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->r:Landroid/view/View;

    .line 128
    .line 129
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_g:I

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->s:Landroid/view/View;

    .line 135
    .line 136
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->t:Landroid/view/View;

    .line 142
    .line 143
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 149
    .line 150
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->v:Lcom/mycompany/app/view/MyLineText;

    .line 156
    .line 157
    const v1, -0xe19938

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    :goto_0
    if-eqz p1, :cond_2

    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 178
    .line 179
    if-eqz p1, :cond_2

    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 182
    .line 183
    .line 184
    :cond_2
    :goto_1
    return-void
.end method

.method public setDragPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/quick/QuickSubView;->K:I

    .line 2
    .line 3
    return-void
.end method
