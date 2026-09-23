.class final Landroidx/mediarouter/app/OverlayListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/OverlayListView$OverlayObject;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_7

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v4, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    .line 41
    iget-object v5, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->c:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-boolean v6, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->k:Z

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    iget-wide v6, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->i:J

    .line 50
    .line 51
    sub-long/2addr v2, v6

    .line 52
    long-to-float v2, v2

    .line 53
    iget-wide v6, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->e:J

    .line 54
    .line 55
    long-to-float v3, v6

    .line 56
    div-float/2addr v2, v3

    .line 57
    const/high16 v3, 0x3f800000    # 1.0f

    .line 58
    .line 59
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-boolean v7, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->j:Z

    .line 69
    .line 70
    if-nez v7, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v6, v2

    .line 74
    :goto_1
    iget-object v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->d:Landroid/view/animation/Interpolator;

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    move v2, v6

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-interface {v2, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_2
    iget v7, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->g:I

    .line 85
    .line 86
    int-to-float v7, v7

    .line 87
    mul-float/2addr v7, v2

    .line 88
    float-to-int v7, v7

    .line 89
    iget-object v8, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->f:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    add-int/2addr v9, v7

    .line 94
    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    add-int/2addr v8, v7

    .line 99
    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    iget v7, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->h:F

    .line 102
    .line 103
    invoke-static {v7, v3, v2, v3}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->b:F

    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    const/high16 v7, 0x437f0000    # 255.0f

    .line 112
    .line 113
    mul-float/2addr v2, v7

    .line 114
    float-to-int v2, v2

    .line 115
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-boolean v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->j:Z

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    cmpl-float v2, v6, v3

    .line 127
    .line 128
    if-ltz v2, :cond_6

    .line 129
    .line 130
    iput-boolean v4, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->k:Z

    .line 131
    .line 132
    iget-object v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->l:Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    .line 133
    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    check-cast v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;->a()V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-boolean v1, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->k:Z

    .line 142
    .line 143
    xor-int/2addr v1, v4

    .line 144
    :goto_3
    if-nez v1, :cond_0

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_7
    return-void
.end method
