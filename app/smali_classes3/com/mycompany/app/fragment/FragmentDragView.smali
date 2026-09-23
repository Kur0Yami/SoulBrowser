.class public Lcom/mycompany/app/fragment/FragmentDragView;
.super Lcom/mycompany/app/drag/DragListView;
.source "SourceFile"


# instance fields
.field public n0:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I


# direct methods
.method public static u(Lcom/mycompany/app/fragment/FragmentDragView;III)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->p0:I

    .line 2
    .line 3
    sub-int v4, p1, v0

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/fragment/FragmentDragView;->p0:I

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/fragment/FragmentDragView;->o0:I

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->q0:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-gez v4, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->q0:I

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/fragment/FragmentDragView;->n0:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget v5, p0, Lcom/mycompany/app/fragment/FragmentDragView;->q0:I

    .line 27
    .line 28
    move v3, p1

    .line 29
    move v6, p2

    .line 30
    move v7, p3

    .line 31
    invoke-interface/range {v1 .. v7}, Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;->b(IIIIII)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method public final computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeVerticalScrollRange()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->s0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/drag/DragListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->q0:I

    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mycompany/app/drag/DragListView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentDragView;->n0:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p2, p0, Lcom/mycompany/app/fragment/FragmentDragView;->o0:I

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;->a(IZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setBackColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->s0:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/fragment/FragmentDragView;->s0:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFragmentScrollListener(Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentDragView;->n0:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/fragment/FragmentDragView;->v()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->o0:I

    .line 3
    .line 4
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->p0:I

    .line 5
    .line 6
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->q0:I

    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1f

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget v0, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 19
    .line 20
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentDragView;->r0:I

    .line 21
    .line 22
    new-instance v0, Lcom/mycompany/app/fragment/FragmentDragView$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/mycompany/app/fragment/FragmentDragView$2;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/mycompany/app/fragment/FragmentDragView$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/fragment/FragmentDragView$1;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
