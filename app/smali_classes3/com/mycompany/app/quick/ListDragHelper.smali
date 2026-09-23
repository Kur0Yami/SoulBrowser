.class public Lcom/mycompany/app/quick/ListDragHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;

.field public e:Z

.field public f:I

.field public g:Landroid/view/View;

.field public h:Lcom/mycompany/app/view/MyListChild;

.field public i:I

.field public j:I

.field public k:Z


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

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
    iget v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->i:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_0

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/ListDragHelper;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->i:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->f:I

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

.method public final k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

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
    if-ne v2, v1, :cond_a

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/quick/ListDragHelper;->e:Z

    .line 20
    .line 21
    if-eqz v3, :cond_a

    .line 22
    .line 23
    move-object/from16 v3, p3

    .line 24
    .line 25
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 26
    .line 27
    move/from16 v5, p4

    .line 28
    .line 29
    float-to-int v6, v5

    .line 30
    move/from16 v7, p5

    .line 31
    .line 32
    float-to-int v8, v7

    .line 33
    if-nez v4, :cond_3

    .line 34
    .line 35
    :cond_2
    move-object/from16 v14, p2

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    add-int/2addr v12, v6

    .line 52
    div-int/lit8 v6, v10, 0x2

    .line 53
    .line 54
    add-int/2addr v6, v12

    .line 55
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    add-int/2addr v12, v8

    .line 60
    div-int/lit8 v8, v11, 0x2

    .line 61
    .line 62
    add-int/2addr v8, v12

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    const/4 v13, 0x0

    .line 68
    :goto_0
    if-ge v13, v12, :cond_2

    .line 69
    .line 70
    move-object/from16 v14, p2

    .line 71
    .line 72
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    if-eqz v15, :cond_4

    .line 77
    .line 78
    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v16

    .line 82
    if-eqz v16, :cond_5

    .line 83
    .line 84
    :cond_4
    move v2, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int v2, v9, v10

    .line 95
    .line 96
    add-int v3, v1, v11

    .line 97
    .line 98
    if-le v6, v9, :cond_6

    .line 99
    .line 100
    if-ge v6, v2, :cond_6

    .line 101
    .line 102
    if-le v8, v1, :cond_6

    .line 103
    .line 104
    if-ge v8, v3, :cond_6

    .line 105
    .line 106
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    instance-of v2, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 113
    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    check-cast v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 117
    .line 118
    iget v1, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->u:I

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    if-eq v1, v2, :cond_7

    .line 122
    .line 123
    move-object v9, v15

    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const/4 v2, 0x2

    .line 126
    :cond_7
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 127
    .line 128
    move-object/from16 v3, p3

    .line 129
    .line 130
    move v1, v2

    .line 131
    move/from16 v2, p6

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :goto_2
    const/4 v1, -0x1

    .line 135
    if-nez v9, :cond_8

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/mycompany/app/quick/ListDragHelper;->o()V

    .line 138
    .line 139
    .line 140
    iput v1, v0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 144
    .line 145
    if-eqz v2, :cond_9

    .line 146
    .line 147
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_b

    .line 152
    .line 153
    :cond_9
    invoke-virtual {v0}, Lcom/mycompany/app/quick/ListDragHelper;->o()V

    .line 154
    .line 155
    .line 156
    iput v1, v0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 157
    .line 158
    iput-object v9, v0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 159
    .line 160
    const v1, 0x3f8ccccd    # 1.1f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleX(F)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 169
    .line 170
    .line 171
    instance-of v1, v9, Lcom/mycompany/app/view/MyListChild;

    .line 172
    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    check-cast v9, Lcom/mycompany/app/view/MyListChild;

    .line 176
    .line 177
    iput-object v9, v0, Lcom/mycompany/app/quick/ListDragHelper;->h:Lcom/mycompany/app/view/MyListChild;

    .line 178
    .line 179
    const v1, -0x7e595616

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v1}, Lcom/mycompany/app/view/MyListChild;->setBackColor(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    move-object/from16 v14, p2

    .line 187
    .line 188
    move/from16 v5, p4

    .line 189
    .line 190
    move/from16 v7, p5

    .line 191
    .line 192
    :cond_b
    :goto_3
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->d:Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;

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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;->b(II)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/quick/ListDragHelper;->o()V

    .line 20
    .line 21
    .line 22
    iput p2, p0, Lcom/mycompany/app/quick/ListDragHelper;->i:I

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->d:Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v2, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x2

    .line 11
    if-ne p2, v3, :cond_1

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->i:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-nez p2, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/quick/ListDragHelper;->o()V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->i:I

    .line 35
    .line 36
    if-eq p1, v1, :cond_2

    .line 37
    .line 38
    iget v3, p0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 39
    .line 40
    if-eq v3, v1, :cond_2

    .line 41
    .line 42
    if-eq p1, v3, :cond_2

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {v0, p1, v3}, Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;->c(II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iput v1, p0, Lcom/mycompany/app/quick/ListDragHelper;->i:I

    .line 52
    .line 53
    iput v1, p0, Lcom/mycompany/app/quick/ListDragHelper;->j:I

    .line 54
    .line 55
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/quick/ListDragHelper;->k:Z

    .line 56
    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-interface {v0, p2}, Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;->a(I)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public final n()V
    .locals 0

    .line 1
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/quick/ListDragHelper;->g:Landroid/view/View;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/ListDragHelper;->h:Lcom/mycompany/app/view/MyListChild;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyListChild;->setBackColor(I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/quick/ListDragHelper;->h:Lcom/mycompany/app/view/MyListChild;

    .line 27
    .line 28
    :cond_1
    return-void
.end method
