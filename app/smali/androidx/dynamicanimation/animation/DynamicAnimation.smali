.class public abstract Landroidx/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final l:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final m:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final n:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final o:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final p:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final q:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Lcom/google/android/material/shape/Shapeable;

.field public final e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public f:Z

.field public final g:F

.field public h:J

.field public final i:F

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->l:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 7
    .line 8
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->m:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 14
    .line 15
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$6;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->n:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 21
    .line 22
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$7;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->o:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 28
    .line 29
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$8;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->p:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 35
    .line 36
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->q:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/Shapeable;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 6
    .line 7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->c:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    .line 16
    .line 17
    const v0, -0x800001

    .line 18
    .line 19
    .line 20
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:J

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->j:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->k:Ljava/util/ArrayList;

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->d:Lcom/google/android/material/shape/Shapeable;

    .line 41
    .line 42
    iput-object p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 43
    .line 44
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->n:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 45
    .line 46
    if-eq p2, p1, :cond_4

    .line 47
    .line 48
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->o:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 49
    .line 50
    if-eq p2, p1, :cond_4

    .line 51
    .line 52
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->p:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 53
    .line 54
    if-ne p2, p1, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->q:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 58
    .line 59
    if-ne p2, p1, :cond_1

    .line 60
    .line 61
    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 62
    .line 63
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->i:F

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->l:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 67
    .line 68
    if-eq p2, p1, :cond_3

    .line 69
    .line 70
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->m:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 71
    .line 72
    if-ne p2, p1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 76
    .line 77
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->i:F

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    .line 81
    .line 82
    .line 83
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->i:F

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 87
    .line 88
    .line 89
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->i:F

    .line 90
    .line 91
    return-void
.end method

.method public static b()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 3

    .line 1
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->i:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 10
    .line 11
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 12
    .line 13
    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final a(J)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:J

    .line 11
    .line 12
    iget p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->c(F)V

    .line 15
    .line 16
    .line 17
    return v5

    .line 18
    :cond_0
    sub-long v0, p1, v0

    .line 19
    .line 20
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:J

    .line 21
    .line 22
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget p1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->g:F

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    cmpl-float p2, p1, p2

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    const-wide/32 p1, 0x7fffffff

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    long-to-float p2, v0

    .line 38
    div-float/2addr p2, p1

    .line 39
    float-to-long p1, p2

    .line 40
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->d(J)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 45
    .line 46
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 54
    .line 55
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    .line 56
    .line 57
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->c(F)V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iput-boolean v5, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    .line 69
    .line 70
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v0, p2, Landroidx/dynamicanimation/animation/AnimationHandler;->a:Landroidx/collection/SimpleArrayMap;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v0, p2, Landroidx/dynamicanimation/animation/AnimationHandler;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v4, 0x1

    .line 86
    if-ltz v1, :cond_2

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    iput-boolean v4, p2, Landroidx/dynamicanimation/animation/AnimationHandler;->f:Z

    .line 93
    .line 94
    :cond_2
    iput-wide v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:J

    .line 95
    .line 96
    iput-boolean v5, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->c:Z

    .line 97
    .line 98
    :goto_1
    iget-object p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->j:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ge v5, v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 117
    .line 118
    invoke-interface {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->a()V

    .line 119
    .line 120
    .line 121
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    sub-int/2addr v0, v4

    .line 129
    :goto_2
    if-ltz v0, :cond_6

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    return p1
.end method

.method public final c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->d:Lcom/google/android/material/shape/Shapeable;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->b(Lcom/google/android/material/shape/Shapeable;F)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->a()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    add-int/lit8 p1, p1, -0x1

    .line 42
    .line 43
    :goto_1
    if-ltz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    return-void
.end method

.method public abstract d(J)Z
.end method
