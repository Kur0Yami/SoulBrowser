.class Lcom/mycompany/app/web/WebSearchAdapter$1;
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
    instance-of v0, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

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
    check-cast p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 21
    .line 22
    :goto_1
    if-nez p2, :cond_4

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_4
    iget-object v0, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 35
    .line 36
    if-eq v0, p1, :cond_6

    .line 37
    .line 38
    :goto_2
    return-void

    .line 39
    :cond_6
    iget-object p1, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
