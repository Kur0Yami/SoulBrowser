.class Lcom/mycompany/app/drag/DragListView$DragScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/drag/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragScroller"
.end annotation


# instance fields
.field public c:Z

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:F

.field public k:Z

.field public final synthetic l:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 8
    .line 9
    return-void
.end method

.method public final run()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    sub-int/2addr v6, v5

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    sub-int/2addr v6, v7

    .line 37
    iget v7, v0, Lcom/mycompany/app/drag/DragListView;->Q:I

    .line 38
    .line 39
    iget v8, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 40
    .line 41
    iget v9, v0, Lcom/mycompany/app/drag/DragListView;->B:I

    .line 42
    .line 43
    add-int/2addr v8, v9

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    iget v8, v0, Lcom/mycompany/app/drag/DragListView;->Q:I

    .line 49
    .line 50
    iget v9, v0, Lcom/mycompany/app/drag/DragListView;->i:I

    .line 51
    .line 52
    iget v10, v0, Lcom/mycompany/app/drag/DragListView;->B:I

    .line 53
    .line 54
    sub-int/2addr v9, v10

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iget v9, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->i:I

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    if-nez v9, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    if-nez v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-ne v4, v5, :cond_2

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/drag/DragListView;->O:Lcom/mycompany/app/drag/DragListView$DragScrollProfile;

    .line 85
    .line 86
    iget v7, v0, Lcom/mycompany/app/drag/DragListView;->K:F

    .line 87
    .line 88
    int-to-float v8, v8

    .line 89
    sub-float/2addr v7, v8

    .line 90
    iget v8, v0, Lcom/mycompany/app/drag/DragListView;->L:F

    .line 91
    .line 92
    div-float/2addr v7, v8

    .line 93
    invoke-interface {v4, v7}, Lcom/mycompany/app/drag/DragListView$DragScrollProfile;->a(F)F

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput v4, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->j:F

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    sub-int v8, v3, v2

    .line 101
    .line 102
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    if-nez v8, :cond_4

    .line 107
    .line 108
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    sub-int/2addr v4, v10

    .line 112
    if-ne v3, v4, :cond_5

    .line 113
    .line 114
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    add-int v8, v6, v5

    .line 119
    .line 120
    if-gt v4, v8, :cond_5

    .line 121
    .line 122
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->k:Z

    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    iget-object v4, v0, Lcom/mycompany/app/drag/DragListView;->O:Lcom/mycompany/app/drag/DragListView$DragScrollProfile;

    .line 126
    .line 127
    int-to-float v7, v7

    .line 128
    iget v8, v0, Lcom/mycompany/app/drag/DragListView;->J:F

    .line 129
    .line 130
    sub-float/2addr v7, v8

    .line 131
    iget v8, v0, Lcom/mycompany/app/drag/DragListView;->M:F

    .line 132
    .line 133
    div-float/2addr v7, v8

    .line 134
    invoke-interface {v4, v7}, Lcom/mycompany/app/drag/DragListView$DragScrollProfile;->a(F)F

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    neg-float v4, v4

    .line 139
    iput v4, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->j:F

    .line 140
    .line 141
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v7

    .line 145
    iput-wide v7, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->g:J

    .line 146
    .line 147
    iget-wide v11, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->f:J

    .line 148
    .line 149
    sub-long/2addr v7, v11

    .line 150
    long-to-float v4, v7

    .line 151
    iget v7, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->j:F

    .line 152
    .line 153
    mul-float/2addr v7, v4

    .line 154
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    iput v4, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->h:I

    .line 159
    .line 160
    if-ltz v4, :cond_6

    .line 161
    .line 162
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iput v3, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->h:I

    .line 167
    .line 168
    move v3, v2

    .line 169
    goto :goto_1

    .line 170
    :cond_6
    neg-int v6, v6

    .line 171
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iput v4, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->h:I

    .line 176
    .line 177
    :goto_1
    sub-int v2, v3, v2

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    iget v6, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->h:I

    .line 188
    .line 189
    add-int/2addr v4, v6

    .line 190
    if-nez v3, :cond_7

    .line 191
    .line 192
    if-le v4, v5, :cond_7

    .line 193
    .line 194
    move v4, v5

    .line 195
    :cond_7
    iput-boolean v10, v0, Lcom/mycompany/app/drag/DragListView;->e0:Z

    .line 196
    .line 197
    sub-int/2addr v4, v5

    .line 198
    invoke-virtual {v0, v3, v4}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/mycompany/app/drag/DragListView;->layoutChildren()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 205
    .line 206
    .line 207
    iput-boolean v1, v0, Lcom/mycompany/app/drag/DragListView;->e0:Z

    .line 208
    .line 209
    invoke-virtual {v0, v3, v2, v1}, Lcom/mycompany/app/drag/DragListView;->i(ILandroid/view/View;Z)V

    .line 210
    .line 211
    .line 212
    iget-wide v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->g:J

    .line 213
    .line 214
    iput-wide v1, p0, Lcom/mycompany/app/drag/DragListView$DragScroller;->f:J

    .line 215
    .line 216
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    return-void
.end method
