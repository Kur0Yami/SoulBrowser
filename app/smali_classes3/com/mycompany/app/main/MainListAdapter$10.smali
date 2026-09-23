.class Lcom/mycompany/app/main/MainListAdapter$10;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# virtual methods
.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    check-cast p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 19
    .line 20
    iget v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 21
    .line 22
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    const v1, -0x70708

    .line 38
    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->s()V

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_0
    return-void
.end method
