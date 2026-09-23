.class public Lcom/mycompany/app/drag/DragListCheckable;
.super Lcom/mycompany/app/drag/DragListItem;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# virtual methods
.method public final isChecked()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/widget/Checkable;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v1, Landroid/widget/Checkable;

    .line 11
    .line 12
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :cond_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/widget/Checkable;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final toggle()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/widget/Checkable;

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
