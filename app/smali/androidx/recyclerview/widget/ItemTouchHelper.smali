.class public Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$Callback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:J

.field public final a:Ljava/util/ArrayList;

.field public final b:[F

.field public c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public final m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:Ljava/lang/Runnable;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Landroid/view/View;

.field public x:Landroidx/core/view/GestureDetectorCompat;

.field public y:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field public final z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->s:Ljava/lang/Runnable;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 40
    .line 41
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 49
    .line 50
    return-void
.end method

.method public static p(Landroid/view/View;FFFF)Z
    .locals 1

    .line 1
    cmpl-float v0, p1, p3

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    cmpl-float p1, p2, p4

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 26
    .line 27
    if-gtz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->r(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->s(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->o([F)V

    .line 11
    .line 12
    .line 13
    aget v3, v1, v2

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget v1, v1, v4

    .line 17
    .line 18
    move v9, v1

    .line 19
    move v10, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    move v9, v3

    .line 23
    move v10, v9

    .line 24
    :goto_0
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 25
    .line 26
    iget v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v14

    .line 39
    move v15, v2

    .line 40
    :goto_1
    if-ge v15, v14, :cond_3

    .line 41
    .line 42
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 47
    .line 48
    iget-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->a:F

    .line 51
    .line 52
    iget v5, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->c:F

    .line 53
    .line 54
    cmpl-float v6, v4, v5

    .line 55
    .line 56
    if-nez v6, :cond_1

    .line 57
    .line 58
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iput v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->i:F

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    iget v6, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->m:F

    .line 68
    .line 69
    invoke-static {v5, v4, v6, v4}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iput v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->i:F

    .line 74
    .line 75
    :goto_2
    iget v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->b:F

    .line 76
    .line 77
    iget v5, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->d:F

    .line 78
    .line 79
    cmpl-float v6, v4, v5

    .line 80
    .line 81
    if-nez v6, :cond_2

    .line 82
    .line 83
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->j:F

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->m:F

    .line 93
    .line 94
    invoke-static {v5, v4, v3, v4}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->j:F

    .line 99
    .line 100
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iget-object v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 105
    .line 106
    iget v5, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->i:F

    .line 107
    .line 108
    iget v6, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->j:F

    .line 109
    .line 110
    iget v7, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->f:I

    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    move-object/from16 v2, p1

    .line 114
    .line 115
    move v0, v3

    .line 116
    move-object/from16 v3, p2

    .line 117
    .line 118
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v15, v15, 0x1

    .line 125
    .line 126
    move-object/from16 v0, p0

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move-object/from16 v2, p1

    .line 130
    .line 131
    if-eqz v11, :cond_4

    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/4 v8, 0x1

    .line 138
    move-object/from16 v3, p2

    .line 139
    .line 140
    move v6, v9

    .line 141
    move v5, v10

    .line 142
    move-object v4, v11

    .line 143
    move v7, v12

    .line 144
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    .line 149
    .line 150
    :cond_4
    return-void
.end method

.method public final h(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->o([F)V

    .line 10
    .line 11
    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move v5, v2

    .line 30
    :goto_0
    if-ge v5, v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 43
    .line 44
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sub-int/2addr v4, v1

    .line 62
    :goto_1
    if-ltz v4, :cond_5

    .line 63
    .line 64
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 69
    .line 70
    iget-boolean v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->l:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-boolean p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->h:Z

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-nez v0, :cond_4

    .line 83
    .line 84
    move v2, v1

    .line 85
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    if-eqz v2, :cond_6

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 91
    .line 92
    .line 93
    :cond_6
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->d0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-ne v2, v1, :cond_1

    .line 25
    .line 26
    iput-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/lit8 v2, v2, -0x1

    .line 45
    .line 46
    :goto_1
    const/4 v4, 0x0

    .line 47
    if-ltz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 54
    .line 55
    iget-object v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->g:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 65
    .line 66
    invoke-virtual {v6, v5, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 85
    .line 86
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iput-boolean v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->c:Z

    .line 91
    .line 92
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 99
    .line 100
    :cond_6
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->f:F

    .line 115
    .line 116
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->g:F

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->q:I

    .line 139
    .line 140
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->v:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 164
    .line 165
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 171
    .line 172
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 176
    .line 177
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    .line 178
    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 186
    .line 187
    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 188
    .line 189
    .line 190
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 191
    .line 192
    :cond_8
    :goto_2
    return-void
.end method

.method public final j(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0xc

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 25
    .line 26
    const/4 v7, -0x1

    .line 27
    if-le v6, v7, :cond_2

    .line 28
    .line 29
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->g:F

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/16 v7, 0x3e8

    .line 35
    .line 36
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 40
    .line 41
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 42
    .line 43
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 48
    .line 49
    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    cmpl-float v1, v4, v1

    .line 56
    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    move v2, v3

    .line 60
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    and-int v3, v2, p1

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    if-ne v0, v2, :cond_2

    .line 69
    .line 70
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->f:F

    .line 71
    .line 72
    cmpl-float v3, v1, v3

    .line 73
    .line 74
    if-ltz v3, :cond_2

    .line 75
    .line 76
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    cmpl-float v1, v1, v3

    .line 81
    .line 82
    if-lez v1, :cond_2

    .line 83
    .line 84
    return v2

    .line 85
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-float v1, v1

    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const/high16 v2, 0x3f000000    # 0.5f

    .line 96
    .line 97
    mul-float/2addr v1, v2

    .line 98
    and-int/2addr p1, v0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    cmpl-float p1, p1, v1

    .line 108
    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    return v0

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    return p1
.end method

.method public final k(IILandroid/view/MotionEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_e

    .line 7
    .line 8
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 9
    .line 10
    if-eq p1, v0, :cond_e

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->h()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    if-ne v3, v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    .line 55
    .line 56
    sub-float/2addr v4, v6

    .line 57
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    .line 62
    .line 63
    sub-float/2addr v3, v6

    .line 64
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->q:I

    .line 73
    .line 74
    int-to-float v6, v6

    .line 75
    cmpg-float v7, v4, v6

    .line 76
    .line 77
    if-gez v7, :cond_3

    .line 78
    .line 79
    cmpg-float v6, v3, v6

    .line 80
    .line 81
    if-gez v6, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    cmpl-float v6, v4, v3

    .line 85
    .line 86
    if-lez v6, :cond_4

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    cmpl-float v3, v3, v4

    .line 96
    .line 97
    if-lez v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->n(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    :goto_0
    if-nez v5, :cond_7

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->f()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->c(II)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    const v1, 0xff00

    .line 140
    .line 141
    .line 142
    and-int/2addr p1, v1

    .line 143
    shr-int/lit8 p1, p1, 0x8

    .line 144
    .line 145
    if-nez p1, :cond_8

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_8
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    .line 157
    .line 158
    sub-float/2addr v1, v3

    .line 159
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    .line 160
    .line 161
    sub-float/2addr p2, v3

    .line 162
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->q:I

    .line 171
    .line 172
    int-to-float v6, v6

    .line 173
    cmpg-float v7, v3, v6

    .line 174
    .line 175
    if-gez v7, :cond_9

    .line 176
    .line 177
    cmpg-float v6, v4, v6

    .line 178
    .line 179
    if-gez v6, :cond_9

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    cmpl-float v3, v3, v4

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    if-lez v3, :cond_b

    .line 186
    .line 187
    cmpg-float p2, v1, v4

    .line 188
    .line 189
    if-gez p2, :cond_a

    .line 190
    .line 191
    and-int/lit8 p2, p1, 0x4

    .line 192
    .line 193
    if-nez p2, :cond_a

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    cmpl-float p2, v1, v4

    .line 197
    .line 198
    if-lez p2, :cond_d

    .line 199
    .line 200
    and-int/lit8 p1, p1, 0x8

    .line 201
    .line 202
    if-nez p1, :cond_d

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_b
    cmpg-float v1, p2, v4

    .line 206
    .line 207
    if-gez v1, :cond_c

    .line 208
    .line 209
    and-int/lit8 v1, p1, 0x1

    .line 210
    .line 211
    if-nez v1, :cond_c

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_c
    cmpl-float p2, p2, v4

    .line 215
    .line 216
    if-lez p2, :cond_d

    .line 217
    .line 218
    and-int/2addr p1, v0

    .line 219
    if-nez p1, :cond_d

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_d
    iput v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 223
    .line 224
    iput v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 225
    .line 226
    const/4 p1, 0x0

    .line 227
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 232
    .line 233
    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->s(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 234
    .line 235
    .line 236
    :cond_e
    :goto_1
    return-void
.end method

.method public final l(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x2

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    move v0, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    if-le v6, v7, :cond_2

    .line 27
    .line 28
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->g:F

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    cmpl-float v1, v6, v1

    .line 55
    .line 56
    if-lez v1, :cond_1

    .line 57
    .line 58
    move v2, v3

    .line 59
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    and-int v3, v2, p1

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    if-ne v2, v0, :cond_2

    .line 68
    .line 69
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->f:F

    .line 70
    .line 71
    cmpl-float v3, v1, v3

    .line 72
    .line 73
    if-ltz v3, :cond_2

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    cmpl-float v1, v1, v3

    .line 80
    .line 81
    if-lez v1, :cond_2

    .line 82
    .line 83
    return v2

    .line 84
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/high16 v2, 0x3f000000    # 0.5f

    .line 95
    .line 96
    mul-float/2addr v1, v2

    .line 97
    and-int/2addr p1, v0

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    cmpl-float p1, p1, v1

    .line 107
    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    return v0

    .line 111
    :cond_3
    const/4 p1, 0x0

    .line 112
    return p1
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    if-ne v3, p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->k:Z

    .line 22
    .line 23
    or-int/2addr p1, p2

    .line 24
    iput-boolean p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->k:Z

    .line 25
    .line 26
    iget-boolean p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->l:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->g:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 14
    .line 15
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 16
    .line 17
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 18
    .line 19
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 21
    .line 22
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 23
    .line 24
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->p(Landroid/view/View;FFFF)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :goto_0
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 47
    .line 48
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 51
    .line 52
    iget v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->i:F

    .line 53
    .line 54
    iget v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->j:F

    .line 55
    .line 56
    invoke-static {v4, v0, p1, v5, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->p(Landroid/view/View;FFFF)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper;->c()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    :goto_1
    if-ltz v2, :cond_4

    .line 77
    .line 78
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->b(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    int-to-float v6, v6

    .line 97
    add-float/2addr v6, v4

    .line 98
    cmpl-float v6, v0, v6

    .line 99
    .line 100
    if-ltz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    int-to-float v6, v6

    .line 107
    add-float/2addr v6, v4

    .line 108
    cmpg-float v4, v0, v6

    .line 109
    .line 110
    if-gtz v4, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    int-to-float v4, v4

    .line 117
    add-float/2addr v4, v5

    .line 118
    cmpl-float v4, p1, v4

    .line 119
    .line 120
    if-ltz v4, :cond_3

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    int-to-float v4, v4

    .line 127
    add-float/2addr v4, v5

    .line 128
    cmpg-float v4, p1, v4

    .line 129
    .line 130
    if-gtz v4, :cond_3

    .line 131
    .line 132
    return-object v3

    .line 133
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/4 p1, 0x0

    .line 137
    return-object p1
.end method

.method public final o([F)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 9
    .line 10
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 11
    .line 12
    add-float/2addr v0, v2

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v0, v2

    .line 23
    aput v0, p1, v1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aput v0, p1, v1

    .line 35
    .line 36
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    .line 37
    .line 38
    and-int/lit8 v0, v0, 0x3

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 44
    .line 45
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 46
    .line 47
    add-float/2addr v0, v2

    .line 48
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v0, v2

    .line 58
    aput v0, p1, v1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    aput v0, p1, v1

    .line 70
    .line 71
    return-void
.end method

.method public final q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 28
    .line 29
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 30
    .line 31
    add-float/2addr v4, v5

    .line 32
    float-to-int v4, v4

    .line 33
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 34
    .line 35
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 36
    .line 37
    add-float/2addr v5, v6

    .line 38
    float-to-int v5, v5

    .line 39
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    sub-int v7, v5, v7

    .line 46
    .line 47
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    int-to-float v7, v7

    .line 52
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    int-to-float v8, v8

    .line 57
    const/high16 v9, 0x3f000000    # 0.5f

    .line 58
    .line 59
    mul-float/2addr v8, v9

    .line 60
    cmpg-float v7, v7, v8

    .line 61
    .line 62
    if-gez v7, :cond_2

    .line 63
    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    sub-int v7, v4, v7

    .line 69
    .line 70
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    int-to-float v7, v7

    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    int-to-float v8, v8

    .line 80
    mul-float/2addr v8, v9

    .line 81
    cmpg-float v7, v7, v8

    .line 82
    .line 83
    if-gez v7, :cond_2

    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_2
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v7, :cond_3

    .line 90
    .line 91
    new-instance v7, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 97
    .line 98
    new-instance v7, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->e()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    iget v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 119
    .line 120
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 121
    .line 122
    add-float/2addr v8, v9

    .line 123
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    sub-int/2addr v8, v7

    .line 128
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 129
    .line 130
    iget v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 131
    .line 132
    add-float/2addr v9, v10

    .line 133
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    sub-int/2addr v9, v7

    .line 138
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    add-int/2addr v10, v8

    .line 143
    mul-int/2addr v7, v3

    .line 144
    add-int/2addr v10, v7

    .line 145
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    add-int/2addr v11, v9

    .line 150
    add-int/2addr v11, v7

    .line 151
    add-int v7, v8, v10

    .line 152
    .line 153
    div-int/2addr v7, v3

    .line 154
    add-int v12, v9, v11

    .line 155
    .line 156
    div-int/2addr v12, v3

    .line 157
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    move/from16 v16, v3

    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    :goto_1
    if-ge v3, v14, :cond_8

    .line 171
    .line 172
    invoke-virtual {v13, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    if-ne v15, v6, :cond_5

    .line 177
    .line 178
    move/from16 v17, v3

    .line 179
    .line 180
    :cond_4
    :goto_2
    move/from16 v18, v4

    .line 181
    .line 182
    move/from16 v19, v5

    .line 183
    .line 184
    move/from16 v20, v7

    .line 185
    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :cond_5
    move/from16 v17, v3

    .line 189
    .line 190
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-lt v3, v9, :cond_4

    .line 195
    .line 196
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-gt v3, v11, :cond_4

    .line 201
    .line 202
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-lt v3, v8, :cond_4

    .line 207
    .line 208
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-le v3, v10, :cond_6

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 216
    .line 217
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 225
    .line 226
    .line 227
    move-result v18

    .line 228
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 229
    .line 230
    .line 231
    move-result v19

    .line 232
    add-int v19, v19, v18

    .line 233
    .line 234
    div-int/lit8 v19, v19, 0x2

    .line 235
    .line 236
    sub-int v18, v7, v19

    .line 237
    .line 238
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    .line 239
    .line 240
    .line 241
    move-result v18

    .line 242
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 243
    .line 244
    .line 245
    move-result v19

    .line 246
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 247
    .line 248
    .line 249
    move-result v15

    .line 250
    add-int v15, v15, v19

    .line 251
    .line 252
    div-int/lit8 v15, v15, 0x2

    .line 253
    .line 254
    sub-int v15, v12, v15

    .line 255
    .line 256
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 257
    .line 258
    .line 259
    move-result v15

    .line 260
    mul-int v18, v18, v18

    .line 261
    .line 262
    mul-int/2addr v15, v15

    .line 263
    add-int v15, v15, v18

    .line 264
    .line 265
    move/from16 v18, v4

    .line 266
    .line 267
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    move/from16 v19, v5

    .line 274
    .line 275
    move/from16 v20, v7

    .line 276
    .line 277
    const/4 v5, 0x0

    .line 278
    const/4 v7, 0x0

    .line 279
    :goto_3
    if-ge v5, v4, :cond_7

    .line 280
    .line 281
    move/from16 v21, v4

    .line 282
    .line 283
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-le v15, v4, :cond_7

    .line 296
    .line 297
    add-int/lit8 v7, v7, 0x1

    .line 298
    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 300
    .line 301
    move/from16 v4, v21

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_7
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v4, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :goto_4
    add-int/lit8 v3, v17, 0x1

    .line 319
    .line 320
    move/from16 v4, v18

    .line 321
    .line 322
    move/from16 v5, v19

    .line 323
    .line 324
    move/from16 v7, v20

    .line 325
    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :cond_8
    move/from16 v18, v4

    .line 329
    .line 330
    move/from16 v19, v5

    .line 331
    .line 332
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-nez v4, :cond_9

    .line 339
    .line 340
    goto/16 :goto_7

    .line 341
    .line 342
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    add-int v4, v4, v18

    .line 347
    .line 348
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    add-int v5, v5, v19

    .line 353
    .line 354
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    sub-int v7, v18, v7

    .line 359
    .line 360
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    sub-int v8, v19, v8

    .line 365
    .line 366
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    const/4 v10, 0x0

    .line 371
    const/4 v11, -0x1

    .line 372
    const/4 v15, 0x0

    .line 373
    :goto_5
    if-ge v15, v9, :cond_f

    .line 374
    .line 375
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 380
    .line 381
    if-lez v7, :cond_a

    .line 382
    .line 383
    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 384
    .line 385
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    sub-int/2addr v13, v4

    .line 390
    if-gez v13, :cond_a

    .line 391
    .line 392
    iget-object v14, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 393
    .line 394
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 395
    .line 396
    .line 397
    move-result v14

    .line 398
    move-object/from16 v16, v3

    .line 399
    .line 400
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-le v14, v3, :cond_b

    .line 405
    .line 406
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-le v3, v11, :cond_b

    .line 411
    .line 412
    move v11, v3

    .line 413
    move-object v10, v12

    .line 414
    goto :goto_6

    .line 415
    :cond_a
    move-object/from16 v16, v3

    .line 416
    .line 417
    :cond_b
    :goto_6
    if-gez v7, :cond_c

    .line 418
    .line 419
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 420
    .line 421
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    sub-int v3, v3, v18

    .line 426
    .line 427
    if-lez v3, :cond_c

    .line 428
    .line 429
    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 430
    .line 431
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    .line 432
    .line 433
    .line 434
    move-result v13

    .line 435
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 436
    .line 437
    .line 438
    move-result v14

    .line 439
    if-ge v13, v14, :cond_c

    .line 440
    .line 441
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-le v3, v11, :cond_c

    .line 446
    .line 447
    move v11, v3

    .line 448
    move-object v10, v12

    .line 449
    :cond_c
    if-gez v8, :cond_d

    .line 450
    .line 451
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 452
    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    sub-int v3, v3, v19

    .line 458
    .line 459
    if-lez v3, :cond_d

    .line 460
    .line 461
    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 462
    .line 463
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 468
    .line 469
    .line 470
    move-result v14

    .line 471
    if-ge v13, v14, :cond_d

    .line 472
    .line 473
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-le v3, v11, :cond_d

    .line 478
    .line 479
    move v11, v3

    .line 480
    move-object v10, v12

    .line 481
    :cond_d
    if-lez v8, :cond_e

    .line 482
    .line 483
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 484
    .line 485
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    sub-int/2addr v3, v5

    .line 490
    if-gez v3, :cond_e

    .line 491
    .line 492
    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 493
    .line 494
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 499
    .line 500
    .line 501
    move-result v14

    .line 502
    if-le v13, v14, :cond_e

    .line 503
    .line 504
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-le v3, v11, :cond_e

    .line 509
    .line 510
    move v11, v3

    .line 511
    move-object v10, v12

    .line 512
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 513
    .line 514
    move-object/from16 v3, v16

    .line 515
    .line 516
    goto/16 :goto_5

    .line 517
    .line 518
    :cond_f
    if-nez v10, :cond_10

    .line 519
    .line 520
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 523
    .line 524
    .line 525
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 528
    .line 529
    .line 530
    return-void

    .line 531
    :cond_10
    iget-object v3, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 532
    .line 533
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b()I

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b()I

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v1, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 541
    .line 542
    .line 543
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 544
    .line 545
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    instance-of v5, v2, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    .line 550
    .line 551
    if-eqz v5, :cond_11

    .line 552
    .line 553
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    .line 554
    .line 555
    invoke-interface {v2, v6, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;->b(Landroid/view/View;Landroid/view/View;)V

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :cond_11
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f()Z

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    if-eqz v5, :cond_13

    .line 564
    .line 565
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->C(Landroid/view/View;)I

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 570
    .line 571
    .line 572
    move-result v6

    .line 573
    if-gt v5, v6, :cond_12

    .line 574
    .line 575
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 576
    .line 577
    .line 578
    :cond_12
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->F(Landroid/view/View;)I

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    sub-int/2addr v6, v7

    .line 591
    if-lt v5, v6, :cond_13

    .line 592
    .line 593
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 594
    .line 595
    .line 596
    :cond_13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g()Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-eqz v2, :cond_15

    .line 601
    .line 602
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->G(Landroid/view/View;)I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    if-gt v2, v5, :cond_14

    .line 611
    .line 612
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 613
    .line 614
    .line 615
    :cond_14
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->A(Landroid/view/View;)I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    sub-int/2addr v3, v5

    .line 628
    if-lt v2, v3, :cond_15

    .line 629
    .line 630
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 631
    .line 632
    .line 633
    :cond_15
    :goto_7
    return-void
.end method

.method public final r(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final s(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    if-ne v10, v0, :cond_0

    .line 10
    .line 11
    iget v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 12
    .line 13
    if-ne v11, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 17
    .line 18
    iput-wide v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 19
    .line 20
    iget v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 21
    .line 22
    const/4 v12, 0x1

    .line 23
    invoke-virtual {v1, v10, v12}, Landroidx/recyclerview/widget/ItemTouchHelper;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 24
    .line 25
    .line 26
    iput v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 27
    .line 28
    const/4 v13, 0x2

    .line 29
    if-ne v11, v13, :cond_2

    .line 30
    .line 31
    if-eqz v10, :cond_1

    .line 32
    .line 33
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v2, "Must pass a ViewHolder when dragging"

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    :goto_0
    mul-int/lit8 v0, v11, 0x8

    .line 47
    .line 48
    const/16 v14, 0x8

    .line 49
    .line 50
    add-int/2addr v0, v14

    .line 51
    shl-int v0, v12, v0

    .line 52
    .line 53
    add-int/lit8 v15, v0, -0x1

    .line 54
    .line 55
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 56
    .line 57
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 58
    .line 59
    if-eqz v2, :cond_14

    .line 60
    .line 61
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const/4 v7, 0x0

    .line 68
    if-eqz v6, :cond_13

    .line 69
    .line 70
    if-ne v3, v13, :cond_4

    .line 71
    .line 72
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 75
    .line 76
    if-ne v5, v13, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->f()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v6, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    sget-object v8, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-static {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->c(II)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const v8, 0xff00

    .line 96
    .line 97
    .line 98
    and-int/2addr v6, v8

    .line 99
    shr-int/2addr v6, v14

    .line 100
    if-nez v6, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    and-int/2addr v5, v8

    .line 104
    shr-int/2addr v5, v14

    .line 105
    iget v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 106
    .line 107
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 112
    .line 113
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    cmpl-float v8, v8, v9

    .line 118
    .line 119
    if-lez v8, :cond_8

    .line 120
    .line 121
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(I)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-lez v8, :cond_7

    .line 126
    .line 127
    and-int/2addr v5, v8

    .line 128
    if-nez v5, :cond_a

    .line 129
    .line 130
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v8, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->d(II)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->l(I)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-lez v8, :cond_3

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->l(I)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-lez v8, :cond_9

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(I)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-lez v8, :cond_3

    .line 160
    .line 161
    and-int/2addr v5, v8

    .line 162
    if-nez v5, :cond_a

    .line 163
    .line 164
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-static {v8, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->d(II)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    :cond_a
    :goto_2
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 175
    .line 176
    if-eqz v5, :cond_b

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 179
    .line 180
    .line 181
    iput-object v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 182
    .line 183
    :cond_b
    const/4 v5, 0x4

    .line 184
    const/4 v6, 0x0

    .line 185
    if-eq v8, v12, :cond_d

    .line 186
    .line 187
    if-eq v8, v13, :cond_d

    .line 188
    .line 189
    if-eq v8, v5, :cond_c

    .line 190
    .line 191
    if-eq v8, v14, :cond_c

    .line 192
    .line 193
    const/16 v9, 0x10

    .line 194
    .line 195
    if-eq v8, v9, :cond_c

    .line 196
    .line 197
    const/16 v9, 0x20

    .line 198
    .line 199
    if-eq v8, v9, :cond_c

    .line 200
    .line 201
    move-object v4, v7

    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    move v7, v6

    .line 205
    goto :goto_3

    .line 206
    :cond_c
    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 207
    .line 208
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    iget-object v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    int-to-float v4, v4

    .line 221
    mul-float/2addr v9, v4

    .line 222
    move-object v4, v7

    .line 223
    move v7, v6

    .line 224
    move v6, v9

    .line 225
    goto :goto_3

    .line 226
    :cond_d
    const/16 v16, 0x0

    .line 227
    .line 228
    iget v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 229
    .line 230
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    int-to-float v9, v9

    .line 241
    mul-float/2addr v4, v9

    .line 242
    move-object/from16 v20, v7

    .line 243
    .line 244
    move v7, v4

    .line 245
    move-object/from16 v4, v20

    .line 246
    .line 247
    :goto_3
    if-ne v3, v13, :cond_e

    .line 248
    .line 249
    move v5, v14

    .line 250
    goto :goto_4

    .line 251
    :cond_e
    if-lez v8, :cond_f

    .line 252
    .line 253
    move v5, v13

    .line 254
    :cond_f
    :goto_4
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    .line 255
    .line 256
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->o([F)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v17, v4

    .line 260
    .line 261
    aget v4, v9, v16

    .line 262
    .line 263
    aget v9, v9, v12

    .line 264
    .line 265
    move-object/from16 v18, v0

    .line 266
    .line 267
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 268
    .line 269
    move/from16 v19, v5

    .line 270
    .line 271
    move v5, v9

    .line 272
    move-object v9, v2

    .line 273
    move/from16 v12, v16

    .line 274
    .line 275
    move/from16 v13, v19

    .line 276
    .line 277
    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 278
    .line 279
    .line 280
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    if-nez v3, :cond_11

    .line 290
    .line 291
    if-ne v13, v14, :cond_10

    .line 292
    .line 293
    const-wide/16 v3, 0xc8

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_10
    const-wide/16 v3, 0xfa

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_11
    if-ne v13, v14, :cond_12

    .line 300
    .line 301
    iget-wide v3, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->e:J

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_12
    iget-wide v3, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->d:J

    .line 305
    .line 306
    :goto_5
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->g:Landroid/animation/ValueAnimator;

    .line 307
    .line 308
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    .line 310
    .line 311
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p(Z)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 320
    .line 321
    .line 322
    move-object/from16 v3, v18

    .line 323
    .line 324
    const/4 v4, 0x1

    .line 325
    :goto_6
    const/4 v0, 0x0

    .line 326
    goto :goto_7

    .line 327
    :cond_13
    move-object/from16 v18, v0

    .line 328
    .line 329
    const/4 v12, 0x0

    .line 330
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->r(Landroid/view/View;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 334
    .line 335
    move-object/from16 v3, v18

    .line 336
    .line 337
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 338
    .line 339
    .line 340
    move v4, v12

    .line 341
    goto :goto_6

    .line 342
    :goto_7
    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_14
    move-object v3, v0

    .line 346
    const/4 v12, 0x0

    .line 347
    move v4, v12

    .line 348
    :goto_8
    if-eqz v10, :cond_15

    .line 349
    .line 350
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 351
    .line 352
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 353
    .line 354
    invoke-virtual {v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->f()I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    sget-object v6, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 359
    .line 360
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    invoke-static {v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->c(II)I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    and-int/2addr v2, v15

    .line 369
    iget v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 370
    .line 371
    mul-int/2addr v5, v14

    .line 372
    shr-int/2addr v2, v5

    .line 373
    iput v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    int-to-float v2, v2

    .line 380
    iput v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 381
    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    int-to-float v2, v2

    .line 387
    iput v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 388
    .line 389
    iput-object v10, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 390
    .line 391
    const/4 v2, 0x2

    .line 392
    if-ne v11, v2, :cond_15

    .line 393
    .line 394
    invoke-virtual {v0, v12}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 395
    .line 396
    .line 397
    :cond_15
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 398
    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    if-eqz v0, :cond_17

    .line 404
    .line 405
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 406
    .line 407
    if-eqz v2, :cond_16

    .line 408
    .line 409
    const/4 v12, 0x1

    .line 410
    :cond_16
    invoke-interface {v0, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 411
    .line 412
    .line 413
    :cond_17
    if-nez v4, :cond_18

    .line 414
    .line 415
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const/4 v2, 0x1

    .line 422
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f:Z

    .line 423
    .line 424
    :cond_18
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 425
    .line 426
    iget v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 427
    .line 428
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 429
    .line 430
    .line 431
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 434
    .line 435
    .line 436
    return-void
.end method

.method public final t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->f()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->c(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/high16 v1, 0xff0000

    .line 20
    .line 21
    and-int/2addr v0, v1

    .line 22
    const-string v1, "ItemTouchHelper"

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    if-eq v0, v2, :cond_0

    .line 35
    .line 36
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 57
    .line 58
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->s(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const-string p1, "Start drag has been called but dragging is not enabled"

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final u(IILandroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    .line 10
    .line 11
    sub-float/2addr v0, p3

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 13
    .line 14
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    .line 15
    .line 16
    sub-float/2addr p2, p3

    .line 17
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 18
    .line 19
    and-int/lit8 p2, p1, 0x4

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 29
    .line 30
    :cond_0
    and-int/lit8 p2, p1, 0x8

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 35
    .line 36
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 41
    .line 42
    :cond_1
    and-int/lit8 p2, p1, 0x1

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 47
    .line 48
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 53
    .line 54
    :cond_2
    and-int/lit8 p1, p1, 0x2

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 59
    .line 60
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 65
    .line 66
    :cond_3
    return-void
.end method
