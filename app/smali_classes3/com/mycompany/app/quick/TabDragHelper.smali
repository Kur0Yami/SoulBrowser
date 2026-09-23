.class public Lcom/mycompany/app/quick/TabDragHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public h:Z

.field public final i:I

.field public j:Lcom/mycompany/app/quick/TabSubView;

.field public k:Lcom/mycompany/app/web/WebTabBarSubView;

.field public l:Landroid/view/View;

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;Lcom/mycompany/app/web/WebTabBarSubView;ZLcom/mycompany/app/quick/TabDragHelper$TabDragListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/mycompany/app/quick/TabDragHelper;->e:Z

    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->j:Lcom/mycompany/app/quick/TabSubView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/quick/TabDragHelper;->k:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iput-boolean p3, p0, Lcom/mycompany/app/quick/TabDragHelper;->f:Z

    .line 18
    .line 19
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    iput p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->i:I

    .line 22
    .line 23
    :goto_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    sget p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    move p1, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    :goto_1
    iput-boolean p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->g:Z

    .line 35
    .line 36
    iput-boolean p3, p0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 37
    .line 38
    iput-object p4, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

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
    iget v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->m:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_0

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/TabDragHelper;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->m:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 11
    .line 12
    iget v2, p0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 13
    .line 14
    if-eq v2, v0, :cond_0

    .line 15
    .line 16
    iput v2, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 22
    .line 23
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 27
    .line 28
    const/high16 p2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->j:Lcom/mycompany/app/quick/TabSubView;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iput-boolean v1, p1, Lcom/mycompany/app/quick/TabSubView;->d0:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/quick/TabSubView;->k()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->k:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->R:Z

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebTabBarSubView;->f()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->e:Z

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->f:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 18
    .line 19
    const/16 v4, 0x26

    .line 20
    .line 21
    if-ne v0, v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 26
    .line 27
    if-ne v0, v4, :cond_1

    .line 28
    .line 29
    or-int/lit8 v3, v2, 0x2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v3, 0x3

    .line 35
    :cond_3
    :goto_1
    invoke-static {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->j(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->g:Z

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_5
    const/16 v2, 0xc

    .line 46
    .line 47
    :goto_2
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->j(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->f:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 26
    .line 27
    const/16 v1, 0x26

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_3
    const/4 v0, 0x0

    .line 38
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
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p7, :cond_1

    .line 13
    .line 14
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v3, 0x1

    .line 19
    if-ne v2, v3, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabDragHelper;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 32
    .line 33
    iput v3, v0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 34
    .line 35
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    div-float/2addr v3, v5

    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    .line 47
    sub-float/2addr v5, v3

    .line 48
    const/4 v3, 0x0

    .line 49
    cmpg-float v6, v5, v3

    .line 50
    .line 51
    if-gez v6, :cond_2

    .line 52
    .line 53
    move v5, v3

    .line 54
    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iget v4, v0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 62
    .line 63
    invoke-interface {v3, v4}, Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;->e(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    move-object/from16 v13, p2

    .line 67
    .line 68
    move/from16 v4, p4

    .line 69
    .line 70
    move/from16 v6, p5

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_4
    const/4 v3, 0x2

    .line 75
    if-ne v2, v3, :cond_3

    .line 76
    .line 77
    iget-boolean v3, v0, Lcom/mycompany/app/quick/TabDragHelper;->f:Z

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 82
    .line 83
    move/from16 v4, p4

    .line 84
    .line 85
    float-to-int v5, v4

    .line 86
    move/from16 v6, p5

    .line 87
    .line 88
    float-to-int v7, v6

    .line 89
    if-nez v3, :cond_6

    .line 90
    .line 91
    :cond_5
    move-object/from16 v13, p2

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    add-int/2addr v11, v5

    .line 108
    div-int/lit8 v5, v9, 0x2

    .line 109
    .line 110
    add-int/2addr v5, v11

    .line 111
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    add-int/2addr v11, v7

    .line 116
    div-int/lit8 v7, v10, 0x2

    .line 117
    .line 118
    add-int/2addr v7, v11

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    const/4 v12, 0x0

    .line 124
    :goto_0
    if-ge v12, v11, :cond_5

    .line 125
    .line 126
    move-object/from16 v13, p2

    .line 127
    .line 128
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    if-eqz v14, :cond_9

    .line 133
    .line 134
    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-eqz v15, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    add-int v1, v15, v9

    .line 150
    .line 151
    add-int v2, v8, v10

    .line 152
    .line 153
    if-le v5, v15, :cond_9

    .line 154
    .line 155
    if-ge v5, v1, :cond_9

    .line 156
    .line 157
    if-le v7, v8, :cond_9

    .line 158
    .line 159
    if-ge v7, v2, :cond_9

    .line 160
    .line 161
    iget-boolean v1, v0, Lcom/mycompany/app/quick/TabDragHelper;->e:Z

    .line 162
    .line 163
    if-eqz v1, :cond_8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_9

    .line 171
    .line 172
    instance-of v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 173
    .line 174
    if-eqz v2, :cond_9

    .line 175
    .line 176
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 177
    .line 178
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->w:I

    .line 179
    .line 180
    if-nez v1, :cond_9

    .line 181
    .line 182
    :goto_1
    move-object v8, v14

    .line 183
    goto :goto_3

    .line 184
    :cond_9
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 185
    .line 186
    move-object/from16 v1, p3

    .line 187
    .line 188
    move/from16 v2, p6

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :goto_3
    const/4 v1, -0x1

    .line 192
    if-nez v8, :cond_a

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabDragHelper;->o()V

    .line 195
    .line 196
    .line 197
    iput v1, v0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_a
    iget-object v2, v0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 201
    .line 202
    if-eqz v2, :cond_b

    .line 203
    .line 204
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_c

    .line 209
    .line 210
    :cond_b
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabDragHelper;->o()V

    .line 211
    .line 212
    .line 213
    iput v1, v0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 214
    .line 215
    iput-object v8, v0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 216
    .line 217
    const v1, 0x3f8ccccd    # 1.1f

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    .line 221
    .line 222
    .line 223
    iget-object v2, v0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 226
    .line 227
    .line 228
    :cond_c
    :goto_4
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;->b(II)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/quick/TabDragHelper;->o()V

    .line 22
    .line 23
    .line 24
    iput p2, p0, Lcom/mycompany/app/quick/TabDragHelper;->m:I

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->j:Lcom/mycompany/app/quick/TabSubView;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/mycompany/app/quick/TabSubView;->setDragPos(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->k:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebTabBarSubView;->setDragPos(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p2, v2, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 7
    .line 8
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x2

    .line 14
    if-ne p2, v3, :cond_4

    .line 15
    .line 16
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 17
    .line 18
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 21
    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->m:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->j:Lcom/mycompany/app/quick/TabSubView;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/quick/TabSubView;->k()V

    .line 40
    .line 41
    .line 42
    iput-object v0, v1, Lcom/mycompany/app/quick/TabSubView;->W:Landroid/view/View;

    .line 43
    .line 44
    iput p1, v1, Lcom/mycompany/app/quick/TabSubView;->a0:I

    .line 45
    .line 46
    iput-boolean v2, v1, Lcom/mycompany/app/quick/TabSubView;->V:Z

    .line 47
    .line 48
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->l7(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->k:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 53
    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabBarSubView;->f()V

    .line 60
    .line 61
    .line 62
    iput-object v0, v1, Lcom/mycompany/app/web/WebTabBarSubView;->N:Landroid/view/View;

    .line 63
    .line 64
    iput p1, v1, Lcom/mycompany/app/web/WebTabBarSubView;->O:I

    .line 65
    .line 66
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebTabBarSubView;->M:Z

    .line 67
    .line 68
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->l7(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    if-nez p2, :cond_6

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/mycompany/app/quick/TabDragHelper;->o()V

    .line 79
    .line 80
    .line 81
    iget p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->m:I

    .line 82
    .line 83
    if-eq p1, v1, :cond_5

    .line 84
    .line 85
    iget v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 86
    .line 87
    if-eq v0, v1, :cond_5

    .line 88
    .line 89
    if-eq p1, v0, :cond_5

    .line 90
    .line 91
    iput-boolean v2, p0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 92
    .line 93
    iget-object v2, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    invoke-interface {v2, p1, v0}, Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;->c(II)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->m:I

    .line 101
    .line 102
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->n:I

    .line 103
    .line 104
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->o:Z

    .line 105
    .line 106
    if-nez p1, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 109
    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    invoke-interface {p1, p2}, Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;->a(I)V

    .line 113
    .line 114
    .line 115
    :cond_7
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 7
    .line 8
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->p:I

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2, v0}, Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;->d(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput v1, p0, Lcom/mycompany/app/quick/TabDragHelper;->q:I

    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

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
    iget-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 18
    .line 19
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->d:Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->j:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->k:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/quick/TabDragHelper;->l:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method
