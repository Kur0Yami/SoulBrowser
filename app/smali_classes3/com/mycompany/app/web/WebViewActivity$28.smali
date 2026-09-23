.class Lcom/mycompany/app/web/WebViewActivity$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$28;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$28;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G6()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H6()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F1:Z

    .line 21
    .line 22
    if-nez v1, :cond_8

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sb:Lcom/google/android/gms/cast/framework/CastContext;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ub:Lcom/mycompany/app/web/WebViewActivity$MyStateListener;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    :try_start_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$MyStateListener;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$MyStateListener;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ub:Lcom/mycompany/app/web/WebViewActivity$MyStateListener;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/CastContext;->a(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ub:Lcom/mycompany/app/web/WebViewActivity$MyStateListener;

    .line 46
    .line 47
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->vb:Lcom/mycompany/app/web/WebViewActivity$MySessionListener;

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    :try_start_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$MySessionListener;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$MySessionListener;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->vb:Lcom/mycompany/app/web/WebViewActivity$MySessionListener;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sb:Lcom/google/android/gms/cast/framework/CastContext;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->vb:Lcom/mycompany/app/web/WebViewActivity$MySessionListener;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->a(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_1
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->vb:Lcom/mycompany/app/web/WebViewActivity$MySessionListener;

    .line 71
    .line 72
    :cond_4
    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sb:Lcom/google/android/gms/cast/framework/CastContext;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tb:Lcom/google/android/gms/cast/framework/CastSession;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .line 84
    :catch_2
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->xb:Z

    .line 85
    .line 86
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->sb:Lcom/google/android/gms/cast/framework/CastContext;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastContext;->b()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x1

    .line 93
    if-ne v2, v3, :cond_6

    .line 94
    .line 95
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->tb:Lcom/google/android/gms/cast/framework/CastSession;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const/4 v3, 0x0

    .line 107
    :cond_6
    :goto_2
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->wb:Z

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->I1()V

    .line 110
    .line 111
    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->xb:Z

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 119
    .line 120
    if-nez v1, :cond_7

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$29;

    .line 124
    .line 125
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$29;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    :cond_8
    :goto_3
    return-void
.end method
