.class public final synthetic Landroidx/core/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/a;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/core/app/a;->c:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    sget-object v1, Landroidx/core/app/ActivityRecreator;->g:Landroid/os/Handler;

    .line 10
    .line 11
    sget-object v2, Landroidx/core/app/ActivityRecreator;->f:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x1c

    .line 16
    .line 17
    if-lt v3, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/16 v4, 0x1b

    .line 24
    .line 25
    const/16 v5, 0x1a

    .line 26
    .line 27
    if-eq v3, v5, :cond_1

    .line 28
    .line 29
    if-ne v3, v4, :cond_2

    .line 30
    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    sget-object v6, Landroidx/core/app/ActivityRecreator;->e:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    if-nez v6, :cond_3

    .line 38
    .line 39
    sget-object v6, Landroidx/core/app/ActivityRecreator;->d:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_3
    :try_start_0
    sget-object v6, Landroidx/core/app/ActivityRecreator;->c:Ljava/lang/reflect/Field;

    .line 46
    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-nez v6, :cond_4

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_4
    sget-object v7, Landroidx/core/app/ActivityRecreator;->b:Ljava/lang/reflect/Field;

    .line 55
    .line 56
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-nez v7, :cond_5

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    new-instance v9, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 68
    .line 69
    invoke-direct {v9, v0}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 73
    .line 74
    .line 75
    new-instance v10, Landroidx/core/app/ActivityRecreator$1;

    .line 76
    .line 77
    invoke-direct {v10, v9, v6}, Landroidx/core/app/ActivityRecreator$1;-><init>(Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .line 82
    .line 83
    const/4 v10, 0x1

    .line 84
    const/4 v11, 0x0

    .line 85
    if-eq v3, v5, :cond_7

    .line 86
    .line 87
    if-ne v3, v4, :cond_6

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    move v3, v11

    .line 91
    goto :goto_1

    .line 92
    :cond_7
    :goto_0
    move v3, v10

    .line 93
    :goto_1
    if-eqz v3, :cond_8

    .line 94
    .line 95
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/16 v4, 0x9

    .line 100
    .line 101
    new-array v4, v4, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v6, v4, v11

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    aput-object v5, v4, v10

    .line 107
    .line 108
    const/4 v6, 0x2

    .line 109
    aput-object v5, v4, v6

    .line 110
    .line 111
    const/4 v6, 0x3

    .line 112
    aput-object v3, v4, v6

    .line 113
    .line 114
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    const/4 v6, 0x4

    .line 117
    aput-object v3, v4, v6

    .line 118
    .line 119
    const/4 v6, 0x5

    .line 120
    aput-object v5, v4, v6

    .line 121
    .line 122
    const/4 v6, 0x6

    .line 123
    aput-object v5, v4, v6

    .line 124
    .line 125
    const/4 v5, 0x7

    .line 126
    aput-object v3, v4, v5

    .line 127
    .line 128
    const/16 v5, 0x8

    .line 129
    .line 130
    aput-object v3, v4, v5

    .line 131
    .line 132
    invoke-virtual {v2, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-exception v2

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .line 140
    .line 141
    :goto_2
    :try_start_2
    new-instance v2, Landroidx/core/app/ActivityRecreator$2;

    .line 142
    .line 143
    invoke-direct {v2, v8, v9}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_3
    new-instance v3, Landroidx/core/app/ActivityRecreator$2;

    .line 151
    .line 152
    invoke-direct {v3, v8, v9}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :catchall_1
    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 160
    .line 161
    .line 162
    :cond_9
    return-void
.end method
