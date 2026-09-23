.class Lcom/mycompany/app/main/MainLangAdapter$4;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 7
    .line 8
    neg-int v3, v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    sget p1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 18
    .line 19
    int-to-float v6, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v1, p2

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method
