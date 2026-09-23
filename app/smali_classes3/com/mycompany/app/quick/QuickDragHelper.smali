.class public Lcom/mycompany/app/quick/QuickDragHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

.field public final e:Z

.field public final f:I

.field public g:Lcom/mycompany/app/quick/QuickSubView;

.field public h:Landroid/view/View;

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView;Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->g:Lcom/mycompany/app/quick/QuickSubView;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->e:Z

    .line 11
    .line 12
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->f:I

    .line 15
    .line 16
    :goto_0
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickDragHelper;->d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_0

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickDragHelper;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->k:Z

    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13
    .line 14
    .line 15
    instance-of p1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    check-cast p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 20
    .line 21
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p2, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->g:Lcom/mycompany/app/quick/QuickSubView;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iput-boolean v0, p1, Lcom/mycompany/app/quick/QuickSubView;->N:Z

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickSubView;->e()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->j(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->k:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p7, :cond_1

    .line 9
    .line 10
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v1, 0x2

    .line 15
    move/from16 v2, p6

    .line 16
    .line 17
    if-ne v2, v1, :cond_8

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->e:Z

    .line 20
    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    move-object/from16 v1, p3

    .line 24
    .line 25
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 26
    .line 27
    move/from16 v4, p4

    .line 28
    .line 29
    float-to-int v5, v4

    .line 30
    move/from16 v6, p5

    .line 31
    .line 32
    float-to-int v7, v6

    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    :cond_2
    move-object/from16 v13, p2

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    add-int/2addr v11, v5

    .line 52
    div-int/lit8 v5, v9, 0x2

    .line 53
    .line 54
    add-int/2addr v5, v11

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    add-int/2addr v11, v7

    .line 60
    div-int/lit8 v7, v10, 0x2

    .line 61
    .line 62
    add-int/2addr v7, v11

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    const/4 v12, 0x0

    .line 68
    :goto_0
    if-ge v12, v11, :cond_2

    .line 69
    .line 70
    move-object/from16 v13, p2

    .line 71
    .line 72
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    if-eqz v14, :cond_5

    .line 77
    .line 78
    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v15

    .line 82
    if-eqz v15, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    add-int v1, v15, v9

    .line 94
    .line 95
    add-int v2, v8, v10

    .line 96
    .line 97
    if-le v5, v15, :cond_5

    .line 98
    .line 99
    if-ge v5, v1, :cond_5

    .line 100
    .line 101
    if-le v7, v8, :cond_5

    .line 102
    .line 103
    if-ge v7, v2, :cond_5

    .line 104
    .line 105
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    instance-of v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    check-cast v1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 116
    .line 117
    iget v1, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->v:I

    .line 118
    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    move-object v8, v14

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 124
    .line 125
    move-object/from16 v1, p3

    .line 126
    .line 127
    move/from16 v2, p6

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :goto_2
    const/4 v1, -0x1

    .line 131
    if-nez v8, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickDragHelper;->o()V

    .line 134
    .line 135
    .line 136
    iput v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 140
    .line 141
    if-eqz v2, :cond_7

    .line 142
    .line 143
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_9

    .line 148
    .line 149
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickDragHelper;->o()V

    .line 150
    .line 151
    .line 152
    iput v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 153
    .line 154
    iput-object v8, v0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 155
    .line 156
    const v1, 0x3f99999a    # 1.2f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    move-object/from16 v13, p2

    .line 169
    .line 170
    move/from16 v4, p4

    .line 171
    .line 172
    move/from16 v6, p5

    .line 173
    .line 174
    :cond_9
    :goto_3
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;->b(II)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickDragHelper;->o()V

    .line 22
    .line 23
    .line 24
    iput p2, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->k:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->g:Lcom/mycompany/app/quick/QuickSubView;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/mycompany/app/quick/QuickSubView;->setDragPos(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p2, v1, :cond_0

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->k:Z

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v2, 0x2

    .line 9
    if-ne p2, v2, :cond_4

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->k:Z

    .line 12
    .line 13
    if-eqz p1, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 20
    .line 21
    instance-of v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->g:Lcom/mycompany/app/quick/QuickSubView;

    .line 38
    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 42
    .line 43
    iget v2, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSubView;->e()V

    .line 49
    .line 50
    .line 51
    iput-object p1, v0, Lcom/mycompany/app/quick/QuickSubView;->J:Landroid/view/View;

    .line 52
    .line 53
    iput v2, v0, Lcom/mycompany/app/quick/QuickSubView;->K:I

    .line 54
    .line 55
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSubView;->I:Z

    .line 56
    .line 57
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->l7(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    if-nez p2, :cond_6

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 64
    .line 65
    const/4 v0, -0x1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickDragHelper;->o()V

    .line 69
    .line 70
    .line 71
    iget p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 72
    .line 73
    if-eq p1, v0, :cond_5

    .line 74
    .line 75
    iget v2, p0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 76
    .line 77
    if-eq v2, v0, :cond_5

    .line 78
    .line 79
    if-eq p1, v2, :cond_5

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->k:Z

    .line 82
    .line 83
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-interface {v1, p1, v2}, Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;->c(II)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iput v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->i:I

    .line 91
    .line 92
    iput v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->j:I

    .line 93
    .line 94
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickDragHelper;->d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    invoke-interface {p1, p2}, Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;->a(I)V

    .line 99
    .line 100
    .line 101
    :cond_7
    return-void
.end method

.method public final n()V
    .locals 0

    .line 1
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 18
    .line 19
    return-void
.end method
