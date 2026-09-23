.class public Landroidx/constraintlayout/motion/widget/MotionHelper;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionHelperInterface;


# instance fields
.field public m:F

.field public n:[Landroid/view/View;


# virtual methods
.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->m:F

    .line 2
    .line 3
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->n:[Landroid/view/View;

    .line 19
    .line 20
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 21
    .line 22
    if-ge v0, p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->n:[Landroid/view/View;

    .line 25
    .line 26
    aget-object p1, p1, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_1
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method
