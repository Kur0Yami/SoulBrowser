.class public Lcom/mycompany/app/quick/QuickSearch;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;
    }
.end annotation


# static fields
.field public static final synthetic f0:I


# instance fields
.field public A:Lcom/mycompany/app/view/MyManagerGrid;

.field public B:Lcom/mycompany/app/view/MyManagerLinear;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Lcom/mycompany/app/view/MyRecyclerView;

.field public H:Lcom/mycompany/app/web/WebSearchAdapter;

.field public I:Lcom/mycompany/app/view/MyManagerLinear;

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Lcom/mycompany/app/view/MyPopupMenu;

.field public a0:Z

.field public b0:F

.field public c:Lcom/mycompany/app/web/WebViewActivity;

.field public c0:F

.field public d0:Ljava/util/ArrayList;

.field public e0:Ljava/util/List;

.field public f:Lcom/mycompany/app/web/WebViewActivity;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

.field public t:Landroidx/core/widget/NestedScrollView;

.field public u:Landroid/widget/LinearLayout;

.field public v:Lcom/mycompany/app/view/MyButtonImage;

.field public w:Landroid/widget/LinearLayout;

.field public x:Lcom/mycompany/app/view/MyClipView;

.field public y:Lcom/mycompany/app/view/MyRecyclerView;

