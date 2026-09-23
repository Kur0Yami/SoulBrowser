.class Landroidx/transition/ChangeTransform$GhostListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GhostListener"
.end annotation


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final e(Landroidx/transition/Transition;)V
    .locals 7

    .line 1
    const-string v0, "GhostViewApi21"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->A(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 4
    .line 5
    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1c

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne p1, v1, :cond_3

    .line 12
    .line 13
    sget-boolean p1, Landroidx/transition/GhostViewPlatform;->h:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    :try_start_0
    sget-boolean p1, Landroidx/transition/GhostViewPlatform;->f:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    :try_start_1
    const-string p1, "android.view.GhostView"

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sput-object p1, Landroidx/transition/GhostViewPlatform;->c:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    const-string v4, "Failed to retrieve GhostView class"

    .line 34
    .line 35
    invoke-static {v0, v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    sput-boolean v3, Landroidx/transition/GhostViewPlatform;->f:Z

    .line 39
    .line 40
    :cond_0
    sget-object p1, Landroidx/transition/GhostViewPlatform;->c:Ljava/lang/Class;

    .line 41
    .line 42
    const-string v4, "removeGhost"

    .line 43
    .line 44
    new-array v5, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    const-class v6, Landroid/view/View;

    .line 47
    .line 48
    aput-object v6, v5, v1

    .line 49
    .line 50
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sput-object p1, Landroidx/transition/GhostViewPlatform;->g:Ljava/lang/reflect/Method;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception p1

    .line 61
    const-string v4, "Failed to retrieve removeGhost method"

    .line 62
    .line 63
    invoke-static {v0, v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    :goto_1
    sput-boolean v3, Landroidx/transition/GhostViewPlatform;->h:Z

    .line 67
    .line 68
    :cond_1
    sget-object p1, Landroidx/transition/GhostViewPlatform;->g:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    :try_start_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v2, v0, v1

    .line 75
    .line 76
    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_2
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_3
    :cond_2
    :goto_2
    throw v2

    .line 92
    :cond_3
    sget p1, Landroidx/transition/GhostViewPort;->g:I

    .line 93
    .line 94
    throw v2
.end method

.method public final h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
