.class Lcom/mycompany/app/web/WebSearchAdapter2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    sget v0, Lcom/mycompany/app/web/WebSearchAdapter2;->B:I

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    instance-of v0, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    :goto_0
    const/4 p2, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_3
    check-cast p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 23
    .line 24
    :goto_1
    if-nez p2, :cond_4

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    if-nez v0, :cond_5

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_5
    iget p2, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->E:I

    .line 33
    .line 34
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 35
    .line 36
    if-eq p2, p1, :cond_6

    .line 37
    .line 38
    :goto_2
    return-void

    .line 39
    :cond_6
    invoke-virtual {v0, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
