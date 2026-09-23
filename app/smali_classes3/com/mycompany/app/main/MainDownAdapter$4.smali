.class Lcom/mycompany/app/main/MainDownAdapter$4;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# virtual methods
.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p2, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    :goto_0
    const/4 p2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_3
    check-cast p2, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;

    .line 21
    .line 22
    :goto_1
    if-nez p2, :cond_4

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 30
    .line 31
    if-eq v0, p1, :cond_5

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_5
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    iget-object p1, p2, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    :cond_6
    :goto_2
    return-void
.end method
