.class Lcom/mycompany/app/image/ImageViewPageScroll$7;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$7;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$7;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->R0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->G0(Z)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/high16 v3, 0x43480000    # 200.0f

    .line 23
    .line 24
    cmpg-float v1, v1, v3

    .line 25
    .line 26
    if-gez v1, :cond_1

    .line 27
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-float/2addr v1, v3

    .line 42
    sget v3, Lcom/mycompany/app/main/MainApp;->s1:I

    .line 43
    .line 44
    neg-int v4, v3

    .line 45
    int-to-float v4, v4

    .line 46
    cmpg-float v4, v1, v4

    .line 47
    .line 48
    if-gez v4, :cond_3

    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->i0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->o()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->n1(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->G0(Z)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_3
    int-to-float v3, v3

    .line 73
    cmpl-float v1, v1, v3

    .line 74
    .line 75
    if-lez v1, :cond_5

    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->i0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->p()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->n1(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->G0(Z)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    return p1

    .line 99
    :cond_5
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->G0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :catch_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$7;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->G0(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$7;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->Q0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 15
    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageViewControl;->k(F)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->O0()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    sget v1, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 36
    .line 37
    sget v2, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 41
    .line 42
    sget v2, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v1, v1

    .line 49
    cmpg-float v1, v3, v1

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    if-gez v1, :cond_4

    .line 54
    .line 55
    sget v1, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v4, v5

    .line 61
    :goto_1
    move v6, v5

    .line 62
    move v5, v4

    .line 63
    move v4, v6

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int/2addr v1, v2

    .line 72
    int-to-float v1, v1

    .line 73
    cmpl-float v1, v3, v1

    .line 74
    .line 75
    if-lez v1, :cond_5

    .line 76
    .line 77
    sget v1, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 78
    .line 79
    if-nez v1, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    move v4, v5

    .line 83
    :goto_2
    if-eqz v5, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->Y0()V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    if-eqz v4, :cond_7

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->d1()V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->q1()V

    .line 96
    .line 97
    .line 98
    :goto_3
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    :cond_8
    :goto_4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1
.end method
