.class Lcom/mycompany/app/setting/SettingListAdapter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    instance-of v1, p3, Ljava/lang/Float;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p3, Ljava/lang/Float;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p3, v0

    .line 20
    :goto_0
    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    int-to-float p2, p2

    .line 28
    mul-float/2addr p2, p3

    .line 29
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    if-ne v0, p2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    check-cast p1, Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRoundImage;->j()V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-void
.end method
