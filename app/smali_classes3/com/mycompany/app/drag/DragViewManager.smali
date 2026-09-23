.class public Lcom/mycompany/app/drag/DragViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/drag/DragListView$FloatViewManager;


# instance fields
.field public c:Landroid/graphics/Bitmap;

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/mycompany/app/fragment/FragmentDragView;


# virtual methods
.method public a(Landroid/graphics/Point;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/drag/DragViewManager;->c:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/drag/DragViewManager;->c:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c(I)Landroid/widget/ImageView;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragViewManager;->g:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, p1

    .line 8
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    sub-int/2addr v1, p1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/mycompany/app/drag/DragViewManager;->c:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    new-instance v2, Landroid/graphics/Canvas;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/mycompany/app/drag/DragViewManager;->c:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    new-instance v2, Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 67
    .line 68
    const/high16 v2, -0x1000000

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/mycompany/app/drag/DragViewManager;->c:Landroid/graphics/Bitmap;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 86
    .line 87
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-direct {v1, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/mycompany/app/drag/DragViewManager;->f:Landroid/widget/ImageView;

    .line 104
    .line 105
    return-object p1
.end method
