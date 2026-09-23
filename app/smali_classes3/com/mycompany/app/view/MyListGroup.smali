.class public Lcom/mycompany/app/view/MyListGroup;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:F

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Z


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListGroup;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/mycompany/app/view/MyListGroup;->h:F

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/mycompany/app/view/MyListGroup;->f:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyListGroup;->k:Z

    .line 33
    .line 34
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eq v2, v3, :cond_4

    .line 37
    .line 38
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyListGroup;->k:Z

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_d:I

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_d:I

    .line 55
    .line 56
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_w:I

    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_w:I

    .line 68
    .line 69
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_1
    iput-object v3, p0, Lcom/mycompany/app/view/MyListGroup;->i:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/view/MyListGroup;->j:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyListGroup;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    :catch_0
    :cond_4
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyListGroup;->g:Z

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyListGroup;->g:Z

    .line 86
    .line 87
    sget v3, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 88
    .line 89
    sub-int v3, v1, v3

    .line 90
    .line 91
    iget-object v4, p0, Lcom/mycompany/app/view/MyListGroup;->f:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    sget v5, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 94
    .line 95
    add-int/2addr v5, v3

    .line 96
    invoke-virtual {v4, v2, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lcom/mycompany/app/view/MyListGroup;->i:Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    sget v5, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 102
    .line 103
    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/mycompany/app/view/MyListGroup;->j:Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    sget v4, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 109
    .line 110
    sub-int v4, v0, v4

    .line 111
    .line 112
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget v2, p0, Lcom/mycompany/app/view/MyListGroup;->h:F

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    cmpl-float v4, v2, v3

    .line 119
    .line 120
    if-lez v4, :cond_6

    .line 121
    .line 122
    int-to-float v0, v0

    .line 123
    int-to-float v1, v1

    .line 124
    sub-float/2addr v1, v2

    .line 125
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyListGroup;->f:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/view/MyListGroup;->i:Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/view/MyListGroup;->j:Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListGroup;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyListGroup;->g:Z

    .line 6
    .line 7
    return-void
.end method

.method public setShadowBottom(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyListGroup;->h:F

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyListGroup;->h:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyListGroup;->invalidate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
