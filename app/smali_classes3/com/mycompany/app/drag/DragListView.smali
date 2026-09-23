.class public Lcom/mycompany/app/drag/DragListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/drag/DragListView$DragScrollProfile;,
        Lcom/mycompany/app/drag/DragListView$FloatViewManager;,
        Lcom/mycompany/app/drag/DragListView$HeightCache;,
        Lcom/mycompany/app/drag/DragListView$DragScroller;,
        Lcom/mycompany/app/drag/DragListView$RemoveAnimator;,
        Lcom/mycompany/app/drag/DragListView$DropAnimator;,
        Lcom/mycompany/app/drag/DragListView$AdapterWrapper;,
        Lcom/mycompany/app/drag/DragListView$DropListener;,
        Lcom/mycompany/app/drag/DragListView$DragListener;,
        Lcom/mycompany/app/drag/DragListView$RemoveListener;,
        Lcom/mycompany/app/drag/DragListView$LiftAnimator;,
        Lcom/mycompany/app/drag/DragListView$DragSortListener;,
        Lcom/mycompany/app/drag/DragListView$SmoothAnimator;
    }
.end annotation


# static fields
.field public static final synthetic m0:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:[Landroid/view/View;

.field public final E:Lcom/mycompany/app/drag/DragListView$DragScroller;

.field public F:F

.field public G:F

.field public H:I

.field public I:I

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:F

.field public O:Lcom/mycompany/app/drag/DragListView$DragScrollProfile;

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

.field public W:Landroid/view/MotionEvent;

.field public a0:I

.field public final b0:F

.field public c:Z

.field public c0:F

.field public d0:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

.field public e0:Z

.field public f:Landroid/view/View;

.field public f0:Z

.field public final g:Landroid/graphics/Point;

.field public final g0:Lcom/mycompany/app/drag/DragListView$HeightCache;

.field public final h:Landroid/graphics/Point;

.field public final h0:Lcom/mycompany/app/drag/DragListView$RemoveAnimator;

.field public i:I

.field public final i0:Lcom/mycompany/app/drag/DragListView$DropAnimator;

.field public j:Z

.field public j0:Z

.field public final k:Landroid/database/DataSetObserver;

.field public k0:F

.field public final l:F

.field public l0:Z

.field public m:F

.field public n:I

.field public o:I

.field public p:I

.field public final q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:Lcom/mycompany/app/drag/DragListView$DragListener;

.field public v:Lcom/mycompany/app/drag/DragListView$DropListener;

.field public w:Lcom/mycompany/app/drag/DragListView$RemoveListener;

.field public x:Z

.field public y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Point;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/Point;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->h:Landroid/graphics/Point;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->j:Z

    .line 22
    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    iput v2, v0, Lcom/mycompany/app/drag/DragListView;->l:F

    .line 26
    .line 27
    iput v2, v0, Lcom/mycompany/app/drag/DragListView;->m:F

    .line 28
    .line 29
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->q:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Lcom/mycompany/app/drag/DragListView;->x:Z

    .line 33
    .line 34
    iput v1, v0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 35
    .line 36
    iput v2, v0, Lcom/mycompany/app/drag/DragListView;->z:I

    .line 37
    .line 38
    iput v1, v0, Lcom/mycompany/app/drag/DragListView;->C:I

    .line 39
    .line 40
    new-array v3, v2, [Landroid/view/View;

    .line 41
    .line 42
    iput-object v3, v0, Lcom/mycompany/app/drag/DragListView;->D:[Landroid/view/View;

    .line 43
    .line 44
    const v3, 0x3eaaaaab

    .line 45
    .line 46
    .line 47
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->F:F

    .line 48
    .line 49
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->G:F

    .line 50
    .line 51
    const/high16 v3, 0x3f000000    # 0.5f

    .line 52
    .line 53
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->N:F

    .line 54
    .line 55
    new-instance v3, Lcom/mycompany/app/drag/DragListView$1;

    .line 56
    .line 57
    move-object v4, v0

    .line 58
    check-cast v4, Lcom/mycompany/app/fragment/FragmentDragView;

    .line 59
    .line 60
    invoke-direct {v3, v4}, Lcom/mycompany/app/drag/DragListView$1;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lcom/mycompany/app/drag/DragListView;->O:Lcom/mycompany/app/drag/DragListView$DragScrollProfile;

    .line 64
    .line 65
    iput v1, v0, Lcom/mycompany/app/drag/DragListView;->S:I

    .line 66
    .line 67
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->T:Z

    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    iput-object v3, v0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 73
    .line 74
    iput v1, v0, Lcom/mycompany/app/drag/DragListView;->a0:I

    .line 75
    .line 76
    const v3, 0x3f333333    # 0.7f

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->b0:F

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->c0:F

    .line 83
    .line 84
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->e0:Z

    .line 85
    .line 86
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->f0:Z

    .line 87
    .line 88
    new-instance v5, Lcom/mycompany/app/drag/DragListView$HeightCache;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v6, Landroid/util/SparseIntArray;

    .line 94
    .line 95
    const/4 v7, 0x3

    .line 96
    invoke-direct {v6, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iput-object v6, v5, Lcom/mycompany/app/drag/DragListView$HeightCache;->a:Landroid/util/SparseIntArray;

    .line 100
    .line 101
    new-instance v6, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .line 105
    .line 106
    iput-object v6, v5, Lcom/mycompany/app/drag/DragListView$HeightCache;->b:Ljava/util/ArrayList;

    .line 107
    .line 108
    iput v7, v5, Lcom/mycompany/app/drag/DragListView$HeightCache;->c:I

    .line 109
    .line 110
    iput-object v5, v0, Lcom/mycompany/app/drag/DragListView;->g0:Lcom/mycompany/app/drag/DragListView$HeightCache;

    .line 111
    .line 112
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->k0:F

    .line 113
    .line 114
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->l0:Z

    .line 115
    .line 116
    iput-boolean v2, v0, Lcom/mycompany/app/drag/DragListView;->c:Z

    .line 117
    .line 118
    iput-boolean v2, v0, Lcom/mycompany/app/drag/DragListView;->q:Z

    .line 119
    .line 120
    const v3, 0x3ea8f5c3    # 0.33f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Lcom/mycompany/app/drag/DragListView;->setDragScrollStart(F)V

    .line 124
    .line 125
    .line 126
    new-instance v3, Lcom/mycompany/app/drag/DragController;

    .line 127
    .line 128
    sget v5, Lnet/kaki87/soul2/testing/R$id;->item_drag:I

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v4, v3, Lcom/mycompany/app/drag/DragViewManager;->g:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 134
    .line 135
    iput-boolean v2, v3, Lcom/mycompany/app/drag/DragController;->h:Z

    .line 136
    .line 137
    iput-boolean v1, v3, Lcom/mycompany/app/drag/DragController;->j:Z

    .line 138
    .line 139
    const/4 v6, -0x1

    .line 140
    iput v6, v3, Lcom/mycompany/app/drag/DragController;->m:I

    .line 141
    .line 142
    iput v6, v3, Lcom/mycompany/app/drag/DragController;->n:I

    .line 143
    .line 144
    const/4 v6, 0x2

    .line 145
    new-array v6, v6, [I

    .line 146
    .line 147
    iput-object v6, v3, Lcom/mycompany/app/drag/DragController;->o:[I

    .line 148
    .line 149
    iput-boolean v1, v3, Lcom/mycompany/app/drag/DragController;->r:Z

    .line 150
    .line 151
    new-instance v6, Lcom/mycompany/app/drag/DragController$1;

    .line 152
    .line 153
    invoke-direct {v6}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v4, v3, Lcom/mycompany/app/drag/DragController;->u:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 157
    .line 158
    new-instance v7, Landroid/view/GestureDetector;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-direct {v7, v8, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 165
    .line 166
    .line 167
    iput-object v7, v3, Lcom/mycompany/app/drag/DragController;->k:Landroid/view/GestureDetector;

    .line 168
    .line 169
    new-instance v7, Landroid/view/GestureDetector;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-direct {v7, v8, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    iput v1, v3, Lcom/mycompany/app/drag/DragController;->l:I

    .line 194
    .line 195
    iput v5, v3, Lcom/mycompany/app/drag/DragController;->s:I

    .line 196
    .line 197
    iput v2, v3, Lcom/mycompany/app/drag/DragController;->i:I

    .line 198
    .line 199
    iput-boolean v2, v3, Lcom/mycompany/app/drag/DragController;->h:Z

    .line 200
    .line 201
    iput-object v3, v0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 202
    .line 203
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 207
    .line 208
    invoke-direct {v1, v4}, Lcom/mycompany/app/drag/DragListView$DragScroller;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->E:Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 212
    .line 213
    new-instance v1, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;

    .line 214
    .line 215
    invoke-direct {v1, v4}, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 216
    .line 217
    .line 218
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->h0:Lcom/mycompany/app/drag/DragListView$RemoveAnimator;

    .line 219
    .line 220
    new-instance v1, Lcom/mycompany/app/drag/DragListView$DropAnimator;

    .line 221
    .line 222
    invoke-direct {v1, v4}, Lcom/mycompany/app/drag/DragListView$DropAnimator;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 223
    .line 224
    .line 225
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->i0:Lcom/mycompany/app/drag/DragListView$DropAnimator;

    .line 226
    .line 227
    const/16 v17, 0x0

    .line 228
    .line 229
    const/16 v18, 0x0

    .line 230
    .line 231
    const-wide/16 v5, 0x0

    .line 232
    .line 233
    const-wide/16 v7, 0x0

    .line 234
    .line 235
    const/4 v9, 0x3

    .line 236
    const/4 v10, 0x0

    .line 237
    const/4 v11, 0x0

    .line 238
    const/4 v12, 0x0

    .line 239
    const/4 v13, 0x0

    .line 240
    const/4 v14, 0x0

    .line 241
    const/4 v15, 0x0

    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->W:Landroid/view/MotionEvent;

    .line 249
    .line 250
    new-instance v1, Lcom/mycompany/app/drag/DragListView$2;

    .line 251
    .line 252
    invoke-direct {v1, v4}, Lcom/mycompany/app/drag/DragListView$2;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, Lcom/mycompany/app/drag/DragListView;->k:Landroid/database/DataSetObserver;

    .line 256
    .line 257
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v0

    .line 20
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    add-int/lit8 v4, v4, -0x1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sub-int/2addr v4, v5

    .line 31
    sub-int/2addr v4, v0

    .line 32
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_0
    if-gt v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    add-int v5, v0, v2

    .line 45
    .line 46
    invoke-virtual {p0, v5, v4, v3}, Lcom/mycompany/app/drag/DragListView;->b(ILandroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final b(ILandroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    const/4 p3, -0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mycompany/app/drag/DragListView;->m(ILandroid/view/View;Z)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-virtual {p0, p1, p3}, Lcom/mycompany/app/drag/DragListView;->d(II)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    .line 29
    if-eq p3, v1, :cond_1

    .line 30
    .line 31
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget p3, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 37
    .line 38
    if-eq p1, p3, :cond_2

    .line 39
    .line 40
    iget p3, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 41
    .line 42
    if-ne p1, p3, :cond_4

    .line 43
    .line 44
    :cond_2
    iget p3, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 45
    .line 46
    if-ge p1, p3, :cond_3

    .line 47
    .line 48
    move-object p3, p2

    .line 49
    check-cast p3, Lcom/mycompany/app/drag/DragListItem;

    .line 50
    .line 51
    const/16 v0, 0x50

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Lcom/mycompany/app/drag/DragListItem;->setGravity(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    if-le p1, p3, :cond_4

    .line 58
    .line 59
    move-object p3, p2

    .line 60
    check-cast p3, Lcom/mycompany/app/drag/DragListItem;

    .line 61
    .line 62
    const/16 v0, 0x30

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Lcom/mycompany/app/drag/DragListItem;->setGravity(I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 72
    .line 73
    if-ne p1, v0, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    const/4 p1, 0x4

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/4 p1, 0x0

    .line 82
    :goto_2
    if-eq p1, p3, :cond_6

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_6
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 6
    .line 7
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final d(II)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/drag/DragListView;->z:I

    .line 17
    .line 18
    sub-int v3, v1, v2

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/drag/DragListView;->c0:F

    .line 21
    .line 22
    int-to-float v5, v3

    .line 23
    mul-float/2addr v4, v5

    .line 24
    float-to-int v4, v4

    .line 25
    iget v5, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 26
    .line 27
    if-ne p1, v5, :cond_4

    .line 28
    .line 29
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 30
    .line 31
    if-ne v5, p1, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    add-int/2addr v4, v2

    .line 36
    return v4

    .line 37
    :cond_1
    return v1

    .line 38
    :cond_2
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 39
    .line 40
    if-ne v5, p1, :cond_3

    .line 41
    .line 42
    sub-int/2addr v1, v4

    .line 43
    return v1

    .line 44
    :cond_3
    return v2

    .line 45
    :cond_4
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 46
    .line 47
    if-ne p1, v1, :cond_6

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    add-int/2addr p2, v4

    .line 52
    return p2

    .line 53
    :cond_5
    add-int/2addr p2, v3

    .line 54
    return p2

    .line 55
    :cond_6
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 56
    .line 57
    if-ne p1, v0, :cond_7

    .line 58
    .line 59
    add-int/2addr p2, v3

    .line 60
    sub-int/2addr p2, v4

    .line 61
    :cond_7
    return p2
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 9
    .line 10
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/drag/DragListView;->k(ILandroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 18
    .line 19
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/drag/DragListView;->k(ILandroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 45
    .line 46
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-gez v3, :cond_2

    .line 53
    .line 54
    neg-int v3, v3

    .line 55
    :cond_2
    if-ge v3, v4, :cond_3

    .line 56
    .line 57
    sub-int v3, v4, v3

    .line 58
    .line 59
    int-to-float v3, v3

    .line 60
    int-to-float v4, v4

    .line 61
    div-float/2addr v3, v4

    .line 62
    mul-float/2addr v3, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v3, 0x0

    .line 65
    :goto_0
    const/high16 v4, 0x437f0000    # 255.0f

    .line 66
    .line 67
    iget v5, p0, Lcom/mycompany/app/drag/DragListView;->m:F

    .line 68
    .line 69
    mul-float/2addr v5, v4

    .line 70
    mul-float/2addr v5, v3

    .line 71
    float-to-int v11, v5

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    .line 74
    .line 75
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 76
    .line 77
    int-to-float v3, v3

    .line 78
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 79
    .line 80
    int-to-float v2, v2

    .line 81
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 86
    .line 87
    .line 88
    int-to-float v9, v0

    .line 89
    int-to-float v10, v1

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    move-object v6, p1

    .line 93
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {p1, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->E:Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/drag/DragListView$DragScroller;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->f()V

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 16
    .line 17
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 18
    .line 19
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->n:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->a()V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/mycompany/app/drag/DragListView$FloatViewManager;->b(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->a0:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 5
    .line 6
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 12
    .line 13
    :cond_0
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->l:F

    .line 14
    .line 15
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->m:F

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->l0:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->g0:Lcom/mycompany/app/drag/DragListView$HeightCache;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/drag/DragListView$HeightCache;->a:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/drag/DragListView$HeightCache;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->d0:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p0, v1, v0, v2}, Lcom/mycompany/app/drag/DragListView;->i(ILandroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final i(ILandroid/view/View;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lcom/mycompany/app/drag/DragListView;->e0:Z

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget v3, v0, Lcom/mycompany/app/drag/DragListView;->P:I

    .line 15
    .line 16
    iget v5, v0, Lcom/mycompany/app/drag/DragListView;->Q:I

    .line 17
    .line 18
    iget-object v6, v0, Lcom/mycompany/app/drag/DragListView;->h:Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Point;->set(II)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 24
    .line 25
    invoke-interface {v3, v4}, Lcom/mycompany/app/drag/DragListView$FloatViewManager;->a(Landroid/graphics/Point;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 29
    .line 30
    iget v5, v4, Landroid/graphics/Point;->y:I

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget v7, v0, Lcom/mycompany/app/drag/DragListView;->S:I

    .line 37
    .line 38
    and-int/lit8 v8, v7, 0x1

    .line 39
    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    if-le v3, v6, :cond_1

    .line 43
    .line 44
    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    and-int/lit8 v7, v7, 0x2

    .line 48
    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    if-ge v3, v6, :cond_2

    .line 52
    .line 53
    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 54
    .line 55
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-ge v7, v3, :cond_3

    .line 76
    .line 77
    sub-int/2addr v3, v7

    .line 78
    sub-int/2addr v3, v2

    .line 79
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    :cond_3
    iget v3, v0, Lcom/mycompany/app/drag/DragListView;->S:I

    .line 88
    .line 89
    and-int/lit8 v3, v3, 0x8

    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    iget v3, v0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 94
    .line 95
    if-gt v7, v3, :cond_4

    .line 96
    .line 97
    sub-int/2addr v3, v7

    .line 98
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    sub-int/2addr v3, v10

    .line 119
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    sub-int/2addr v10, v6

    .line 124
    sub-int/2addr v10, v2

    .line 125
    if-lt v8, v10, :cond_5

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    sub-int/2addr v3, v6

    .line 132
    sub-int/2addr v3, v2

    .line 133
    sub-int/2addr v3, v7

    .line 134
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    :cond_5
    iget v6, v0, Lcom/mycompany/app/drag/DragListView;->S:I

    .line 143
    .line 144
    and-int/lit8 v6, v6, 0x4

    .line 145
    .line 146
    if-nez v6, :cond_6

    .line 147
    .line 148
    iget v6, v0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 149
    .line 150
    if-lt v8, v6, :cond_6

    .line 151
    .line 152
    sub-int/2addr v6, v7

    .line 153
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    :cond_6
    if-ge v5, v9, :cond_7

    .line 166
    .line 167
    iput v9, v4, Landroid/graphics/Point;->y:I

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    iget v6, v0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 171
    .line 172
    add-int/2addr v5, v6

    .line 173
    if-le v5, v3, :cond_8

    .line 174
    .line 175
    sub-int/2addr v3, v6

    .line 176
    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 177
    .line 178
    :cond_8
    :goto_1
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 179
    .line 180
    iget v4, v0, Lcom/mycompany/app/drag/DragListView;->B:I

    .line 181
    .line 182
    add-int/2addr v3, v4

    .line 183
    iput v3, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 184
    .line 185
    iget v3, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 186
    .line 187
    iget v4, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    iget v6, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 194
    .line 195
    sub-int v7, v6, v5

    .line 196
    .line 197
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    if-nez v7, :cond_9

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    div-int/lit8 v6, v6, 0x2

    .line 208
    .line 209
    add-int/2addr v6, v5

    .line 210
    sub-int v5, v6, v5

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/drag/DragListView;->o(II)I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    iget v10, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 233
    .line 234
    if-ge v10, v8, :cond_d

    .line 235
    .line 236
    :goto_2
    if-ltz v6, :cond_c

    .line 237
    .line 238
    add-int/lit8 v6, v6, -0x1

    .line 239
    .line 240
    invoke-virtual {v0, v6}, Lcom/mycompany/app/drag/DragListView;->n(I)I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-nez v6, :cond_a

    .line 245
    .line 246
    sub-int/2addr v5, v9

    .line 247
    sub-int/2addr v5, v7

    .line 248
    :goto_3
    move/from16 v17, v8

    .line 249
    .line 250
    move v8, v5

    .line 251
    move/from16 v5, v17

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    add-int/2addr v7, v9

    .line 255
    sub-int/2addr v5, v7

    .line 256
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/drag/DragListView;->o(II)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    iget v10, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 261
    .line 262
    if-lt v10, v7, :cond_b

    .line 263
    .line 264
    move v5, v8

    .line 265
    move v8, v7

    .line 266
    goto :goto_5

    .line 267
    :cond_b
    move v8, v7

    .line 268
    goto :goto_2

    .line 269
    :cond_c
    move v5, v8

    .line 270
    goto :goto_5

    .line 271
    :cond_d
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    :goto_4
    if-ge v6, v10, :cond_c

    .line 276
    .line 277
    add-int/lit8 v11, v10, -0x1

    .line 278
    .line 279
    if-ne v6, v11, :cond_e

    .line 280
    .line 281
    add-int/2addr v5, v9

    .line 282
    add-int/2addr v5, v7

    .line 283
    goto :goto_3

    .line 284
    :cond_e
    add-int/2addr v7, v9

    .line 285
    add-int/2addr v5, v7

    .line 286
    add-int/lit8 v7, v6, 0x1

    .line 287
    .line 288
    invoke-virtual {v0, v7}, Lcom/mycompany/app/drag/DragListView;->n(I)I

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    invoke-virtual {v0, v7, v5}, Lcom/mycompany/app/drag/DragListView;->o(II)I

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    iget v13, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 297
    .line 298
    if-ge v13, v12, :cond_f

    .line 299
    .line 300
    move v5, v8

    .line 301
    move v8, v12

    .line 302
    goto :goto_5

    .line 303
    :cond_f
    move v6, v7

    .line 304
    move v7, v11

    .line 305
    move v8, v12

    .line 306
    goto :goto_4

    .line 307
    :goto_5
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    iget v10, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 316
    .line 317
    iget v11, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 318
    .line 319
    iget v12, v0, Lcom/mycompany/app/drag/DragListView;->c0:F

    .line 320
    .line 321
    iget-boolean v13, v0, Lcom/mycompany/app/drag/DragListView;->q:Z

    .line 322
    .line 323
    if-eqz v13, :cond_13

    .line 324
    .line 325
    sub-int v13, v8, v5

    .line 326
    .line 327
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    iget v14, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 332
    .line 333
    if-ge v14, v8, :cond_10

    .line 334
    .line 335
    move/from16 v17, v8

    .line 336
    .line 337
    move v8, v5

    .line 338
    move/from16 v5, v17

    .line 339
    .line 340
    :cond_10
    iget v15, v0, Lcom/mycompany/app/drag/DragListView;->b0:F

    .line 341
    .line 342
    const/high16 v16, 0x3f000000    # 0.5f

    .line 343
    .line 344
    mul-float v15, v15, v16

    .line 345
    .line 346
    int-to-float v13, v13

    .line 347
    mul-float/2addr v15, v13

    .line 348
    float-to-int v13, v15

    .line 349
    int-to-float v15, v13

    .line 350
    add-int/2addr v8, v13

    .line 351
    sub-int v13, v5, v13

    .line 352
    .line 353
    if-ge v14, v8, :cond_11

    .line 354
    .line 355
    add-int/lit8 v5, v6, -0x1

    .line 356
    .line 357
    iput v5, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 358
    .line 359
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 360
    .line 361
    sub-int/2addr v8, v14

    .line 362
    int-to-float v5, v8

    .line 363
    mul-float v5, v5, v16

    .line 364
    .line 365
    div-float/2addr v5, v15

    .line 366
    iput v5, v0, Lcom/mycompany/app/drag/DragListView;->c0:F

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_11
    if-ge v14, v13, :cond_12

    .line 370
    .line 371
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 372
    .line 373
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_12
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 377
    .line 378
    add-int/lit8 v8, v6, 0x1

    .line 379
    .line 380
    iput v8, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 381
    .line 382
    sub-int/2addr v5, v14

    .line 383
    int-to-float v5, v5

    .line 384
    div-float/2addr v5, v15

    .line 385
    const/high16 v8, 0x3f800000    # 1.0f

    .line 386
    .line 387
    add-float/2addr v5, v8

    .line 388
    mul-float v5, v5, v16

    .line 389
    .line 390
    iput v5, v0, Lcom/mycompany/app/drag/DragListView;->c0:F

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_13
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 394
    .line 395
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 396
    .line 397
    :goto_6
    iget v5, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 398
    .line 399
    if-ge v5, v7, :cond_14

    .line 400
    .line 401
    iput v7, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 402
    .line 403
    iput v7, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 404
    .line 405
    move v6, v7

    .line 406
    goto :goto_7

    .line 407
    :cond_14
    iget v5, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 408
    .line 409
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    sub-int/2addr v7, v9

    .line 414
    if-lt v5, v7, :cond_15

    .line 415
    .line 416
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    sub-int/2addr v5, v9

    .line 421
    add-int/lit8 v6, v5, -0x1

    .line 422
    .line 423
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 424
    .line 425
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 426
    .line 427
    :cond_15
    :goto_7
    iget v5, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 428
    .line 429
    const/4 v7, 0x0

    .line 430
    if-ne v5, v10, :cond_17

    .line 431
    .line 432
    iget v5, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 433
    .line 434
    if-ne v5, v11, :cond_17

    .line 435
    .line 436
    iget v5, v0, Lcom/mycompany/app/drag/DragListView;->c0:F

    .line 437
    .line 438
    cmpl-float v5, v5, v12

    .line 439
    .line 440
    if-eqz v5, :cond_16

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_16
    move v5, v7

    .line 444
    goto :goto_9

    .line 445
    :cond_17
    :goto_8
    move v5, v2

    .line 446
    :goto_9
    iget v8, v0, Lcom/mycompany/app/drag/DragListView;->n:I

    .line 447
    .line 448
    if-eq v6, v8, :cond_19

    .line 449
    .line 450
    iget-object v5, v0, Lcom/mycompany/app/drag/DragListView;->u:Lcom/mycompany/app/drag/DragListView$DragListener;

    .line 451
    .line 452
    if-eqz v5, :cond_18

    .line 453
    .line 454
    invoke-interface {v5}, Lcom/mycompany/app/drag/DragListView$DragListener;->b()V

    .line 455
    .line 456
    .line 457
    :cond_18
    iput v6, v0, Lcom/mycompany/app/drag/DragListView;->n:I

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_19
    move v2, v5

    .line 461
    :goto_a
    if-eqz v2, :cond_22

    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/mycompany/app/drag/DragListView;->a()V

    .line 464
    .line 465
    .line 466
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/drag/DragListView;->l(I)I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    invoke-virtual {v0, v1, v5}, Lcom/mycompany/app/drag/DragListView;->d(II)I

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    iget v9, v0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 479
    .line 480
    if-eq v1, v9, :cond_1a

    .line 481
    .line 482
    sub-int v10, v6, v5

    .line 483
    .line 484
    sub-int v5, v8, v5

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_1a
    move v10, v6

    .line 488
    move v5, v8

    .line 489
    :goto_b
    iget v11, v0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 490
    .line 491
    iget v12, v0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 492
    .line 493
    if-eq v9, v12, :cond_1b

    .line 494
    .line 495
    iget v13, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 496
    .line 497
    if-eq v9, v13, :cond_1b

    .line 498
    .line 499
    iget v9, v0, Lcom/mycompany/app/drag/DragListView;->z:I

    .line 500
    .line 501
    sub-int/2addr v11, v9

    .line 502
    :cond_1b
    if-gt v1, v3, :cond_1c

    .line 503
    .line 504
    if-le v1, v12, :cond_20

    .line 505
    .line 506
    sub-int v10, v11, v5

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_1c
    if-ne v1, v4, :cond_1e

    .line 510
    .line 511
    if-gt v1, v12, :cond_1d

    .line 512
    .line 513
    sub-int/2addr v10, v11

    .line 514
    goto :goto_c

    .line 515
    :cond_1d
    iget v3, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 516
    .line 517
    if-ne v1, v3, :cond_21

    .line 518
    .line 519
    sub-int v10, v6, v8

    .line 520
    .line 521
    goto :goto_c

    .line 522
    :cond_1e
    if-gt v1, v12, :cond_1f

    .line 523
    .line 524
    rsub-int/lit8 v10, v11, 0x0

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_1f
    iget v3, v0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 528
    .line 529
    if-ne v1, v3, :cond_20

    .line 530
    .line 531
    rsub-int/lit8 v10, v5, 0x0

    .line 532
    .line 533
    goto :goto_c

    .line 534
    :cond_20
    move v10, v7

    .line 535
    :cond_21
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    add-int/2addr v3, v10

    .line 540
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    sub-int/2addr v3, v4

    .line 545
    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Lcom/mycompany/app/drag/DragListView;->layoutChildren()V

    .line 549
    .line 550
    .line 551
    :cond_22
    if-nez v2, :cond_23

    .line 552
    .line 553
    if-eqz p3, :cond_24

    .line 554
    .line 555
    :cond_23
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 556
    .line 557
    .line 558
    :cond_24
    iput-boolean v7, v0, Lcom/mycompany/app/drag/DragListView;->e0:Z

    .line 559
    .line 560
    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->w:Lcom/mycompany/app/drag/DragListView$RemoveListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/mycompany/app/drag/DragListView$RemoveListener;->remove()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->f()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->c()V

    .line 15
    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 19
    .line 20
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 23
    .line 24
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->n:I

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 36
    .line 37
    return-void
.end method

.method public final k(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int v2, p1, v2

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/view/ViewGroup;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    sub-int/2addr v4, v5

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget v6, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 50
    .line 51
    if-le p1, v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, v5

    .line 58
    add-int/2addr v1, p1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sub-int/2addr p1, v5

    .line 65
    sub-int v1, p1, v1

    .line 66
    .line 67
    move v7, v1

    .line 68
    move v1, p1

    .line 69
    move p1, v7

    .line 70
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public final l(I)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int v0, p1, v0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/drag/DragListView;->m(ILandroid/view/View;Z)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->g0:Lcom/mycompany/app/drag/DragListView$HeightCache;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/drag/DragListView$HeightCache;->a:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq v2, v3, :cond_2

    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v6, p0, Lcom/mycompany/app/drag/DragListView;->D:[Landroid/view/View;

    .line 49
    .line 50
    array-length v6, v6

    .line 51
    if-eq v5, v6, :cond_3

    .line 52
    .line 53
    new-array v5, v5, [Landroid/view/View;

    .line 54
    .line 55
    iput-object v5, p0, Lcom/mycompany/app/drag/DragListView;->D:[Landroid/view/View;

    .line 56
    .line 57
    :cond_3
    const/4 v5, 0x0

    .line 58
    if-ltz v4, :cond_5

    .line 59
    .line 60
    iget-object v6, p0, Lcom/mycompany/app/drag/DragListView;->D:[Landroid/view/View;

    .line 61
    .line 62
    aget-object v6, v6, v4

    .line 63
    .line 64
    if-nez v6, :cond_4

    .line 65
    .line 66
    invoke-interface {v2, p1, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v5, p0, Lcom/mycompany/app/drag/DragListView;->D:[Landroid/view/View;

    .line 71
    .line 72
    aput-object v2, v5, v4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-interface {v2, p1, v6, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    invoke-interface {v2, p1, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :goto_0
    const/4 v4, 0x1

    .line 85
    invoke-virtual {p0, p1, v2, v4}, Lcom/mycompany/app/drag/DragListView;->m(ILandroid/view/View;Z)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget-object v4, v0, Lcom/mycompany/app/drag/DragListView$HeightCache;->b:Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-object v5, v0, Lcom/mycompany/app/drag/DragListView$HeightCache;->a:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eq v6, v2, :cond_8

    .line 98
    .line 99
    if-ne v6, v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iget v0, v0, Lcom/mycompany/app/drag/DragListView$HeightCache;->c:I

    .line 106
    .line 107
    if-ne v3, v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_1
    invoke-virtual {v5, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_8
    return v2
.end method

.method public final layoutChildren()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->j:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->p()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 35
    .line 36
    .line 37
    iput-boolean v3, p0, Lcom/mycompany/app/drag/DragListView;->j:Z

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final m(ILandroid/view/View;Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr v0, v2

    .line 22
    if-lt p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    if-lez p1, :cond_3

    .line 40
    .line 41
    return p1

    .line 42
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    if-eqz p3, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    return p1

    .line 52
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/mycompany/app/drag/DragListView;->q(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public final n(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->l(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/drag/DragListView;->d(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final o(II)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le p1, v0, :cond_7

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-lt p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 24
    .line 25
    iget v2, p0, Lcom/mycompany/app/drag/DragListView;->z:I

    .line 26
    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->l(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->n(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v4, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 37
    .line 38
    iget v5, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 39
    .line 40
    if-gt v4, v5, :cond_3

    .line 41
    .line 42
    if-ne p1, v4, :cond_2

    .line 43
    .line 44
    iget v6, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 45
    .line 46
    if-eq v6, v4, :cond_2

    .line 47
    .line 48
    if-ne p1, v5, :cond_1

    .line 49
    .line 50
    add-int/2addr p2, v3

    .line 51
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 52
    .line 53
    :goto_0
    sub-int/2addr p2, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sub-int/2addr v3, v2

    .line 56
    add-int/2addr v3, p2

    .line 57
    sub-int p2, v3, v1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    if-le p1, v4, :cond_5

    .line 61
    .line 62
    if-gt p1, v5, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    if-le p1, v5, :cond_4

    .line 66
    .line 67
    iget v6, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 68
    .line 69
    if-gt p1, v6, :cond_4

    .line 70
    .line 71
    add-int/2addr p2, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    if-ne p1, v4, :cond_5

    .line 74
    .line 75
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 76
    .line 77
    if-eq v1, v4, :cond_5

    .line 78
    .line 79
    sub-int/2addr v3, v2

    .line 80
    add-int/2addr p2, v3

    .line 81
    :cond_5
    :goto_1
    if-gt p1, v5, :cond_6

    .line 82
    .line 83
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 84
    .line 85
    sub-int/2addr v1, v0

    .line 86
    add-int/lit8 p1, p1, -0x1

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->l(I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sub-int/2addr v1, p1

    .line 93
    div-int/lit8 v1, v1, 0x2

    .line 94
    .line 95
    add-int/2addr v1, p2

    .line 96
    return v1

    .line 97
    :cond_6
    sub-int/2addr v2, v0

    .line 98
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 99
    .line 100
    sub-int/2addr v2, p1

    .line 101
    div-int/lit8 v2, v2, 0x2

    .line 102
    .line 103
    add-int/2addr v2, p2

    .line 104
    return v2

    .line 105
    :cond_7
    :goto_2
    return p2
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->r(Landroid/view/MotionEvent;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->T:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget v2, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->f0:Z

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 32
    .line 33
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    move p1, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->l0:Z

    .line 48
    .line 49
    move p1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move p1, v4

    .line 52
    :goto_0
    if-eq v1, v0, :cond_6

    .line 53
    .line 54
    if-eq v1, v3, :cond_6

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->a0:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    const/4 v2, 0x2

    .line 62
    iput v2, p0, Lcom/mycompany/app/drag/DragListView;->a0:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->g()V

    .line 66
    .line 67
    .line 68
    :goto_1
    if-eq v1, v0, :cond_8

    .line 69
    .line 70
    if-ne v1, v3, :cond_7

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    return p1

    .line 74
    :cond_8
    :goto_2
    iput-boolean v4, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 75
    .line 76
    return p1
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->p()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/mycompany/app/drag/DragListView;->j:Z

    .line 19
    .line 20
    :cond_1
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->C:I

    .line 21
    .line 22
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->t()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->f0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView;->f0:Z

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->x:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->T:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView;->T:Z

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->r(Landroid/view/MotionEvent;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x4

    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne v0, v3, :cond_f

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/lit16 v0, v0, 0xff

    .line 39
    .line 40
    if-eq v0, v4, :cond_c

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    if-eq v0, v5, :cond_5

    .line 44
    .line 45
    if-eq v0, v2, :cond_3

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_3
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 50
    .line 51
    if-ne p1, v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->e()V

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->g()V

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    float-to-int v0, v0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    float-to-int p1, p1

    .line 70
    iget v2, p0, Lcom/mycompany/app/drag/DragListView;->s:I

    .line 71
    .line 72
    sub-int/2addr v0, v2

    .line 73
    iget-object v2, p0, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 74
    .line 75
    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 76
    .line 77
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->t:I

    .line 78
    .line 79
    sub-int v0, p1, v0

    .line 80
    .line 81
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->h()V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 87
    .line 88
    iget v2, p0, Lcom/mycompany/app/drag/DragListView;->B:I

    .line 89
    .line 90
    add-int/2addr v0, v2

    .line 91
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget v2, p0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 96
    .line 97
    iget v3, p0, Lcom/mycompany/app/drag/DragListView;->B:I

    .line 98
    .line 99
    sub-int/2addr v2, v3

    .line 100
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget-object v2, p0, Lcom/mycompany/app/drag/DragListView;->E:Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 105
    .line 106
    iget-boolean v3, v2, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 107
    .line 108
    const/4 v5, -0x1

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    iget v6, v2, Lcom/mycompany/app/drag/DragListView$DragScroller;->i:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    move v6, v5

    .line 115
    :goto_0
    iget v7, p0, Lcom/mycompany/app/drag/DragListView;->R:I

    .line 116
    .line 117
    if-le v0, v7, :cond_8

    .line 118
    .line 119
    iget v8, p0, Lcom/mycompany/app/drag/DragListView;->I:I

    .line 120
    .line 121
    if-le v0, v8, :cond_8

    .line 122
    .line 123
    if-eq v6, v4, :cond_8

    .line 124
    .line 125
    if-eq v6, v5, :cond_7

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/mycompany/app/drag/DragListView$DragScroller;->a()V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->E:Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 131
    .line 132
    iget-boolean v0, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 133
    .line 134
    if-nez v0, :cond_b

    .line 135
    .line 136
    iput-boolean v1, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->c:Z

    .line 137
    .line 138
    iput-boolean v4, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 139
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    iput-wide v0, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->f:J

    .line 145
    .line 146
    iput v4, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->i:I

    .line 147
    .line 148
    iget-object v0, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 151
    .line 152
    .line 153
    return v4

    .line 154
    :cond_8
    if-ge p1, v7, :cond_a

    .line 155
    .line 156
    iget v7, p0, Lcom/mycompany/app/drag/DragListView;->H:I

    .line 157
    .line 158
    if-ge p1, v7, :cond_a

    .line 159
    .line 160
    if-eqz v6, :cond_a

    .line 161
    .line 162
    if-eq v6, v5, :cond_9

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/mycompany/app/drag/DragListView$DragScroller;->a()V

    .line 165
    .line 166
    .line 167
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->E:Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 168
    .line 169
    iget-boolean v0, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 170
    .line 171
    if-nez v0, :cond_b

    .line 172
    .line 173
    iput-boolean v1, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->c:Z

    .line 174
    .line 175
    iput-boolean v4, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 176
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v2

    .line 181
    iput-wide v2, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->f:J

    .line 182
    .line 183
    iput v1, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->i:I

    .line 184
    .line 185
    iget-object v0, p1, Lcom/mycompany/app/drag/DragListView$DragScroller;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 188
    .line 189
    .line 190
    return v4

    .line 191
    :cond_a
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->H:I

    .line 192
    .line 193
    if-lt p1, v1, :cond_b

    .line 194
    .line 195
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->I:I

    .line 196
    .line 197
    if-gt v0, p1, :cond_b

    .line 198
    .line 199
    if-eqz v3, :cond_b

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/mycompany/app/drag/DragListView$DragScroller;->a()V

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_1
    return v4

    .line 205
    :cond_c
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 206
    .line 207
    if-ne p1, v3, :cond_e

    .line 208
    .line 209
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView;->j0:Z

    .line 210
    .line 211
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 212
    .line 213
    if-eqz p1, :cond_e

    .line 214
    .line 215
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->E:Lcom/mycompany/app/drag/DragListView$DragScroller;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/mycompany/app/drag/DragListView$DragScroller;->a()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->i0:Lcom/mycompany/app/drag/DragListView$DropAnimator;

    .line 221
    .line 222
    if-eqz p1, :cond_d

    .line 223
    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    iput-wide v0, p1, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->c:J

    .line 229
    .line 230
    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p1, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->k:Z

    .line 232
    .line 233
    iget-object v0, p1, Lcom/mycompany/app/drag/DragListView$DropAnimator;->q:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 234
    .line 235
    iget v1, v0, Lcom/mycompany/app/drag/DragListView;->n:I

    .line 236
    .line 237
    iput v1, p1, Lcom/mycompany/app/drag/DragListView$DropAnimator;->m:I

    .line 238
    .line 239
    iget v1, v0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 240
    .line 241
    iput v1, p1, Lcom/mycompany/app/drag/DragListView$DropAnimator;->n:I

    .line 242
    .line 243
    const/4 v1, 0x2

    .line 244
    iput v1, v0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 245
    .line 246
    iget-object v1, v0, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 247
    .line 248
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/mycompany/app/drag/DragListView$DropAnimator;->c()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    sub-int/2addr v2, v3

    .line 255
    int-to-float v2, v2

    .line 256
    iput v2, p1, Lcom/mycompany/app/drag/DragListView$DropAnimator;->o:F

    .line 257
    .line 258
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    sub-int/2addr v1, v0

    .line 265
    int-to-float v0, v1

    .line 266
    iput v0, p1, Lcom/mycompany/app/drag/DragListView$DropAnimator;->p:F

    .line 267
    .line 268
    iget-object v0, p1, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_d
    new-instance p1, Lcom/mycompany/app/drag/DragListView$3;

    .line 275
    .line 276
    invoke-direct {p1, p0}, Lcom/mycompany/app/drag/DragListView$3;-><init>(Lcom/mycompany/app/drag/DragListView;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->g()V

    .line 283
    .line 284
    .line 285
    return v4

    .line 286
    :cond_f
    if-nez v0, :cond_10

    .line 287
    .line 288
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_10

    .line 293
    .line 294
    move v1, v4

    .line 295
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    and-int/lit16 p1, p1, 0xff

    .line 300
    .line 301
    if-eq p1, v4, :cond_12

    .line 302
    .line 303
    if-eq p1, v2, :cond_12

    .line 304
    .line 305
    if-eqz v1, :cond_11

    .line 306
    .line 307
    iput v4, p0, Lcom/mycompany/app/drag/DragListView;->a0:I

    .line 308
    .line 309
    :cond_11
    return v1

    .line 310
    :cond_12
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->g()V

    .line 311
    .line 312
    .line 313
    return v1
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/drag/DragListView;->q(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 15
    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->B:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, -0x2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->C:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v2

    .line 28
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    .line 30
    invoke-static {v1, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final r(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->Q:I

    .line 10
    .line 11
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->R:I

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    float-to-int v1, v1

    .line 18
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->P:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    float-to-int p1, p1

    .line 25
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->Q:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->R:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->e0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final s(IIII)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-interface {v0, p1}, Lcom/mycompany/app/drag/DragListView$FloatViewManager;->c(I)Landroid/widget/ImageView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget v1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 19
    .line 20
    if-nez v1, :cond_7

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/mycompany/app/drag/DragListView;->U:Z

    .line 23
    .line 24
    if-eqz v1, :cond_7

    .line 25
    .line 26
    iget-object v1, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 27
    .line 28
    if-nez v1, :cond_7

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/mycompany/app/drag/DragListView;->x:Z

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v1, p1

    .line 50
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->o:I

    .line 51
    .line 52
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->p:I

    .line 53
    .line 54
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 55
    .line 56
    iput v1, p0, Lcom/mycompany/app/drag/DragListView;->n:I

    .line 57
    .line 58
    const/4 p1, 0x4

    .line 59
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 60
    .line 61
    iput p2, p0, Lcom/mycompany/app/drag/DragListView;->S:I

    .line 62
    .line 63
    iput-object v0, p0, Lcom/mycompany/app/drag/DragListView;->f:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->p()V

    .line 66
    .line 67
    .line 68
    iput p3, p0, Lcom/mycompany/app/drag/DragListView;->s:I

    .line 69
    .line 70
    iput p4, p0, Lcom/mycompany/app/drag/DragListView;->t:I

    .line 71
    .line 72
    iget p2, p0, Lcom/mycompany/app/drag/DragListView;->P:I

    .line 73
    .line 74
    sub-int/2addr p2, p3

    .line 75
    iget-object p3, p0, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 76
    .line 77
    iput p2, p3, Landroid/graphics/Point;->x:I

    .line 78
    .line 79
    iget p2, p0, Lcom/mycompany/app/drag/DragListView;->Q:I

    .line 80
    .line 81
    sub-int/2addr p2, p4

    .line 82
    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 83
    .line 84
    iget p2, p0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    sub-int/2addr p2, p3

    .line 91
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget p1, p0, Lcom/mycompany/app/drag/DragListView;->a0:I

    .line 101
    .line 102
    if-eq p1, v2, :cond_6

    .line 103
    .line 104
    const/4 p2, 0x2

    .line 105
    if-eq p1, p2, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->W:Landroid/view/MotionEvent;

    .line 109
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->W:Landroid/view/MotionEvent;

    .line 115
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->requestLayout()V

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 124
    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;-><init>(Lcom/mycompany/app/drag/DragListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mycompany/app/drag/DragListView;->d0:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    .line 3
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView;->k:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    instance-of v0, p1, Lcom/mycompany/app/drag/DragListView$DropListener;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/mycompany/app/drag/DragListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/mycompany/app/drag/DragListView;->setDropListener(Lcom/mycompany/app/drag/DragListView$DropListener;)V

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/mycompany/app/drag/DragListView$DragListener;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/mycompany/app/drag/DragListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/mycompany/app/drag/DragListView;->setDragListener(Lcom/mycompany/app/drag/DragListView$DragListener;)V

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/mycompany/app/drag/DragListView$RemoveListener;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/mycompany/app/drag/DragListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->setRemoveListener(Lcom/mycompany/app/drag/DragListView$RemoveListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView;->d0:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView;->d0:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/drag/DragListView;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDragListener(Lcom/mycompany/app/drag/DragListView$DragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView;->u:Lcom/mycompany/app/drag/DragListView$DragListener;

    .line 2
    .line 3
    return-void
.end method

.method public setDragScrollProfile(Lcom/mycompany/app/drag/DragListView$DragScrollProfile;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView;->O:Lcom/mycompany/app/drag/DragListView$DragScrollProfile;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->G:F

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->G:F

    .line 11
    .line 12
    :goto_0
    if-lez v1, :cond_1

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->F:F

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->F:F

    .line 18
    .line 19
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView;->t()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public setDragSortListener(Lcom/mycompany/app/drag/DragListView$DragSortListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->setDropListener(Lcom/mycompany/app/drag/DragListView$DropListener;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->setDragListener(Lcom/mycompany/app/drag/DragListView$DragListener;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/mycompany/app/drag/DragListView;->setRemoveListener(Lcom/mycompany/app/drag/DragListView$RemoveListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDropListener(Lcom/mycompany/app/drag/DragListView$DropListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView;->v:Lcom/mycompany/app/drag/DragListView$DropListener;

    .line 2
    .line 3
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->m:F

    .line 2
    .line 3
    return-void
.end method

.method public setFloatViewManager(Lcom/mycompany/app/drag/DragListView$FloatViewManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView;->V:Lcom/mycompany/app/drag/DragListView$FloatViewManager;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/drag/DragListView;->N:F

    .line 2
    .line 3
    return-void
.end method

.method public setRemoveListener(Lcom/mycompany/app/drag/DragListView$RemoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView;->w:Lcom/mycompany/app/drag/DragListView$RemoveListener;

    .line 2
    .line 3
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int/2addr v1, v2

    .line 15
    int-to-float v2, v1

    .line 16
    int-to-float v3, v0

    .line 17
    iget v4, p0, Lcom/mycompany/app/drag/DragListView;->F:F

    .line 18
    .line 19
    mul-float/2addr v4, v2

    .line 20
    add-float/2addr v4, v3

    .line 21
    iput v4, p0, Lcom/mycompany/app/drag/DragListView;->K:F

    .line 22
    .line 23
    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    .line 25
    iget v6, p0, Lcom/mycompany/app/drag/DragListView;->G:F

    .line 26
    .line 27
    invoke-static {v5, v6, v2, v3}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, p0, Lcom/mycompany/app/drag/DragListView;->J:F

    .line 32
    .line 33
    float-to-int v5, v4

    .line 34
    iput v5, p0, Lcom/mycompany/app/drag/DragListView;->H:I

    .line 35
    .line 36
    float-to-int v5, v2

    .line 37
    iput v5, p0, Lcom/mycompany/app/drag/DragListView;->I:I

    .line 38
    .line 39
    sub-float/2addr v4, v3

    .line 40
    iput v4, p0, Lcom/mycompany/app/drag/DragListView;->L:F

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    int-to-float v0, v0

    .line 44
    sub-float/2addr v0, v2

    .line 45
    iput v0, p0, Lcom/mycompany/app/drag/DragListView;->M:F

    .line 46
    .line 47
    return-void
.end method
