.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field public static final synthetic i0:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:F

.field public G:F

.field public H:F

.field public I:J

.field public J:F

.field public K:Z

.field public L:Z

.field public M:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field public N:I

.field public O:Landroidx/constraintlayout/motion/widget/DesignTool;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:J

.field public T:Z

.field public U:I

.field public V:J

.field public W:F

.field public a0:I

.field public b0:F

.field public c0:F

.field public d0:Z

.field public e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field public f0:Z

.field public g0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public h0:Z

.field public w:Landroidx/constraintlayout/motion/widget/MotionScene;

.field public x:Landroid/view/animation/Interpolator;

.field public y:F

.field public z:I


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final f(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 3
    .line 4
    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    throw v1
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 13
    .line 14
    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 2
    .line 3
    return v0
.end method

.method public getStartState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 2
    .line 3
    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 15
    .line 16
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 17
    .line 18
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    .line 19
    .line 20
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 21
    .line 22
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "motion.progress"

    .line 47
    .line 48
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51
    .line 52
    .line 53
    const-string v2, "motion.velocity"

    .line 54
    .line 55
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 58
    .line 59
    .line 60
    const-string v2, "motion.StartState"

    .line 61
    .line 62
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v2, "motion.EndState"

    .line 68
    .line 69
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    div-float/2addr v0, v1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 16
    .line 17
    mul-float/2addr v0, v1

    .line 18
    float-to-long v0, v0

    .line 19
    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 2
    .line 3
    return v0
.end method

.method public final i(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 7
    .line 8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 9
    .line 10
    cmpl-float v1, v1, v2

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 19
    .line 20
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 21
    .line 22
    cmpl-float v2, v1, p1

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->a()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 35
    .line 36
    div-float/2addr p1, v0

    .line 37
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 38
    .line 39
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b()Landroid/view/animation/Interpolator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 60
    .line 61
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 62
    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final j(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 2
    .line 3
    const/4 p6, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    :cond_0
    aget p1, p7, p6

    .line 11
    .line 12
    add-int/2addr p1, p4

    .line 13
    aput p1, p7, p6

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aget p2, p7, p1

    .line 17
    .line 18
    add-int/2addr p2, p5

    .line 19
    aput p2, p7, p1

    .line 20
    .line 21
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 22
    .line 23
    return-void
.end method

.method public final k(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final m(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:J

    .line 6
    .line 7
    return-void
.end method

.method public final n(Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Landroid/view/View;II[II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_c

    .line 8
    .line 9
    :cond_0
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 10
    .line 11
    if-eqz v1, :cond_29

    .line 12
    .line 13
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iput-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:J

    .line 20
    .line 21
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 22
    .line 23
    cmpl-float v1, v1, v2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    aput p2, p4, v3

    .line 30
    .line 31
    aput p3, p4, v2

    .line 32
    .line 33
    :cond_1
    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 34
    .line 35
    const-wide/16 v6, -0x1

    .line 36
    .line 37
    cmp-long v1, v4, v6

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iput-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 46
    .line 47
    :cond_2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    cmpl-float v5, v1, v4

    .line 51
    .line 52
    const/4 v6, -0x1

    .line 53
    const/high16 v7, 0x3f800000    # 1.0f

    .line 54
    .line 55
    if-lez v5, :cond_3

    .line 56
    .line 57
    cmpg-float v5, v1, v7

    .line 58
    .line 59
    if-gez v5, :cond_3

    .line 60
    .line 61
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 62
    .line 63
    :cond_3
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    const/4 v9, 0x0

    .line 67
    if-nez v5, :cond_5

    .line 68
    .line 69
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 74
    .line 75
    cmpl-float v5, v5, v1

    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move/from16 p1, v3

    .line 81
    .line 82
    move/from16 p2, v4

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_5
    :goto_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 87
    .line 88
    sub-float/2addr v5, v1

    .line 89
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 98
    .line 99
    sub-long v12, v10, v12

    .line 100
    .line 101
    long-to-float v5, v12

    .line 102
    mul-float/2addr v5, v1

    .line 103
    const v12, 0x3089705f    # 1.0E-9f

    .line 104
    .line 105
    .line 106
    mul-float/2addr v5, v12

    .line 107
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 108
    .line 109
    div-float/2addr v5, v12

    .line 110
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 111
    .line 112
    add-float/2addr v12, v5

    .line 113
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 114
    .line 115
    if-eqz v13, :cond_6

    .line 116
    .line 117
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 118
    .line 119
    :cond_6
    cmpl-float v13, v1, v4

    .line 120
    .line 121
    if-lez v13, :cond_7

    .line 122
    .line 123
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 124
    .line 125
    cmpl-float v14, v12, v14

    .line 126
    .line 127
    if-gez v14, :cond_8

    .line 128
    .line 129
    :cond_7
    cmpg-float v14, v1, v4

    .line 130
    .line 131
    if-gtz v14, :cond_9

    .line 132
    .line 133
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 134
    .line 135
    cmpg-float v14, v12, v14

    .line 136
    .line 137
    if-gtz v14, :cond_9

    .line 138
    .line 139
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 140
    .line 141
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 142
    .line 143
    :cond_9
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 144
    .line 145
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 146
    .line 147
    iput-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 148
    .line 149
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 150
    .line 151
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    const v10, 0x3727c5ac    # 1.0E-5f

    .line 156
    .line 157
    .line 158
    cmpl-float v5, v5, v10

    .line 159
    .line 160
    if-lez v5, :cond_a

    .line 161
    .line 162
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 163
    .line 164
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    if-lez v13, :cond_b

    .line 168
    .line 169
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 170
    .line 171
    cmpl-float v5, v12, v5

    .line 172
    .line 173
    if-gez v5, :cond_c

    .line 174
    .line 175
    :cond_b
    cmpg-float v5, v1, v4

    .line 176
    .line 177
    if-gtz v5, :cond_d

    .line 178
    .line 179
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 180
    .line 181
    cmpg-float v5, v12, v5

    .line 182
    .line 183
    if-gtz v5, :cond_d

    .line 184
    .line 185
    :cond_c
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 186
    .line 187
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 188
    .line 189
    :cond_d
    cmpl-float v5, v12, v7

    .line 190
    .line 191
    sget-object v10, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->g:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 192
    .line 193
    if-gez v5, :cond_e

    .line 194
    .line 195
    cmpg-float v11, v12, v4

    .line 196
    .line 197
    if-gtz v11, :cond_f

    .line 198
    .line 199
    :cond_e
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 200
    .line 201
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 202
    .line 203
    .line 204
    :cond_f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 211
    .line 212
    .line 213
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:F

    .line 214
    .line 215
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    .line 216
    .line 217
    if-nez v14, :cond_10

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_10
    invoke-interface {v14, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 221
    .line 222
    .line 223
    :goto_1
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    .line 224
    .line 225
    if-eqz v14, :cond_11

    .line 226
    .line 227
    iget v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 228
    .line 229
    div-float v15, v1, v15

    .line 230
    .line 231
    add-float/2addr v15, v12

    .line 232
    invoke-interface {v14, v15}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 237
    .line 238
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    .line 239
    .line 240
    invoke-interface {v15, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    sub-float/2addr v14, v15

    .line 245
    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 246
    .line 247
    :cond_11
    const/4 v14, 0x0

    .line 248
    if-gtz v11, :cond_28

    .line 249
    .line 250
    if-lez v13, :cond_12

    .line 251
    .line 252
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 253
    .line 254
    cmpl-float v11, v12, v11

    .line 255
    .line 256
    if-gez v11, :cond_13

    .line 257
    .line 258
    :cond_12
    cmpg-float v11, v1, v4

    .line 259
    .line 260
    if-gtz v11, :cond_14

    .line 261
    .line 262
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 263
    .line 264
    cmpg-float v11, v12, v11

    .line 265
    .line 266
    if-gtz v11, :cond_14

    .line 267
    .line 268
    :cond_13
    move v11, v8

    .line 269
    goto :goto_2

    .line 270
    :cond_14
    move v11, v9

    .line 271
    :goto_2
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 272
    .line 273
    if-nez v15, :cond_15

    .line 274
    .line 275
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 276
    .line 277
    if-nez v15, :cond_15

    .line 278
    .line 279
    if-eqz v11, :cond_15

    .line 280
    .line 281
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 282
    .line 283
    .line 284
    :cond_15
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 285
    .line 286
    xor-int/2addr v11, v8

    .line 287
    or-int/2addr v11, v15

    .line 288
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 289
    .line 290
    cmpg-float v15, v12, v4

    .line 291
    .line 292
    if-gtz v15, :cond_16

    .line 293
    .line 294
    iget v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 295
    .line 296
    if-eq v15, v6, :cond_16

    .line 297
    .line 298
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 299
    .line 300
    if-ne v6, v15, :cond_17

    .line 301
    .line 302
    :cond_16
    move/from16 p1, v3

    .line 303
    .line 304
    move/from16 p2, v4

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_17
    iput v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 308
    .line 309
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    throw v14

    .line 315
    :goto_3
    float-to-double v3, v12

    .line 316
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 317
    .line 318
    cmpl-double v3, v3, v15

    .line 319
    .line 320
    if-ltz v3, :cond_19

    .line 321
    .line 322
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 323
    .line 324
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 325
    .line 326
    if-ne v3, v4, :cond_18

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_18
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 330
    .line 331
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    throw v14

    .line 337
    :cond_19
    :goto_4
    if-nez v11, :cond_1d

    .line 338
    .line 339
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 340
    .line 341
    if-eqz v3, :cond_1a

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_1a
    if-lez v13, :cond_1b

    .line 345
    .line 346
    if-eqz v5, :cond_1c

    .line 347
    .line 348
    :cond_1b
    cmpg-float v3, v1, p2

    .line 349
    .line 350
    if-gez v3, :cond_1e

    .line 351
    .line 352
    cmpl-float v3, v12, p2

    .line 353
    .line 354
    if-nez v3, :cond_1e

    .line 355
    .line 356
    :cond_1c
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_1d
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 361
    .line 362
    .line 363
    :cond_1e
    :goto_6
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 364
    .line 365
    if-nez v3, :cond_21

    .line 366
    .line 367
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 368
    .line 369
    if-nez v3, :cond_21

    .line 370
    .line 371
    if-lez v13, :cond_1f

    .line 372
    .line 373
    if-eqz v5, :cond_20

    .line 374
    .line 375
    :cond_1f
    cmpg-float v1, v1, p2

    .line 376
    .line 377
    if-gez v1, :cond_21

    .line 378
    .line 379
    cmpl-float v1, v12, p2

    .line 380
    .line 381
    if-nez v1, :cond_21

    .line 382
    .line 383
    :cond_20
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r()V

    .line 384
    .line 385
    .line 386
    :cond_21
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 387
    .line 388
    cmpl-float v3, v1, v7

    .line 389
    .line 390
    if-ltz v3, :cond_23

    .line 391
    .line 392
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 393
    .line 394
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 395
    .line 396
    if-eq v1, v3, :cond_22

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_22
    move v8, v9

    .line 400
    :goto_8
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 401
    .line 402
    :goto_9
    move v9, v8

    .line 403
    goto :goto_b

    .line 404
    :cond_23
    cmpg-float v1, v1, p2

    .line 405
    .line 406
    if-gtz v1, :cond_25

    .line 407
    .line 408
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 409
    .line 410
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 411
    .line 412
    if-eq v1, v3, :cond_24

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_24
    move v8, v9

    .line 416
    :goto_a
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 417
    .line 418
    goto :goto_9

    .line 419
    :cond_25
    :goto_b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:Z

    .line 420
    .line 421
    or-int/2addr v1, v9

    .line 422
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:Z

    .line 423
    .line 424
    if-eqz v9, :cond_26

    .line 425
    .line 426
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    .line 427
    .line 428
    if-nez v1, :cond_26

    .line 429
    .line 430
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 431
    .line 432
    .line 433
    :cond_26
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 434
    .line 435
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 436
    .line 437
    aget v1, p4, p1

    .line 438
    .line 439
    if-nez v1, :cond_27

    .line 440
    .line 441
    aget v1, p4, v2

    .line 442
    .line 443
    if-eqz v1, :cond_29

    .line 444
    .line 445
    :cond_27
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 446
    .line 447
    return-void

    .line 448
    :cond_28
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    throw v14

    .line 452
    :cond_29
    :goto_c
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    throw v0

    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 29
    .line 30
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Z

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$4;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$4;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 17
    .line 18
    :cond_1
    :goto_0
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    move-object p1, p0

    .line 13
    iput-boolean v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    move-object p1, p0

    .line 18
    :goto_0
    move-object p2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move-object p1, p0

    .line 21
    sub-int/2addr p4, p2

    .line 22
    sub-int/2addr p5, p3

    .line 23
    :try_start_1
    iget p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:I

    .line 24
    .line 25
    if-ne p2, p4, :cond_1

    .line 26
    .line 27
    iget p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:I

    .line 28
    .line 29
    if-ne p2, p5, :cond_1

    .line 30
    .line 31
    iput p4, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:I

    .line 32
    .line 33
    iput p5, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    iput-boolean v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    .line 36
    .line 37
    return-void

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p2, 0x0

    .line 41
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :goto_1
    iput-boolean v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    .line 43
    .line 44
    throw p2
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, p1, :cond_2

    .line 14
    .line 15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    .line 16
    .line 17
    if-eq v0, p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:Z

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v3, :cond_10

    .line 27
    .line 28
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    move v1, v0

    .line 34
    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 35
    .line 36
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_f

    .line 49
    .line 50
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    if-ne v0, v3, :cond_e

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    int-to-float p1, v2

    .line 78
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:F

    .line 79
    .line 80
    mul-float/2addr p2, p1

    .line 81
    add-float/2addr p2, p1

    .line 82
    float-to-int p2, p2

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:F

    .line 87
    .line 88
    mul-float/2addr v0, p1

    .line 89
    add-float/2addr v0, p1

    .line 90
    float-to-int p1, v0

    .line 91
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 95
    .line 96
    .line 97
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 98
    .line 99
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 100
    .line 101
    sub-float/2addr p1, p2

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 111
    .line 112
    sub-long/2addr v0, v5

    .line 113
    long-to-float p2, v0

    .line 114
    mul-float/2addr p2, p1

    .line 115
    const v0, 0x3089705f    # 1.0E-9f

    .line 116
    .line 117
    .line 118
    mul-float/2addr p2, v0

    .line 119
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 120
    .line 121
    div-float/2addr p2, v0

    .line 122
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 123
    .line 124
    add-float/2addr v0, p2

    .line 125
    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 126
    .line 127
    if-eqz p2, :cond_5

    .line 128
    .line 129
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 130
    .line 131
    :cond_5
    const/4 p2, 0x0

    .line 132
    cmpl-float v1, p1, p2

    .line 133
    .line 134
    if-lez v1, :cond_6

    .line 135
    .line 136
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 137
    .line 138
    cmpl-float v3, v0, v3

    .line 139
    .line 140
    if-gez v3, :cond_7

    .line 141
    .line 142
    :cond_6
    cmpg-float v3, p1, p2

    .line 143
    .line 144
    if-gtz v3, :cond_8

    .line 145
    .line 146
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 147
    .line 148
    cmpg-float v3, v0, v3

    .line 149
    .line 150
    if-gtz v3, :cond_8

    .line 151
    .line 152
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 153
    .line 154
    :cond_8
    if-lez v1, :cond_9

    .line 155
    .line 156
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 157
    .line 158
    cmpl-float v1, v0, v1

    .line 159
    .line 160
    if-gez v1, :cond_a

    .line 161
    .line 162
    :cond_9
    cmpg-float p1, p1, p2

    .line 163
    .line 164
    if-gtz p1, :cond_b

    .line 165
    .line 166
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 167
    .line 168
    cmpg-float p1, v0, p1

    .line 169
    .line 170
    if-gtz p1, :cond_b

    .line 171
    .line 172
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 173
    .line 174
    :cond_b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:F

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    .line 184
    .line 185
    if-nez p2, :cond_c

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_c
    invoke-interface {p2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 189
    .line 190
    .line 191
    :goto_3
    if-gtz p1, :cond_d

    .line 192
    .line 193
    return-void

    .line 194
    :cond_d
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    throw v4

    .line 198
    :cond_e
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    throw v4

    .line 207
    :cond_f
    throw v4

    .line 208
    :cond_10
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:Z

    .line 209
    .line 210
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    throw v4
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:F

    .line 7
    .line 8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 9
    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    throw v0

    .line 21
    :cond_0
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    .line 22
    .line 23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 24
    .line 25
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:F

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    throw v0

    .line 29
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    throw v2

    .line 18
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 19
    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    .line 21
    .line 22
    throw v2
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public final requestLayout()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final s(FF)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 8
    .line 9
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    .line 10
    .line 11
    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 20
    .line 21
    .line 22
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 23
    .line 24
    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->b()Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setOnHide(F)V
    .locals 0

    return-void
.end method

.method public setOnShow(F)V
    .locals 0

    return-void
.end method

.method public setProgress(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-ltz v1, :cond_0

    .line 7
    .line 8
    cmpl-float v3, p1, v2

    .line 9
    .line 10
    if-lez v3, :cond_1

    .line 11
    .line 12
    :cond_0
    const-string v3, "MotionLayout"

    .line 13
    .line 14
    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 15
    .line 16
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 26
    .line 27
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->g:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 31
    .line 32
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 33
    .line 34
    if-gtz v1, :cond_4

    .line 35
    .line 36
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 37
    .line 38
    cmpl-float v1, v1, v2

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 43
    .line 44
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 52
    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 54
    .line 55
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 56
    .line 57
    cmpl-float v0, v1, v0

    .line 58
    .line 59
    if-nez v0, :cond_7

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    cmpl-float v1, p1, v2

    .line 66
    .line 67
    if-ltz v1, :cond_6

    .line 68
    .line 69
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 70
    .line 71
    cmpl-float v0, v1, v0

    .line 72
    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 76
    .line 77
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 78
    .line 79
    if-ne v0, v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 85
    .line 86
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 87
    .line 88
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 89
    .line 90
    cmpl-float v0, v0, v2

    .line 91
    .line 92
    if-nez v0, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/4 v0, -0x1

    .line 99
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 100
    .line 101
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 105
    .line 106
    if-nez v0, :cond_8

    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 111
    .line 112
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 113
    .line 114
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 115
    .line 116
    const-wide/16 v1, -0x1

    .line 117
    .line 118
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 119
    .line 120
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public setStartState(I)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 19
    .line 20
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    .line 21
    .line 22
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 26
    .line 27
    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->g:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 14
    .line 15
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v3, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-ne p1, v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    if-ne p1, v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p()V

    .line 46
    .line 47
    .line 48
    :cond_4
    if-ne p1, v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q()V

    .line 51
    .line 52
    .line 53
    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 4

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 5
    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 6
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 15
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 17
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v0, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez v0, :cond_3

    move v2, v3

    .line 18
    :cond_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    if-ne v1, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-ne v2, v3, :cond_4

    return-void

    .line 19
    :cond_4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 20
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    throw v3

    .line 23
    :cond_5
    throw v3
.end method

.method public setTransitionDuration(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "MotionLayout"

    .line 6
    .line 7
    const-string v0, "MotionScene not defined"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->b:I

    .line 27
    .line 28
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "motion.progress"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a:F

    .line 24
    .line 25
    const-string v1, "motion.velocity"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->b:F

    .line 32
    .line 33
    const-string v1, "motion.StartState"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    .line 40
    .line 41
    const-string v1, "motion.EndState"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    .line 48
    .line 49
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->a()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final t(II)V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 8
    .line 9
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->c:I

    .line 10
    .line 11
    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 20
    .line 21
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    throw v2

    .line 36
    :cond_2
    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "->"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " (pos:"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " Dpos/Dt:"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final u(I)V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 8
    .line 9
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->d:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 21
    .line 22
    if-ne v1, p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i(F)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 29
    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-ne v1, p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i(F)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i(F)V

    .line 47
    .line 48
    .line 49
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i(F)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_4
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 56
    .line 57
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 58
    .line 59
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:J

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->a()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    int-to-float p1, p1

    .line 80
    div-float/2addr p1, v3

    .line 81
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 82
    .line 83
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 86
    .line 87
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    throw p1
.end method
