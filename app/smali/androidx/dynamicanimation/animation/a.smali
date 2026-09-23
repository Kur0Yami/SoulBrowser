.class public final synthetic Landroidx/dynamicanimation/animation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/a;->c:Landroidx/dynamicanimation/animation/AnimationHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/a;->c:Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->c:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->a:Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    const/4 v6, 0x0

    .line 18
    move v7, v6

    .line 19
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    if-ge v7, v8, :cond_3

    .line 24
    .line 25
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    check-cast v8, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 30
    .line 31
    if-nez v8, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v9, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->a:Landroidx/collection/SimpleArrayMap;

    .line 35
    .line 36
    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    check-cast v10, Ljava/lang/Long;

    .line 41
    .line 42
    if-nez v10, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    cmp-long v10, v10, v4

    .line 50
    .line 51
    if-gez v10, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {v8, v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->a(J)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->f:Z

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    :goto_3
    if-ltz v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v2, 0x21

    .line 95
    .line 96
    if-lt v1, v2, :cond_6

    .line 97
    .line 98
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->h:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->a()Z

    .line 101
    .line 102
    .line 103
    :cond_6
    iput-boolean v6, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->f:Z

    .line 104
    .line 105
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-lez v1, :cond_8

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 112
    .line 113
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->d:Landroidx/dynamicanimation/animation/a;

    .line 114
    .line 115
    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->b(Landroidx/dynamicanimation/animation/a;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    return-void
.end method
