.class Lcom/mycompany/app/web/WebVideoFull$20;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$20;->c:Lcom/mycompany/app/web/WebVideoFull;

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
    sget-object v0, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$20;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->Y(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 15
    .line 16
    if-eqz v2, :cond_d

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_2
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_0
    if-eqz v1, :cond_5

    .line 52
    .line 53
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 54
    .line 55
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 59
    .line 60
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    int-to-float v1, v1

    .line 67
    cmpg-float v1, p1, v1

    .line 68
    .line 69
    if-gez v1, :cond_6

    .line 70
    .line 71
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v1, v2

    .line 79
    int-to-float v1, v1

    .line 80
    cmpl-float p1, p1, v1

    .line 81
    .line 82
    if-lez p1, :cond_7

    .line 83
    .line 84
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 88
    .line 89
    :goto_2
    const/4 v1, 0x1

    .line 90
    if-nez p1, :cond_9

    .line 91
    .line 92
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 93
    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    iget-object p1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 97
    .line 98
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 101
    .line 102
    .line 103
    return v1

    .line 104
    :cond_8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->j0()V

    .line 105
    .line 106
    .line 107
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->s0:Z

    .line 108
    .line 109
    return v1

    .line 110
    :cond_9
    if-ne p1, v1, :cond_b

    .line 111
    .line 112
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 113
    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    iget-object p1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 117
    .line 118
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 119
    .line 120
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    return v1

    .line 124
    :cond_a
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->i0()V

    .line 125
    .line 126
    .line 127
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->s0:Z

    .line 128
    .line 129
    return v1

    .line 130
    :cond_b
    const/4 v2, 0x2

    .line 131
    if-ne p1, v2, :cond_d

    .line 132
    .line 133
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 134
    .line 135
    if-eqz p1, :cond_c

    .line 136
    .line 137
    iget-object p1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 138
    .line 139
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 140
    .line 141
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :cond_c
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->k0()V

    .line 146
    .line 147
    .line 148
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->s0:Z

    .line 149
    .line 150
    :cond_d
    :goto_3
    return v1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$20;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebVideoFull;->r0:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->F(Lcom/mycompany/app/web/WebVideoFull;ZZ)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$20;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0, v0}, Lcom/mycompany/app/web/WebVideoFull;->F(Lcom/mycompany/app/web/WebVideoFull;ZZ)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method
