.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;->f:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 25
    .line 26
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->c:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-wide v8, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d:J

    .line 29
    .line 30
    iget v10, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 31
    .line 32
    iget v11, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->f:I

    .line 33
    .line 34
    invoke-virtual/range {v5 .. v11}, Lcom/mycompany/app/web/WebTabAdapter;->b0(Ljava/util/List;Ljava/util/List;JII)V

    .line 35
    .line 36
    .line 37
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 38
    .line 39
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->c:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget v1, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogTabMini;->Z()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogTabMini;->V()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    sget v5, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 51
    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    move v5, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v5, 0x1

    .line 57
    :goto_0
    new-instance v6, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$4;

    .line 58
    .line 59
    invoke-direct {v6, v1, v5}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$4;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;I)V

    .line 60
    .line 61
    .line 62
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->n:Lcom/mycompany/app/view/MyManagerLinear;

    .line 63
    .line 64
    move-object/from16 v19, v6

    .line 65
    .line 66
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter;

    .line 67
    .line 68
    iget-object v7, v2, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 73
    .line 74
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->c:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-wide v12, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d:J

    .line 77
    .line 78
    iget v14, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 79
    .line 80
    iget v15, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->f:I

    .line 81
    .line 82
    iget v5, v2, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 83
    .line 84
    iget v9, v2, Lcom/mycompany/app/dialog/DialogTabMini;->D0:I

    .line 85
    .line 86
    iget-boolean v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->a:Z

    .line 87
    .line 88
    move/from16 v17, v9

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    move/from16 v18, v4

    .line 92
    .line 93
    move/from16 v16, v5

    .line 94
    .line 95
    invoke-direct/range {v6 .. v19}, Lcom/mycompany/app/web/WebTabAdapter;-><init>(Landroid/content/Context;Lcom/mycompany/app/view/MyRecyclerView;ZLjava/util/List;Ljava/util/List;JIIIIZLandroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 96
    .line 97
    .line 98
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 99
    .line 100
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 101
    .line 102
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->c:Ljava/util/ArrayList;

    .line 103
    .line 104
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 105
    .line 106
    iget-boolean v5, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->a:Z

    .line 107
    .line 108
    if-ne v4, v5, :cond_3

    .line 109
    .line 110
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 111
    .line 112
    iget-object v5, v2, Lcom/mycompany/app/dialog/DialogTabMini;->d0:Lcom/mycompany/app/web/WebNestFrame;

    .line 113
    .line 114
    iput-object v4, v6, Lcom/mycompany/app/web/WebTabAdapter;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 115
    .line 116
    iput-object v5, v6, Lcom/mycompany/app/web/WebTabAdapter;->B:Lcom/mycompany/app/web/WebNestFrame;

    .line 117
    .line 118
    :cond_3
    new-instance v4, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;

    .line 119
    .line 120
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 121
    .line 122
    .line 123
    iput-object v4, v6, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 124
    .line 125
    new-instance v4, Lcom/mycompany/app/quick/TabDragHelper;

    .line 126
    .line 127
    new-instance v5, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$6;

    .line 128
    .line 129
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$6;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 130
    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    invoke-direct {v4, v3, v3, v6, v5}, Lcom/mycompany/app/quick/TabDragHelper;-><init>(Lcom/mycompany/app/quick/TabSubView;Lcom/mycompany/app/web/WebTabBarSubView;ZLcom/mycompany/app/quick/TabDragHelper$TabDragListener;)V

    .line 134
    .line 135
    .line 136
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->o:Lcom/mycompany/app/quick/TabDragHelper;

    .line 137
    .line 138
    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 139
    .line 140
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 141
    .line 142
    .line 143
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->p:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 144
    .line 145
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 151
    .line 152
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->z:Z

    .line 153
    .line 154
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 155
    .line 156
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iget v6, v2, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 161
    .line 162
    iget v7, v2, Lcom/mycompany/app/dialog/DialogTabMini;->D0:I

    .line 163
    .line 164
    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/mycompany/app/web/WebTabAdapter;->Z(IIIZ)V

    .line 165
    .line 166
    .line 167
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 168
    .line 169
    new-instance v4, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$7;

    .line 170
    .line 171
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$7;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 178
    .line 179
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->n:Lcom/mycompany/app/view/MyManagerLinear;

    .line 180
    .line 181
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    .line 183
    .line 184
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 185
    .line 186
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    .line 190
    .line 191
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 192
    .line 193
    new-instance v4, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$8;

    .line 194
    .line 195
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$8;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 199
    .line 200
    .line 201
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 202
    .line 203
    const/4 v4, 0x4

    .line 204
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object v2, v2, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 208
    .line 209
    if-nez v2, :cond_4

    .line 210
    .line 211
    :goto_1
    return-void

    .line 212
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9;

    .line 213
    .line 214
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    .line 219
    .line 220
    return-void
.end method
