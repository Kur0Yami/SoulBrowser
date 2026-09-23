.class Lcom/mycompany/app/web/WebTabAdapter$1;
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
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/mycompany/app/web/WebTabAdapter;->L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-wide v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->u:J

    .line 12
    .line 13
    iget-wide v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_3

    .line 24
    .line 25
    instance-of p1, p2, Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    if-eqz p1, :cond_5

    .line 28
    .line 29
    check-cast p2, Lcom/mycompany/app/view/MyRoundImage;

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 36
    .line 37
    const/16 v0, 0x28

    .line 38
    .line 39
    if-ne p1, v0, :cond_4

    .line 40
    .line 41
    instance-of p1, p2, Lcom/mycompany/app/view/MyTextImage;

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    check-cast p2, Lcom/mycompany/app/view/MyTextImage;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyTextImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    instance-of p1, p2, Lcom/mycompany/app/view/MyThumbView;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    check-cast p2, Lcom/mycompany/app/view/MyThumbView;

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyThumbView;->l(Landroid/graphics/Bitmap;)V

    .line 58
    .line 59
    .line 60
    :cond_5
    :goto_0
    return-void
.end method
