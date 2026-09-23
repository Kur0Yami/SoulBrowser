.class public Lcom/mycompany/app/view/MyFilterRelative;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:I


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/view/MyFilterRelative;->c:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyFilterRelative;->c:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyFilterRelative;->c:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
