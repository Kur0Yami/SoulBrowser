.class public Lcom/mycompany/app/fragment/FragmentExpandView;
.super Lcom/mycompany/app/expand/ExpandListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;
    }
.end annotation


# instance fields
.field public f:Z

.field public g:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/fragment/FragmentExpandView;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->f:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 6
    .line 7
    iput v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->i:I

    .line 8
    .line 9
    iput v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->j:I

    .line 10
    .line 11
    iput v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->k:I

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1f

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget v1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 24
    .line 25
    iput v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->o:I

    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/fragment/FragmentExpandView$2;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/fragment/FragmentExpandView$2;-><init>(Lcom/mycompany/app/fragment/FragmentExpandView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/mycompany/app/fragment/FragmentExpandView$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/mycompany/app/fragment/FragmentExpandView$1;-><init>(Lcom/mycompany/app/fragment/FragmentExpandView;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ExpandableListView;->computeVerticalScrollExtent()I

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
    invoke-super {p0}, Landroid/widget/ExpandableListView;->computeVerticalScrollOffset()I

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
    invoke-super {p0}, Landroid/widget/ExpandableListView;->computeVerticalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final d(III)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->i:I

    .line 2
    .line 3
    sub-int v4, p1, v0

    .line 4
    .line 5
    iput v4, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->j:I

    .line 6
    .line 7
    iput p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->i:I

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->k:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-gez v4, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->k:I

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->g:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v5, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->k:I

    .line 29
    .line 30
    move v3, p1

    .line 31
    move v6, p2

    .line 32
    move v7, p3

    .line 33
    invoke-interface/range {v1 .. v7}, Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;->b(IIIIII)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->p:I

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
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->n:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->l:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->m:Z

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->m:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sget v3, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->l:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    .line 41
    .line 42
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
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->k:I

    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->n:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->n:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->m:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->l:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->l:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr p1, v1

    .line 19
    add-int/2addr p1, v0

    .line 20
    invoke-super {p0}, Landroid/widget/ExpandableListView;->computeVerticalScrollOffset()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v0, p1, v1}, Lcom/mycompany/app/fragment/FragmentExpandView;->d(III)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getListScrolled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->g:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget p2, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 9
    .line 10
    iget-object p3, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p3, p3, Lcom/mycompany/app/expand/ExpandListAdapter;->c:Z

    .line 17
    .line 18
    :goto_0
    invoke-interface {p1, p2, p3}, Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;->a(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->m:Z

    .line 23
    .line 24
    return-void
.end method

.method public setBackColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->p:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->p:I

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
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentExpandView;->g:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

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
    invoke-virtual {p0}, Lcom/mycompany/app/fragment/FragmentExpandView;->c()V

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
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
