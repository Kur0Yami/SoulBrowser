.class Lcom/mycompany/app/video/VideoActivity$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$5;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$5;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-boolean v3, v1, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 10
    .line 11
    iput-boolean v2, v1, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 12
    .line 13
    if-nez v3, :cond_8

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3}, Lcom/mycompany/app/video/VideoControl;->s(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 30
    .line 31
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 35
    .line 36
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    int-to-float v1, v1

    .line 43
    cmpg-float v1, p1, v1

    .line 44
    .line 45
    if-gez v1, :cond_3

    .line 46
    .line 47
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sub-int/2addr v1, v2

    .line 57
    int-to-float v1, v1

    .line 58
    cmpl-float p1, p1, v1

    .line 59
    .line 60
    if-lez p1, :cond_4

    .line 61
    .line 62
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 66
    .line 67
    :goto_1
    const/4 v1, 0x1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->I0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    if-ne p1, v1, :cond_6

    .line 75
    .line 76
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->H0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    const/4 v2, 0x2

    .line 81
    if-ne p1, v2, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->N1()V

    .line 84
    .line 85
    .line 86
    :cond_7
    :goto_2
    return v1

    .line 87
    :cond_8
    :goto_3
    return v2
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$5;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 19
    .line 20
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-nez v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_4
    invoke-virtual {p1, v2}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :cond_6
    :goto_1
    return v1
.end method
