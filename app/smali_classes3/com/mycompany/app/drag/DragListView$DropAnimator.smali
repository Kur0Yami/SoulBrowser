.class Lcom/mycompany/app/drag/DragListView$DropAnimator;
.super Lcom/mycompany/app/drag/DragListView$SmoothAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/drag/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropAnimator"
.end annotation


# instance fields
.field public m:I

.field public n:I

.field public o:F

.field public p:F

.field public final synthetic q:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->q:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;-><init>(Lcom/mycompany/app/fragment/FragmentDragView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/drag/DragListView;->m0:I

    .line 2
    .line 3
    new-instance v0, Lcom/mycompany/app/drag/DragListView$3;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->q:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/mycompany/app/drag/DragListView$3;-><init>(Lcom/mycompany/app/drag/DragListView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(F)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView$DropAnimator;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->q:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v1, Lcom/mycompany/app/drag/DragListView;->g:Landroid/graphics/Point;

    .line 12
    .line 13
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 14
    .line 15
    sub-int/2addr v4, v0

    .line 16
    int-to-float v4, v4

    .line 17
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    sub-int/2addr v5, v2

    .line 20
    int-to-float v2, v5

    .line 21
    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    .line 23
    sub-float/2addr v5, p1

    .line 24
    iget p1, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->o:F

    .line 25
    .line 26
    div-float/2addr v4, p1

    .line 27
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    cmpg-float p1, v5, p1

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    iget p1, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->p:F

    .line 36
    .line 37
    div-float/2addr v2, p1

    .line 38
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    cmpg-float p1, v5, p1

    .line 43
    .line 44
    if-gez p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->o:F

    .line 49
    .line 50
    mul-float/2addr p1, v5

    .line 51
    float-to-int p1, p1

    .line 52
    add-int/2addr v0, p1

    .line 53
    iput v0, v3, Landroid/graphics/Point;->y:I

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget v0, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->p:F

    .line 60
    .line 61
    mul-float/2addr v0, v5

    .line 62
    float-to-int v0, v0

    .line 63
    add-int/2addr p1, v0

    .line 64
    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/mycompany/app/drag/DragListView;->h()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final c()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->q:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, Lcom/mycompany/app/drag/DragListView;->z:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    add-int/2addr v3, v2

    .line 14
    div-int/lit8 v3, v3, 0x2

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->m:I

    .line 17
    .line 18
    sub-int/2addr v2, v1

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->m:I

    .line 26
    .line 27
    iget v4, p0, Lcom/mycompany/app/drag/DragListView$DropAnimator;->n:I

    .line 28
    .line 29
    if-ne v2, v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_0
    if-ge v2, v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int/2addr v0, v3

    .line 43
    return v0

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v3

    .line 49
    iget v0, v0, Lcom/mycompany/app/drag/DragListView;->A:I

    .line 50
    .line 51
    sub-int/2addr v1, v0

    .line 52
    return v1

    .line 53
    :cond_2
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->k:Z

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    return v0
.end method
