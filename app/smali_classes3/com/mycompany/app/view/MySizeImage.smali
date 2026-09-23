.class public Lcom/mycompany/app/view/MySizeImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/image/ImageSizeListener;


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MySizeImage;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MySizeImage;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method
