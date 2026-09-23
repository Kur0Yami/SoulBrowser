.class Lcom/mycompany/app/drag/DragListView$RemoveAnimator;
.super Lcom/mycompany/app/drag/DragListView$SmoothAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/drag/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveAnimator"
.end annotation


# instance fields
.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public final synthetic t:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->t:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->p:I

    .line 8
    .line 9
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->q:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->t:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/drag/DragListView;->r:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/drag/DragListView;->j(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(F)V
    .locals 10

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    iget-object p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->t:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->r:I

    .line 11
    .line 12
    sub-int/2addr v2, v1

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v3, p1, Lcom/mycompany/app/drag/DragListView;->j0:Z

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    iget-wide v8, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->c:J

    .line 28
    .line 29
    sub-long/2addr v6, v8

    .line 30
    long-to-float v3, v6

    .line 31
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 32
    .line 33
    div-float/2addr v3, v6

    .line 34
    const/4 v6, 0x0

    .line 35
    cmpl-float v7, v3, v6

    .line 36
    .line 37
    if-nez v7, :cond_0

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    iget v7, p1, Lcom/mycompany/app/drag/DragListView;->k0:F

    .line 42
    .line 43
    mul-float/2addr v7, v3

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    iget v9, p1, Lcom/mycompany/app/drag/DragListView;->k0:F

    .line 49
    .line 50
    cmpl-float v6, v9, v6

    .line 51
    .line 52
    if-lez v6, :cond_1

    .line 53
    .line 54
    move v6, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v6, v4

    .line 57
    :goto_0
    int-to-float v6, v6

    .line 58
    mul-float/2addr v6, v3

    .line 59
    int-to-float v3, v8

    .line 60
    mul-float/2addr v6, v3

    .line 61
    add-float/2addr v6, v9

    .line 62
    iput v6, p1, Lcom/mycompany/app/drag/DragListView;->k0:F

    .line 63
    .line 64
    iget v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->m:F

    .line 65
    .line 66
    add-float/2addr v6, v7

    .line 67
    iput v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->m:F

    .line 68
    .line 69
    iget-object v7, p1, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 70
    .line 71
    float-to-int v9, v6

    .line 72
    iput v9, v7, Landroid/graphics/Point;->x:I

    .line 73
    .line 74
    cmpg-float v3, v6, v3

    .line 75
    .line 76
    if-gez v3, :cond_2

    .line 77
    .line 78
    neg-int v3, v8

    .line 79
    int-to-float v3, v3

    .line 80
    cmpl-float v3, v6, v3

    .line 81
    .line 82
    if-lez v3, :cond_2

    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iput-wide v0, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->c:J

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/mycompany/app/drag/DragListView;->h()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    const/4 v3, 0x0

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->p:I

    .line 98
    .line 99
    if-ne v6, v4, :cond_3

    .line 100
    .line 101
    iget v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->r:I

    .line 102
    .line 103
    invoke-virtual {p1, v6, v2, v3}, Lcom/mycompany/app/drag/DragListView;->m(ILandroid/view/View;Z)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    iput v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->p:I

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    iget v7, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->p:I

    .line 114
    .line 115
    sub-int/2addr v6, v7

    .line 116
    int-to-float v6, v6

    .line 117
    iput v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->n:F

    .line 118
    .line 119
    :cond_3
    iget v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->n:F

    .line 120
    .line 121
    mul-float/2addr v6, v0

    .line 122
    float-to-int v6, v6

    .line 123
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    iget v8, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->p:I

    .line 132
    .line 133
    add-int/2addr v8, v6

    .line 134
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .line 136
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->s:I

    .line 140
    .line 141
    iget v6, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->r:I

    .line 142
    .line 143
    if-eq v2, v6, :cond_6

    .line 144
    .line 145
    sub-int/2addr v2, v1

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->q:I

    .line 153
    .line 154
    if-ne v2, v4, :cond_5

    .line 155
    .line 156
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->s:I

    .line 157
    .line 158
    invoke-virtual {p1, v2, v1, v3}, Lcom/mycompany/app/drag/DragListView;->m(ILandroid/view/View;Z)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->q:I

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->q:I

    .line 169
    .line 170
    sub-int/2addr p1, v2

    .line 171
    int-to-float p1, p1

    .line 172
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->o:F

    .line 173
    .line 174
    :cond_5
    iget p1, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->o:F

    .line 175
    .line 176
    mul-float/2addr v0, p1

    .line 177
    float-to-int p1, v0

    .line 178
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$RemoveAnimator;->q:I

    .line 187
    .line 188
    add-int/2addr v2, p1

    .line 189
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    :goto_1
    return-void
.end method
