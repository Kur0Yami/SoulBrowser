.class public Lcom/mycompany/app/wview/WebCastView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;
    }
.end annotation


# instance fields
.field public c:Z

.field public f:F

.field public g:Landroid/graphics/Paint;

.field public h:F

.field public i:F

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

.field public z:Landroid/view/GestureDetector;


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->w:I

    .line 2
    .line 3
    const/16 v1, -0x4d2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/wview/WebCastView;->x:I

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    int-to-float v0, v0

    .line 16
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget v4, p0, Lcom/mycompany/app/wview/WebCastView;->x:I

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    invoke-static {v2, v0, v3, v4}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    cmpg-float v0, v0, v2

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput v1, p0, Lcom/mycompany/app/wview/WebCastView;->w:I

    .line 35
    .line 36
    iput v1, p0, Lcom/mycompany/app/wview/WebCastView;->x:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/wview/WebCastView;->y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;->b()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->o:I

    .line 7
    .line 8
    add-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/wview/WebCastView;->s:I

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sub-int p1, v2, v0

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->p:I

    .line 17
    .line 18
    add-int v3, p2, v1

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/wview/WebCastView;->t:I

    .line 21
    .line 22
    if-le v3, v4, :cond_2

    .line 23
    .line 24
    sub-int p2, v4, v1

    .line 25
    .line 26
    :cond_2
    const/4 v3, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v3

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v3

    .line 33
    :cond_4
    int-to-float v3, p1

    .line 34
    sput v3, Lcom/mycompany/app/pref/PrefZtri;->R:F

    .line 35
    .line 36
    add-int/2addr v0, p1

    .line 37
    sub-int/2addr v2, v0

    .line 38
    int-to-float v0, v2

    .line 39
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->S:F

    .line 40
    .line 41
    int-to-float v0, p2

    .line 42
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->T:F

    .line 43
    .line 44
    add-int/2addr v1, p2

    .line 45
    sub-int/2addr v4, v1

    .line 46
    int-to-float v0, v4

    .line 47
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->U:F

    .line 48
    .line 49
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->q:I

    .line 50
    .line 51
    add-int/2addr p1, v0

    .line 52
    int-to-float p1, p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/mycompany/app/wview/WebCastView;->r:I

    .line 57
    .line 58
    add-int/2addr p2, p1

    .line 59
    int-to-float p1, p2

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    instance-of v1, v0, Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    check-cast v0, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v3, v1

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v2

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sub-int/2addr v4, v0

    .line 49
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->q:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->r:I

    .line 54
    .line 55
    if-ne v2, v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->s:I

    .line 58
    .line 59
    if-ne v3, v0, :cond_2

    .line 60
    .line 61
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->t:I

    .line 62
    .line 63
    if-ne v4, v0, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iput v1, p0, Lcom/mycompany/app/wview/WebCastView;->q:I

    .line 67
    .line 68
    iput v2, p0, Lcom/mycompany/app/wview/WebCastView;->r:I

    .line 69
    .line 70
    iput v3, p0, Lcom/mycompany/app/wview/WebCastView;->s:I

    .line 71
    .line 72
    iput v4, p0, Lcom/mycompany/app/wview/WebCastView;->t:I

    .line 73
    .line 74
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->R:F

    .line 75
    .line 76
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->S:F

    .line 77
    .line 78
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->T:F

    .line 79
    .line 80
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->U:F

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    cmpg-float v6, v0, v5

    .line 84
    .line 85
    if-gez v6, :cond_3

    .line 86
    .line 87
    cmpg-float v6, v1, v5

    .line 88
    .line 89
    if-gez v6, :cond_3

    .line 90
    .line 91
    cmpg-float v6, v2, v5

    .line 92
    .line 93
    if-gez v6, :cond_3

    .line 94
    .line 95
    cmpg-float v5, v4, v5

    .line 96
    .line 97
    if-gez v5, :cond_3

    .line 98
    .line 99
    iget v5, p0, Lcom/mycompany/app/wview/WebCastView;->o:I

    .line 100
    .line 101
    sub-int/2addr v3, v5

    .line 102
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 107
    .line 108
    add-int/2addr v5, v6

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget v5, p0, Lcom/mycompany/app/wview/WebCastView;->o:I

    .line 111
    .line 112
    sub-int/2addr v3, v5

    .line 113
    int-to-float v3, v3

    .line 114
    invoke-static {v0, v1, v3, v0}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget v5, p0, Lcom/mycompany/app/wview/WebCastView;->t:I

    .line 119
    .line 120
    iget v6, p0, Lcom/mycompany/app/wview/WebCastView;->p:I

    .line 121
    .line 122
    sub-int/2addr v5, v6

    .line 123
    int-to-float v5, v5

    .line 124
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->T:F

    .line 125
    .line 126
    sget v7, Lcom/mycompany/app/pref/PrefZtri;->U:F

    .line 127
    .line 128
    invoke-static {v6, v7, v5, v6}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    :goto_0
    invoke-virtual {p0, v3, v5}, Lcom/mycompany/app/wview/WebCastView;->b(II)V

    .line 133
    .line 134
    .line 135
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->R:F

    .line 136
    .line 137
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->S:F

    .line 144
    .line 145
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 150
    .line 151
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->T:F

    .line 152
    .line 153
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_4

    .line 158
    .line 159
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->U:F

    .line 160
    .line 161
    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->s(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_1
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->h:F

    .line 10
    .line 11
    iget v2, p0, Lcom/mycompany/app/wview/WebCastView;->i:F

    .line 12
    .line 13
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->f:F

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/wview/WebCastView;->y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v0, :cond_13

    .line 29
    .line 30
    if-eq v0, v2, :cond_d

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-eq v0, v3, :cond_2

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-eq v0, v3, :cond_e

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 52
    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 67
    .line 68
    if-nez v4, :cond_5

    .line 69
    .line 70
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 71
    .line 72
    if-eqz v4, :cond_14

    .line 73
    .line 74
    float-to-int v0, v0

    .line 75
    float-to-int v3, v3

    .line 76
    sget v4, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 77
    .line 78
    invoke-static {v0, v3, v4, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_14

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_5
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 91
    .line 92
    const/high16 v5, 0x40000000    # 2.0f

    .line 93
    .line 94
    if-eqz v4, :cond_9

    .line 95
    .line 96
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 97
    .line 98
    if-eqz v4, :cond_7

    .line 99
    .line 100
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 101
    .line 102
    int-to-float v1, v1

    .line 103
    iget v4, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 104
    .line 105
    int-to-float v4, v4

    .line 106
    invoke-static {v1, v0, v4, v3}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 111
    .line 112
    int-to-float v4, v4

    .line 113
    div-float/2addr v4, v5

    .line 114
    cmpg-float v1, v1, v4

    .line 115
    .line 116
    if-gez v1, :cond_6

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 125
    .line 126
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 131
    .line 132
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 133
    .line 134
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->m:I

    .line 135
    .line 136
    add-int/2addr v1, v3

    .line 137
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->n:I

    .line 138
    .line 139
    add-int/2addr v0, v3

    .line 140
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebCastView;->b(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebCastView;->a()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_7
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 149
    .line 150
    if-eqz v4, :cond_14

    .line 151
    .line 152
    float-to-int v0, v0

    .line 153
    float-to-int v3, v3

    .line 154
    sget v4, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 155
    .line 156
    invoke-static {v0, v3, v4, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_14

    .line 161
    .line 162
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 163
    .line 164
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 165
    .line 166
    if-nez v0, :cond_8

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_8
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 170
    .line 171
    :goto_2
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_9
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 176
    .line 177
    int-to-float v1, v1

    .line 178
    iget v4, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 179
    .line 180
    int-to-float v4, v4

    .line 181
    invoke-static {v1, v0, v4, v3}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 186
    .line 187
    if-nez v4, :cond_b

    .line 188
    .line 189
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 190
    .line 191
    int-to-float v4, v4

    .line 192
    cmpg-float v4, v1, v4

    .line 193
    .line 194
    if-gez v4, :cond_a

    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_a
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 199
    .line 200
    iget v4, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 201
    .line 202
    iput v4, p0, Lcom/mycompany/app/wview/WebCastView;->w:I

    .line 203
    .line 204
    iget v4, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 205
    .line 206
    iput v4, p0, Lcom/mycompany/app/wview/WebCastView;->x:I

    .line 207
    .line 208
    new-instance v4, Lcom/mycompany/app/wview/WebCastView$2;

    .line 209
    .line 210
    invoke-direct {v4, p0}, Lcom/mycompany/app/wview/WebCastView$2;-><init>(Lcom/mycompany/app/wview/WebCastView;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 214
    .line 215
    .line 216
    :cond_b
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 217
    .line 218
    int-to-float v4, v4

    .line 219
    div-float/2addr v4, v5

    .line 220
    cmpg-float v1, v1, v4

    .line 221
    .line 222
    if-gez v1, :cond_c

    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 231
    .line 232
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 237
    .line 238
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 239
    .line 240
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->m:I

    .line 241
    .line 242
    add-int/2addr v1, v3

    .line 243
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->n:I

    .line 244
    .line 245
    add-int/2addr v0, v3

    .line 246
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebCastView;->b(II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebCastView;->a()V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_5

    .line 253
    .line 254
    :cond_d
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 255
    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 259
    .line 260
    if-nez v0, :cond_e

    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-lez v0, :cond_e

    .line 267
    .line 268
    new-instance v0, Lcom/mycompany/app/wview/WebCastView$3;

    .line 269
    .line 270
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebCastView$3;-><init>(Lcom/mycompany/app/wview/WebCastView;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 274
    .line 275
    .line 276
    :cond_e
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 277
    .line 278
    if-nez v0, :cond_10

    .line 279
    .line 280
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 281
    .line 282
    if-nez v0, :cond_f

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_f
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 286
    .line 287
    :goto_3
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 288
    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    return p1

    .line 294
    :cond_10
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 295
    .line 296
    if-eqz v0, :cond_11

    .line 297
    .line 298
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 299
    .line 300
    if-eqz v0, :cond_11

    .line 301
    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->s(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    :cond_11
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 310
    .line 311
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 312
    .line 313
    if-nez v0, :cond_12

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_12
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 317
    .line 318
    :goto_4
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 330
    .line 331
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 332
    .line 333
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 334
    .line 335
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 340
    .line 341
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 346
    .line 347
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->s:I

    .line 348
    .line 349
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->o:I

    .line 350
    .line 351
    sub-int/2addr v0, v1

    .line 352
    int-to-float v0, v0

    .line 353
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->R:F

    .line 354
    .line 355
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->S:F

    .line 356
    .line 357
    invoke-static {v1, v3, v0, v1}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    iget v1, p0, Lcom/mycompany/app/wview/WebCastView;->t:I

    .line 362
    .line 363
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->p:I

    .line 364
    .line 365
    sub-int/2addr v1, v3

    .line 366
    int-to-float v1, v1

    .line 367
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->T:F

    .line 368
    .line 369
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->U:F

    .line 370
    .line 371
    invoke-static {v3, v4, v1, v3}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    iget v3, p0, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 376
    .line 377
    sub-int/2addr v0, v3

    .line 378
    iput v0, p0, Lcom/mycompany/app/wview/WebCastView;->m:I

    .line 379
    .line 380
    iget v0, p0, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 381
    .line 382
    sub-int/2addr v1, v0

    .line 383
    iput v1, p0, Lcom/mycompany/app/wview/WebCastView;->n:I

    .line 384
    .line 385
    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/mycompany/app/wview/WebCastView;->z:Landroid/view/GestureDetector;

    .line 386
    .line 387
    if-eqz v0, :cond_15

    .line 388
    .line 389
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 390
    .line 391
    .line 392
    :cond_15
    return v2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebCastView;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebCastView;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->h:F

    .line 9
    .line 10
    int-to-float p1, p2

    .line 11
    div-float/2addr p1, p3

    .line 12
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->i:F

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebCastView;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setAvailListener(Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setMovable(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->q:I

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->r:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->s:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->t:I

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->o:I

    .line 23
    .line 24
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->p:I

    .line 25
    .line 26
    sget p1, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 27
    .line 28
    int-to-float p1, p1

    .line 29
    iput p1, p0, Lcom/mycompany/app/wview/WebCastView;->f:F

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 54
    .line 55
    const v1, -0x595616

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/wview/WebCastView;->g:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget p1, p0, Lcom/mycompany/app/wview/WebCastView;->q:I

    .line 75
    .line 76
    int-to-float p1, p1

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 78
    .line 79
    .line 80
    iget p1, p0, Lcom/mycompany/app/wview/WebCastView;->r:I

    .line 81
    .line 82
    int-to-float p1, p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->z:Landroid/view/GestureDetector;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    :goto_1
    return-void

    .line 95
    :cond_4
    new-instance p1, Landroid/view/GestureDetector;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/mycompany/app/wview/WebCastView$1;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebCastView$1;-><init>(Lcom/mycompany/app/wview/WebCastView;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->z:Landroid/view/GestureDetector;

    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/wview/WebCastView;->z:Landroid/view/GestureDetector;

    .line 113
    .line 114
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView;->y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;->b()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
