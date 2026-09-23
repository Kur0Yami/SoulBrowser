.class Lcom/mycompany/app/setting/CastActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/CastActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/CastActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity$3;->c:Lcom/mycompany/app/setting/CastActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity$3;->c:Lcom/mycompany/app/setting/CastActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/setting/CastActivity;->B1:I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/setting/CastActivity;->y0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, v1, Lcom/mycompany/app/setting/CastActivity;->g1:Z

    .line 18
    .line 19
    if-nez v0, :cond_8

    .line 20
    .line 21
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->q1:Lcom/mycompany/app/setting/CastActivity$MyStateListener;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    :try_start_0
    new-instance v2, Lcom/mycompany/app/setting/CastActivity$MyStateListener;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Lcom/mycompany/app/setting/CastActivity$MyStateListener;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->q1:Lcom/mycompany/app/setting/CastActivity$MyStateListener;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/CastContext;->a(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    iput-object v3, v1, Lcom/mycompany/app/setting/CastActivity;->q1:Lcom/mycompany/app/setting/CastActivity$MyStateListener;

    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    :try_start_1
    new-instance v0, Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/mycompany/app/setting/CastActivity$MySessionListener;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 55
    .line 56
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->a(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_1
    iput-object v3, v1, Lcom/mycompany/app/setting/CastActivity;->r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 69
    .line 70
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    .line 82
    :catch_2
    iget-boolean v0, v1, Lcom/mycompany/app/setting/CastActivity;->t1:Z

    .line 83
    .line 84
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastContext;->b()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v3, 0x1

    .line 91
    if-ne v2, v3, :cond_5

    .line 92
    .line 93
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v3, 0x0

    .line 105
    :cond_5
    :goto_2
    iput-boolean v3, v1, Lcom/mycompany/app/setting/CastActivity;->s1:Z

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/mycompany/app/setting/CastActivity;->u0()V

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    iget-boolean v0, v1, Lcom/mycompany/app/setting/CastActivity;->t1:Z

    .line 113
    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    :try_start_3
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {v2, v0}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 124
    .line 125
    .line 126
    :catch_3
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 127
    .line 128
    if-nez v0, :cond_7

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    new-instance v2, Lcom/mycompany/app/setting/CastActivity$5;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Lcom/mycompany/app/setting/CastActivity$5;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :cond_8
    :goto_3
    sget v0, Lcom/mycompany/app/setting/CastActivity;->B1:I

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/mycompany/app/setting/CastActivity;->x0()V

    .line 142
    .line 143
    .line 144
    return-void
.end method
