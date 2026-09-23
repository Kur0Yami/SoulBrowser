.class public Lcom/mycompany/app/drag/DragController;
.super Lcom/mycompany/app/drag/DragViewManager;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public h:Z

.field public i:I

.field public j:Z

.field public k:Landroid/view/GestureDetector;

.field public l:I

.field public m:I

.field public n:I

.field public o:[I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Lcom/mycompany/app/fragment/FragmentDragView;


# virtual methods
.method public final a(Landroid/graphics/Point;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragController;->o:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    iget-object v3, p0, Lcom/mycompany/app/drag/DragController;->u:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 14
    .line 15
    invoke-virtual {v3, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, -0x1

    .line 32
    if-eq v1, v6, :cond_1

    .line 33
    .line 34
    if-lt v1, v2, :cond_1

    .line 35
    .line 36
    sub-int/2addr v5, v4

    .line 37
    if-ge v1, v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int v2, v1, v2

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    float-to-int v3, v3

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    float-to-int p1, p1

    .line 59
    if-nez p2, :cond_0

    .line 60
    .line 61
    move-object p2, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_0
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    aget v4, v0, v4

    .line 74
    .line 75
    if-le v3, v4, :cond_1

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    aget v7, v0, v5

    .line 79
    .line 80
    if-le p1, v7, :cond_1

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    add-int/2addr v7, v4

    .line 87
    if-ge v3, v7, :cond_1

    .line 88
    .line 89
    aget v0, v0, v5

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    add-int/2addr p2, v0

    .line 96
    if-ge p1, p2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, p0, Lcom/mycompany/app/drag/DragController;->p:I

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/mycompany/app/drag/DragController;->q:I

    .line 109
    .line 110
    return v1

    .line 111
    :cond_1
    return v6
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/mycompany/app/drag/DragController;->s:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/drag/DragController;->d(Landroid/view/MotionEvent;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/mycompany/app/drag/DragController;->m:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    float-to-int v2, v2

    .line 17
    iget v3, p0, Lcom/mycompany/app/drag/DragController;->p:I

    .line 18
    .line 19
    sub-int/2addr v2, v3

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    float-to-int v3, v3

    .line 25
    iget v4, p0, Lcom/mycompany/app/drag/DragController;->q:I

    .line 26
    .line 27
    sub-int/2addr v3, v4

    .line 28
    iget-boolean v4, p0, Lcom/mycompany/app/drag/DragController;->h:Z

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    iget-boolean v4, p0, Lcom/mycompany/app/drag/DragController;->j:Z

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    const/16 v4, 0xc

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v4, 0x0

    .line 40
    :goto_0
    iget-object v5, p0, Lcom/mycompany/app/drag/DragController;->u:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    sub-int/2addr v0, v6

    .line 47
    invoke-virtual {v5, v0, v4, v2, v3}, Lcom/mycompany/app/drag/DragListView;->s(IIII)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragController;->r:Z

    .line 52
    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragController;->j:Z

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p0, Lcom/mycompany/app/drag/DragController;->t:Z

    .line 58
    .line 59
    iget v3, p0, Lcom/mycompany/app/drag/DragController;->i:I

    .line 60
    .line 61
    if-ne v3, v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/drag/DragController;->d(Landroid/view/MotionEvent;I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :cond_2
    iput v1, p0, Lcom/mycompany/app/drag/DragController;->n:I

    .line 68
    .line 69
    return v2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget p3, p0, Lcom/mycompany/app/drag/DragController;->l:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    float-to-int p4, p4

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    float-to-int p1, p1

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    float-to-int v0, v0

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    float-to-int p2, p2

    .line 23
    iget-boolean v1, p0, Lcom/mycompany/app/drag/DragController;->t:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/mycompany/app/drag/DragController;->r:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget v1, p0, Lcom/mycompany/app/drag/DragController;->m:I

    .line 33
    .line 34
    const/4 v3, -0x1

    .line 35
    if-ne v1, v3, :cond_0

    .line 36
    .line 37
    iget v4, p0, Lcom/mycompany/app/drag/DragController;->n:I

    .line 38
    .line 39
    if-eq v4, v3, :cond_2

    .line 40
    .line 41
    :cond_0
    if-eq v1, v3, :cond_1

    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    iget v1, p0, Lcom/mycompany/app/drag/DragController;->n:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_2

    .line 47
    .line 48
    sub-int/2addr v0, p4

    .line 49
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    sub-int/2addr p2, p1

    .line 53
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-le p1, p3, :cond_2

    .line 58
    .line 59
    iput-boolean v2, p0, Lcom/mycompany/app/drag/DragController;->t:Z

    .line 60
    .line 61
    :cond_2
    return v2
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/drag/DragController;->u:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/drag/DragListView;->x:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/mycompany/app/drag/DragListView;->l0:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/drag/DragController;->k:Landroid/view/GestureDetector;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    if-eq p1, p2, :cond_1

    .line 28
    .line 29
    const/4 p2, 0x3

    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragController;->j:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/mycompany/app/drag/DragController;->r:Z

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return v1
.end method
