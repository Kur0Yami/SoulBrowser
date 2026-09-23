.class Lcom/mycompany/app/crop/CornerHandleHelper;
.super Lcom/mycompany/app/crop/HandleHelper;
.source "SourceFile"


# virtual methods
.method public final a(FFFFLandroid/graphics/RectF;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/crop/HandleHelper;->b:Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    sget-object v1, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    move v1, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v1, v1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/crop/HandleHelper;->a:Lcom/mycompany/app/crop/Edge;

    .line 12
    .line 13
    sget-object v3, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 14
    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    move v3, p2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v3, v3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 20
    .line 21
    :goto_1
    sget-object v4, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 22
    .line 23
    if-ne v0, v4, :cond_2

    .line 24
    .line 25
    move v4, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v4, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 28
    .line 29
    :goto_2
    sget-object v5, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 30
    .line 31
    if-ne v2, v5, :cond_3

    .line 32
    .line 33
    move v5, p2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget v5, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 36
    .line 37
    :goto_3
    sub-float/2addr v4, v1

    .line 38
    sub-float/2addr v5, v3

    .line 39
    div-float/2addr v4, v5

    .line 40
    cmpl-float v1, v4, p3

    .line 41
    .line 42
    iget-object v3, p0, Lcom/mycompany/app/crop/HandleHelper;->c:Lcom/mycompany/app/crop/EdgePair;

    .line 43
    .line 44
    if-lez v1, :cond_4

    .line 45
    .line 46
    iput-object v0, v3, Lcom/mycompany/app/crop/EdgePair;->a:Lcom/mycompany/app/crop/Edge;

    .line 47
    .line 48
    iput-object v2, v3, Lcom/mycompany/app/crop/EdgePair;->b:Lcom/mycompany/app/crop/Edge;

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    iput-object v2, v3, Lcom/mycompany/app/crop/EdgePair;->a:Lcom/mycompany/app/crop/Edge;

    .line 52
    .line 53
    iput-object v0, v3, Lcom/mycompany/app/crop/EdgePair;->b:Lcom/mycompany/app/crop/Edge;

    .line 54
    .line 55
    :goto_4
    iget-object v4, v3, Lcom/mycompany/app/crop/EdgePair;->a:Lcom/mycompany/app/crop/Edge;

    .line 56
    .line 57
    iget-object v0, v3, Lcom/mycompany/app/crop/EdgePair;->b:Lcom/mycompany/app/crop/Edge;

    .line 58
    .line 59
    move v5, p1

    .line 60
    move v6, p2

    .line 61
    move v8, p3

    .line 62
    move v7, p4

    .line 63
    move-object v9, p5

    .line 64
    invoke-virtual/range {v4 .. v9}, Lcom/mycompany/app/crop/Edge;->b(FFFFLandroid/graphics/RectF;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v8}, Lcom/mycompany/app/crop/Edge;->a(F)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9, v7}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0, v9}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v8}, Lcom/mycompany/app/crop/Edge;->a(F)V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-void
.end method
