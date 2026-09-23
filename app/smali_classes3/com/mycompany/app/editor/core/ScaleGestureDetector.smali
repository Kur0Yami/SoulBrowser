.class public Lcom/mycompany/app/editor/core/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/editor/core/ScaleGestureDetector$OnScaleGestureListener;,
        Lcom/mycompany/app/editor/core/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/mycompany/app/editor/core/ScaleGestureDetector$OnScaleGestureListener;

.field public b:Z

.field public c:Landroid/view/MotionEvent;

.field public d:Landroid/view/MotionEvent;

.field public final e:Lcom/mycompany/app/editor/core/Vector2D;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:Z

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->a:Lcom/mycompany/app/editor/core/ScaleGestureDetector$OnScaleGestureListener;

    .line 5
    .line 6
    new-instance p1, Lcom/mycompany/app/editor/core/Vector2D;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->e:Lcom/mycompany/app/editor/core/Vector2D;

    .line 12
    .line 13
    return-void
.end method

.method public static a(IILandroid/view/MotionEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-eq p2, p1, :cond_0

    .line 13
    .line 14
    if-eq p2, p0, :cond_0

    .line 15
    .line 16
    return p2

    .line 17
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, -0x1

    .line 21
    return p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 25
    .line 26
    iput v1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->q:Z

    .line 29
    .line 30
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 13
    .line 14
    const/high16 p2, -0x40800000    # -1.0f

    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->l:F

    .line 17
    .line 18
    iput p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->m:F

    .line 19
    .line 20
    iput p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->n:F

    .line 21
    .line 22
    iget-object p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->e:Lcom/mycompany/app/editor/core/Vector2D;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 29
    .line 30
    iget v1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget v3, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v4, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ltz v1, :cond_2

    .line 55
    .line 56
    if-ltz v2, :cond_2

    .line 57
    .line 58
    if-ltz v3, :cond_2

    .line 59
    .line 60
    if-gez v4, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    sub-float/2addr v7, v5

    .line 96
    sub-float/2addr v8, v6

    .line 97
    sub-float/2addr v11, v9

    .line 98
    sub-float/2addr v12, v10

    .line 99
    invoke-virtual {p2, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    .line 100
    .line 101
    .line 102
    iput v7, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->h:F

    .line 103
    .line 104
    iput v8, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->i:F

    .line 105
    .line 106
    iput v11, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->j:F

    .line 107
    .line 108
    iput v12, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->k:F

    .line 109
    .line 110
    const/high16 p2, 0x3f000000    # 0.5f

    .line 111
    .line 112
    mul-float/2addr v11, p2

    .line 113
    add-float/2addr v11, v9

    .line 114
    iput v11, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->f:F

    .line 115
    .line 116
    mul-float/2addr v12, p2

    .line 117
    add-float/2addr v12, v10

    .line 118
    iput v12, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->g:F

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    add-float/2addr p1, p2

    .line 135
    iput p1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->o:F

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    add-float/2addr p2, p1

    .line 146
    iput p2, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->p:F

    .line 147
    .line 148
    return-void

    .line 149
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->q:Z

    .line 151
    .line 152
    return-void
.end method
