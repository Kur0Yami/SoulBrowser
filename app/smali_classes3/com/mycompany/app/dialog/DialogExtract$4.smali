.class Lcom/mycompany/app/dialog/DialogExtract$4;
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Lcom/mycompany/app/view/MyRoundImage;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :goto_0
    return-void

    .line 9
    :cond_1
    check-cast p2, Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    const p1, -0x70708

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    const/4 p1, 0x0

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