.field public z:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public static bridge synthetic a(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/quick/QuickSearch;->getItemList()V

    return-void
.end method

.method public static b(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 10

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickSearch;->h(Z)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/mycompany/app/quick/QuickSearch;->n:I

    .line 20
    .line 21
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v1, v3, :cond_2

    .line 26
    .line 27
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->B:Lcom/mycompany/app/view/MyManagerLinear;

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/view/MyManagerGrid;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->A:Lcom/mycompany/app/view/MyManagerGrid;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->A:Lcom/mycompany/app/view/MyManagerGrid;

    .line 38
    .line 39
    new-instance v0, Lcom/mycompany/app/view/MyManagerLinear;

    .line 40
    .line 41
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->B:Lcom/mycompany/app/view/MyManagerLinear;

    .line 45
    .line 46
    :goto_1
    new-instance v4, Lcom/mycompany/app/quick/QuickAdapter;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 49
    .line 50
    iget-boolean v7, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 51
    .line 52
    new-instance v9, Lcom/mycompany/app/quick/QuickSearch$6;

    .line 53
    .line 54
    invoke-direct {v9, p0}, Lcom/mycompany/app/quick/QuickSearch$6;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x2

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/quick/QuickAdapter;-><init>(Landroid/content/Context;IZLcom/mycompany/app/view/MyManagerGrid;Lcom/mycompany/app/quick/QuickAdapter$QuickListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 63
    .line 64
    new-instance v0, Lcom/mycompany/app/quick/QuickSearch$7;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSearch$7;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, v4, Lcom/mycompany/app/quick/QuickAdapter;->C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 72
    .line 73
    iput-boolean v0, v4, Lcom/mycompany/app/quick/QuickAdapter;->i:Z

    .line 74
    .line 75
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 76
    .line 77
    if-ne v0, v3, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->A:Lcom/mycompany/app/view/MyManagerGrid;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->B:Lcom/mycompany/app/view/MyManagerLinear;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/quick/QuickSearch;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/quick/QuickSearch;->setScrollTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static d(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    iget-boolean p0, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 17
    .line 18
    if-eqz p0, :cond_3

    .line 19
    .line 20
    sget p0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne p0, v2, :cond_3

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v2, p0, :cond_4

    .line 33
    .line 34
    :goto_1
    return-void

    .line 35
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 42
    .line 43
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static e(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 31
    .line 32
    :cond_3
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 33
    .line 34
    if-ne p0, v3, :cond_4

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_4
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    .line 39
    return-void
.end method

.method public static f(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 9
    .line 10
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->j:Z

    .line 15
    .line 16
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->k:Z

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->l:Z

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 31
    .line 32
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/high16 v2, 0x21000000

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/high16 v2, -0x7f000000

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    .line 55
    .line 56
    :goto_1
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    const/4 v4, 0x0

    .line 60
    if-eq v2, v3, :cond_3

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v2, v4

    .line 68
    :goto_2
    iget-boolean v5, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 69
    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    move v5, v4

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 75
    .line 76
    :goto_3
    iget v6, p0, Lcom/mycompany/app/quick/QuickSearch;->J:I

    .line 77
    .line 78
    if-ne v6, v2, :cond_5

    .line 79
    .line 80
    iget v6, p0, Lcom/mycompany/app/quick/QuickSearch;->K:I

    .line 81
    .line 82
    if-ne v6, v2, :cond_5

    .line 83
    .line 84
    iget v6, p0, Lcom/mycompany/app/quick/QuickSearch;->L:I

    .line 85
    .line 86
    if-ne v6, v5, :cond_5

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    iput v2, p0, Lcom/mycompany/app/quick/QuickSearch;->J:I

    .line 90
    .line 91
    iput v2, p0, Lcom/mycompany/app/quick/QuickSearch;->K:I

    .line 92
    .line 93
    iput v5, p0, Lcom/mycompany/app/quick/QuickSearch;->L:I

    .line 94
    .line 95
    iget v6, p0, Lcom/mycompany/app/quick/QuickSearch;->M:I

    .line 96
    .line 97
    iget v7, p0, Lcom/mycompany/app/quick/QuickSearch;->N:I

    .line 98
    .line 99
    add-int/2addr v5, v7

    .line 100
    invoke-virtual {p0, v2, v6, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->l()V

    .line 104
    .line 105
    .line 106
    :goto_4
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 107
    .line 108
    const v5, -0xdededf

    .line 109
    .line 110
    .line 111
    const/high16 v6, -0x1000000

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, -0x1

    .line 115
    const/4 v9, 0x1

    .line 116
    if-nez v2, :cond_7

    .line 117
    .line 118
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    goto :goto_a

    .line 129
    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0, v9, v9}, Lcom/mycompany/app/quick/QuickSearch;->o(ZZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_8
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 136
    .line 137
    if-eqz v2, :cond_9

    .line 138
    .line 139
    invoke-virtual {p0, v9, v4}, Lcom/mycompany/app/quick/QuickSearch;->o(ZZ)V

    .line 140
    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_9
    invoke-virtual {p0, v4, v9}, Lcom/mycompany/app/quick/QuickSearch;->o(ZZ)V

    .line 144
    .line 145
    .line 146
    :goto_6
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 147
    .line 148
    if-ne v2, v9, :cond_b

    .line 149
    .line 150
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    if-eqz v1, :cond_a

    .line 153
    .line 154
    move v10, v6

    .line 155
    goto :goto_7

    .line 156
    :cond_a
    const v10, -0x70708

    .line 157
    .line 158
    .line 159
    :goto_7
    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_b
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    if-eqz v1, :cond_c

    .line 166
    .line 167
    move v10, v5

    .line 168
    goto :goto_8

    .line 169
    :cond_c
    move v10, v8

    .line 170
    :goto_8
    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    .line 172
    .line 173
    :goto_9
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 174
    .line 175
    xor-int/lit8 v10, v2, 0x1

    .line 176
    .line 177
    iget-object v11, p0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 178
    .line 179
    if-nez v11, :cond_d

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_d
    iget-boolean v12, p0, Lcom/mycompany/app/quick/QuickSearch;->E:Z

    .line 183
    .line 184
    if-ne v12, v2, :cond_e

    .line 185
    .line 186
    iget-boolean v12, p0, Lcom/mycompany/app/quick/QuickSearch;->F:Z

    .line 187
    .line 188
    if-ne v12, v10, :cond_e

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_e
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->E:Z

    .line 192
    .line 193
    iput-boolean v10, p0, Lcom/mycompany/app/quick/QuickSearch;->F:Z

    .line 194
    .line 195
    if-nez v2, :cond_f

    .line 196
    .line 197
    if-eqz v2, :cond_f

    .line 198
    .line 199
    invoke-virtual {v11, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_f
    new-instance v2, Lcom/mycompany/app/quick/QuickSearch$10;

    .line 204
    .line 205
    invoke-direct {v2, p0}, Lcom/mycompany/app/quick/QuickSearch$10;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v11, v9}, Landroid/view/View;->setClipToOutline(Z)V

    .line 212
    .line 213
    .line 214
    :goto_a
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 215
    .line 216
    iget-boolean v10, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 217
    .line 218
    iget-boolean v11, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 219
    .line 220
    iget-boolean v12, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 221
    .line 222
    invoke-virtual {v2, v10, v11, v12}, Lcom/mycompany/app/view/MyClipView;->h(ZZZ)V

    .line 223
    .line 224
    .line 225
    if-eqz v1, :cond_10

    .line 226
    .line 227
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 228
    .line 229
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_drop_down_dark_24:I

    .line 230
    .line 231
    invoke-virtual {v2, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    const v10, -0xc0c0c1

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_10
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 244
    .line 245
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_drop_down_black_24:I

    .line 246
    .line 247
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    const v6, -0x1f1f20

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v8, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 256
    .line 257
    .line 258
    :goto_b
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 259
    .line 260
    if-eqz v2, :cond_16

    .line 261
    .line 262
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 263
    .line 264
    if-eq v2, v3, :cond_12

    .line 265
    .line 266
    if-eqz v0, :cond_11

    .line 267
    .line 268
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 269
    .line 270
    goto :goto_c

    .line 271
    :cond_11
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_12
    move v0, v4

    .line 275
    :goto_c
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 276
    .line 277
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eq v2, v0, :cond_13

    .line 282
    .line 283
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 284
    .line 285
    invoke-virtual {v2, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 286
    .line 287
    .line 288
    :cond_13
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 289
    .line 290
    if-ne v0, v9, :cond_15

    .line 291
    .line 292
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 293
    .line 294
    invoke-virtual {v0, v9, v9}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 298
    .line 299
    if-eqz v1, :cond_14

    .line 300
    .line 301
    goto :goto_d

    .line 302
    :cond_14
    move v5, v8

    .line 303
    :goto_d
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_e

    .line 307
    :cond_15
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 308
    .line 309
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 313
    .line 314
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    .line 316
    .line 317
    :goto_e
    iget-object p0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 318
    .line 319
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_16
    iget-object p0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 324
    .line 325
    const/16 v0, 0x8

    .line 326
    .line 327
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public static g(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-boolean p0, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 12
    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v2, p0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 28
    .line 29
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    const v3, 0x800005

    .line 33
    .line 34
    .line 35
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 36
    .line 37
    invoke-virtual {v1, v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private getBodyPadding()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

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
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 8
    .line 9
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_2

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    sget v2, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 26
    .line 27
    :goto_0
    add-int/2addr v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 44
    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_5

    .line 52
    .line 53
    return v1

    .line 54
    :cond_5
    check-cast v2, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    goto :goto_2

    .line 61
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    sub-int/2addr v2, v3

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    sub-int/2addr v2, v0

    .line 76
    if-gtz v2, :cond_7

    .line 77
    .line 78
    return v1

    .line 79
    :cond_7
    return v2
.end method

.method private getItemList()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->d0:Ljava/util/ArrayList;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->e0:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 8
    .line 9
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->O:Z

    .line 20
    .line 21
    invoke-static {v0, v1, v1, v2}, Lcom/mycompany/app/db/book/DbBookQuick;->k(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->O:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    move v1, v3

    .line 36
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 37
    .line 38
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->d0:Ljava/util/ArrayList;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-boolean v2, v2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 65
    .line 66
    :cond_4
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookRecent;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 81
    .line 82
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v0, v2, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 87
    .line 88
    iput-boolean v1, v2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 89
    .line 90
    :cond_6
    if-eqz v0, :cond_7

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_7

    .line 97
    .line 98
    move v1, v3

    .line 99
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 100
    .line 101
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->e0:Ljava/util/List;

    .line 102
    .line 103
    return-void
.end method

.method public static h(Z)I
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 18
    .line 19
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 24
    .line 25
    :cond_3
    if-eqz p0, :cond_4

    .line 26
    .line 27
    sget p0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_4
    sget p0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 31
    .line 32
    :goto_0
    if-nez p0, :cond_5

    .line 33
    .line 34
    return v1

    .line 35
    :cond_5
    return p0
.end method

.method private setScrollTouch(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_4

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->a0:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget v0, p0, Lcom/mycompany/app/quick/QuickSearch;->b0:F

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sub-float/2addr v0, v1

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    cmpl-float v0, v0, v1

    .line 43
    .line 44
    if-gtz v0, :cond_3

    .line 45
    .line 46
    iget v0, p0, Lcom/mycompany/app/quick/QuickSearch;->c0:F

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sub-float/2addr v0, p1

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    cmpl-float p1, p1, v0

    .line 61
    .line 62
    if-lez p1, :cond_6

    .line 63
    .line 64
    :cond_3
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->a0:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->a0:Z

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->a0:Z

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    invoke-interface {p1}, Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;->k()V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_0
    return-void

    .line 82
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->a0:Z

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/mycompany/app/quick/QuickSearch;->b0:F

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/mycompany/app/quick/QuickSearch;->c0:F

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public getOutPadBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/QuickSearch;->N:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutPadHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/mycompany/app/quick/QuickSearch;->M:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget v1, p0, Lcom/mycompany/app/quick/QuickSearch;->N:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->W:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->W:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Landroidx/core/widget/NestedScrollView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, v2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 19
    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-virtual {p0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    .line 33
    .line 34
    const/16 v6, 0x8

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    .line 49
    .line 50
    const/4 v8, -0x2

    .line 51
    invoke-virtual {v4, v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 52
    .line 53
    .line 54
    new-instance v9, Lcom/mycompany/app/view/MyRecyclerView;

    .line 55
    .line 56
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget v10, Lcom/mycompany/app/main/MainApp;->B1:I

    .line 60
    .line 61
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyRecyclerView;->setRoundSize(I)V

    .line 62
    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual {v9, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v9, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 75
    .line 76
    .line 77
    iget-boolean v11, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 78
    .line 79
    if-eqz v11, :cond_2

    .line 80
    .line 81
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 82
    .line 83
    if-ne v11, v2, :cond_2

    .line 84
    .line 85
    move v2, v5

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v2, v10

    .line 88
    :goto_1
    new-instance v11, Lcom/mycompany/app/view/MyClipView;

    .line 89
    .line 90
    iget-object v12, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 91
    .line 92
    invoke-direct {v11, v12}, Lcom/mycompany/app/view/MyClipView;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    .line 100
    sget v12, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 101
    .line 102
    invoke-direct {v6, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v11, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 109
    .line 110
    xor-int/2addr v2, v5

    .line 111
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    .line 120
    .line 121
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 122
    .line 123
    int-to-float v6, v6

    .line 124
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 125
    .line 126
    int-to-float v12, v12

    .line 127
    invoke-virtual {v5, v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 128
    .line 129
    .line 130
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    .line 132
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 133
    .line 134
    invoke-direct {v6, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    const v12, 0x800005

    .line 138
    .line 139
    .line 140
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 141
    .line 142
    invoke-virtual {v4, v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lcom/mycompany/app/view/MyRecyclerView;

    .line 146
    .line 147
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    sget v0, Lcom/mycompany/app/main/MainApp;->B1:I

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyRecyclerView;->setRoundSize(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 159
    .line 160
    .line 161
    const/4 v0, 0x4

    .line 162
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 169
    .line 170
    iput-object v4, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    iput-object v5, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    iput-object v7, p0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 175
    .line 176
    iput-object v11, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 177
    .line 178
    iput-object v9, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 179
    .line 180
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 181
    .line 182
    new-instance v0, Lcom/mycompany/app/quick/QuickSearch$1;

    .line 183
    .line 184
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSearch$1;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 191
    .line 192
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$2;

    .line 193
    .line 194
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$2;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 201
    .line 202
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$3;

    .line 203
    .line 204
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$3;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    new-instance v0, Lcom/mycompany/app/quick/QuickSearch$4;

    .line 211
    .line 212
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSearch$4;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/mycompany/app/quick/QuickSearch;->getBodyPadding()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v2, v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->R:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lcom/mycompany/app/quick/QuickSearch$15;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSearch$15;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->d0:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->e0:Ljava/util/List;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->m()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$14;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$14;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final o(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->C:Z

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->D:Z

    .line 11
    .line 12
    if-ne v1, p2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->C:Z

    .line 16
    .line 17
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->D:Z

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$9;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$9;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$19;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$19;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final p(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x4

    .line 8
    if-eqz p2, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 17
    .line 18
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyClipView;->b()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    if-ltz p1, :cond_6

    .line 42
    .line 43
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSearch;->I:Lcom/mycompany/app/view/MyManagerLinear;

    .line 44
    .line 45
    if-eqz p2, :cond_6

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v2, :cond_5

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->V:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->R:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->V:Z

    .line 12
    .line 13
    new-instance v0, Lcom/mycompany/app/quick/QuickSearch$13;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSearch$13;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final r(ZZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->Q:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->T:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->U:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->V:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->r:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->i()V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x8

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyClipView;->b()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickSearch;->h(Z)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 56
    .line 57
    if-ne v2, p2, :cond_2

    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->j:Z

    .line 60
    .line 61
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->k:Z

    .line 68
    .line 69
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 70
    .line 71
    if-ne v2, v3, :cond_2

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->l:Z

    .line 74
    .line 75
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 76
    .line 77
    if-ne v2, v3, :cond_2

    .line 78
    .line 79
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 80
    .line 81
    if-ne v2, p3, :cond_2

    .line 82
    .line 83
    iget v2, p0, Lcom/mycompany/app/quick/QuickSearch;->n:I

    .line 84
    .line 85
    if-ne v2, p1, :cond_2

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->o:Z

    .line 88
    .line 89
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 90
    .line 91
    if-ne v2, v3, :cond_2

    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->p:Z

    .line 94
    .line 95
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 96
    .line 97
    if-ne v2, v3, :cond_2

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->q:Z

    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 102
    .line 103
    if-ne v2, v3, :cond_2

    .line 104
    .line 105
    move p1, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 108
    .line 109
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->j:Z

    .line 114
    .line 115
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 116
    .line 117
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->k:Z

    .line 118
    .line 119
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 120
    .line 121
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->l:Z

    .line 122
    .line 123
    iput-boolean p3, p0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 124
    .line 125
    iput p1, p0, Lcom/mycompany/app/quick/QuickSearch;->n:I

    .line 126
    .line 127
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 128
    .line 129
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->o:Z

    .line 130
    .line 131
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 132
    .line 133
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->p:Z

    .line 134
    .line 135
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 136
    .line 137
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->q:Z

    .line 138
    .line 139
    move p1, v0

    .line 140
    :goto_0
    iget-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->Q:Z

    .line 141
    .line 142
    const/4 p3, 0x4

    .line 143
    if-nez p2, :cond_3

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    sget p2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    if-ne p2, v2, :cond_4

    .line 150
    .line 151
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 152
    .line 153
    invoke-static {p2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    iget-boolean p2, p2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 158
    .line 159
    if-eqz p2, :cond_4

    .line 160
    .line 161
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->n()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_4
    if-eqz p1, :cond_6

    .line 172
    .line 173
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->T:Z

    .line 179
    .line 180
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->R:Z

    .line 181
    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    goto/16 :goto_5

    .line 185
    .line 186
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->T:Z

    .line 187
    .line 188
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$11;

    .line 189
    .line 190
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$11;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    if-nez p1, :cond_7

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-direct {p0}, Lcom/mycompany/app/quick/QuickSearch;->getBodyPadding()I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    if-eq p1, p2, :cond_9

    .line 211
    .line 212
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 213
    .line 214
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->U:Z

    .line 218
    .line 219
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->R:Z

    .line 220
    .line 221
    if-eqz p1, :cond_8

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->U:Z

    .line 225
    .line 226
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$12;

    .line 227
    .line 228
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$12;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    iget-boolean p2, p0, Lcom/mycompany/app/quick/QuickSearch;->r:Z

    .line 240
    .line 241
    if-eq p2, p1, :cond_a

    .line 242
    .line 243
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->r:Z

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_a
    sget p1, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 247
    .line 248
    if-eq p1, v2, :cond_b

    .line 249
    .line 250
    move p1, v1

    .line 251
    goto :goto_3

    .line 252
    :cond_b
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->Q:Z

    .line 253
    .line 254
    if-nez p1, :cond_c

    .line 255
    .line 256
    move p1, v0

    .line 257
    goto :goto_3

    .line 258
    :cond_c
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 259
    .line 260
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget-boolean p1, p1, Lcom/mycompany/app/data/book/DataBookRecent;->c:Z

    .line 265
    .line 266
    :goto_3
    if-eqz p1, :cond_d

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 270
    .line 271
    if-nez p1, :cond_e

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_f

    .line 279
    .line 280
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 281
    .line 282
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->V:Z

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->q()V

    .line 288
    .line 289
    .line 290
    :cond_f
    :goto_5
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 291
    .line 292
    if-nez p1, :cond_11

    .line 293
    .line 294
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 295
    .line 296
    if-eqz p1, :cond_10

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_10
    const/high16 p1, 0x21000000

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 302
    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_11
    :goto_6
    const/high16 p1, -0x7f000000

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 308
    .line 309
    .line 310
    :goto_7
    const/4 p1, -0x1

    .line 311
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/quick/QuickSearch;->p(IZ)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->H:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setAutoAdapter(Lcom/mycompany/app/web/WebSearchAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->H:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iput-object v0, p1, Lcom/mycompany/app/web/WebSearchAdapter;->w:Lcom/mycompany/app/view/MyRecyclerView;

    .line 11
    .line 12
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setBusyMode(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->R:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->m()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->T:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->T:Z

    .line 25
    .line 26
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$11;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$11;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->U:Z

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->U:Z

    .line 45
    .line 46
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$12;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$12;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->V:Z

    .line 56
    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->q()V

    .line 60
    .line 61
    .line 62
    :cond_6
    :goto_0
    return-void
.end method

.method public setLoadClip(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyClipView;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance p1, Lcom/mycompany/app/quick/QuickSearch$17;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSearch$17;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 42
    .line 43
    new-instance v0, Lcom/mycompany/app/quick/QuickSearch$16;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickSearch$16;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickSearch;->Q:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, v1, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    move v2, v1

    .line 43
    :cond_2
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickSearch;->h:Z

    .line 44
    .line 45
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickSearch;->e0:Ljava/util/List;

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickSearch;->m()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method
