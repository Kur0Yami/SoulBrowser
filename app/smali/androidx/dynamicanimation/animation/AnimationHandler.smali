.class public Landroidx/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;,
        Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Landroidx/collection/SimpleArrayMap;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field public final d:Landroidx/dynamicanimation/animation/a;

.field public final e:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

.field public f:Z

.field public g:F

.field public h:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->i:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->a:Landroidx/collection/SimpleArrayMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->c:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 25
    .line 26
    new-instance v0, Landroidx/dynamicanimation/animation/a;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/a;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->d:Landroidx/dynamicanimation/animation/a;

    .line 32
    .line 33
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->f:Z

    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    iput v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->g:F

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->d:Landroidx/dynamicanimation/animation/a;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 12
    .line 13
    check-cast v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->b(Landroidx/dynamicanimation/animation/a;)V

    .line 16
    .line 17
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    if-lt v1, v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->g:F

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->h:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->h:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->h:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 42
    .line 43
    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->a:Landroidx/dynamicanimation/animation/b;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    new-instance v2, Landroidx/dynamicanimation/animation/b;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Landroidx/dynamicanimation/animation/b;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->a:Landroidx/dynamicanimation/animation/b;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
