.class Lcom/mycompany/app/crop/CenterHandleHelper;
.super Lcom/mycompany/app/crop/HandleHelper;
.source "SourceFile"


# virtual methods
.method public final a(FFFFLandroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/mycompany/app/crop/CenterHandleHelper;->b(FFLandroid/graphics/RectF;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(FFLandroid/graphics/RectF;F)V
    .locals 8

    .line 1
    sget-object v0, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 4
    .line 5
    sget-object v2, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 6
    .line 7
    iget v3, v2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 8
    .line 9
    sget-object v4, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 10
    .line 11
    iget v5, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 12
    .line 13
    sget-object v6, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 14
    .line 15
    iget v7, v6, Lcom/mycompany/app/crop/Edge;->c:F

    .line 16
    .line 17
    add-float/2addr v1, v5

    .line 18
    const/high16 v5, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v1, v5

    .line 21
    add-float/2addr v3, v7

    .line 22
    div-float/2addr v3, v5

    .line 23
    sub-float/2addr p1, v1

    .line 24
    sub-float/2addr p2, v3

    .line 25
    invoke-virtual {v0, p1}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, p2}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3, p4}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, p3}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v4, p1}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v4, p3, p4}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v4, p3}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v2, p3, p4}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2, p3}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v6, p1}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-virtual {v6, p3, p4}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v6, p3}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v2, p1}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method
