.class public final Lcom/google/android/gms/internal/cast/zzn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# static fields
.field public static final j:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzj;

.field public final b:Lcom/google/android/gms/internal/cast/zzax;

.field public final c:Lcom/google/android/gms/internal/cast/zzp;

.field public final d:Ljava/lang/Runnable;

.field public final e:Lcom/google/android/gms/internal/cast/zzfk;

.field public final f:Landroid/content/SharedPreferences;

.field public g:Lcom/google/android/gms/internal/cast/zzo;

.field public h:Lcom/google/android/gms/cast/framework/CastSession;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "ApplicationAnalytics"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzax;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzn;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzn;->b:Lcom/google/android/gms/internal/cast/zzax;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/zzp;

    .line 11
    .line 12
    invoke-direct {p1, p5, p4}, Lcom/google/android/gms/internal/cast/zzp;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/gms/internal/cast/zzfk;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzn;->e:Lcom/google/android/gms/internal/cast/zzfk;

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/gms/internal/cast/zzk;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzk;-><init>(Lcom/google/android/gms/internal/cast/zzn;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzn;->d:Ljava/lang/Runnable;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->f:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/cast/zzo;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v1, v3, v4

    .line 18
    .line 19
    const-string v4, "Save the ApplicationAnalyticsSession to SharedPreferences %s"

    .line 20
    .line 21
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "application_id"

    .line 31
    .line 32
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->c:Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "receiver_metrics_id"

    .line 38
    .line 39
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    iget-wide v2, v0, Lcom/google/android/gms/internal/cast/zzo;->d:J

    .line 43
    .line 44
    const-string v4, "analytics_session_id"

    .line 45
    .line 46
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    iget v2, v0, Lcom/google/android/gms/internal/cast/zzo;->e:I

    .line 50
    .line 51
    const-string v3, "event_sequence_number"

    .line 52
    .line 53
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->f:Ljava/lang/String;

    .line 57
    .line 58
    const-string v3, "receiver_session_id"

    .line 59
    .line 60
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    iget v2, v0, Lcom/google/android/gms/internal/cast/zzo;->g:I

    .line 64
    .line 65
    const-string v3, "device_capabilities"

    .line 66
    .line 67
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "device_model_name"

    .line 73
    .line 74
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->i:Ljava/lang/String;

    .line 78
    .line 79
    const-string v3, "manufacturer"

    .line 80
    .line 81
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->j:Ljava/lang/String;

    .line 85
    .line 86
    const-string v3, "product_name"

    .line 87
    .line 88
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->k:Ljava/lang/String;

    .line 92
    .line 93
    const-string v3, "build_type"

    .line 94
    .line 95
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->l:Ljava/lang/String;

    .line 99
    .line 100
    const-string v3, "cast_build_version"

    .line 101
    .line 102
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzo;->m:Ljava/lang/String;

    .line 106
    .line 107
    const-string v3, "system_build_number"

    .line 108
    .line 109
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    iget v2, v0, Lcom/google/android/gms/internal/cast/zzo;->n:I

    .line 113
    .line 114
    const-string v3, "device_category"

    .line 115
    .line 116
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    .line 118
    .line 119
    iget v2, v0, Lcom/google/android/gms/internal/cast/zzo;->p:I

    .line 120
    .line 121
    const-string v3, "analytics_session_start_type"

    .line 122
    .line 123
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    iget-boolean v0, v0, Lcom/google/android/gms/internal/cast/zzo;->o:Z

    .line 127
    .line 128
    const-string v2, "is_output_switcher_enabled"

    .line 129
    .line 130
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const-string v0, "log session ended with error = %d"

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzn;->e()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzp;->a(Lcom/google/android/gms/internal/cast/zzo;I)Lcom/google/android/gms/internal/cast/zzqr;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 30
    .line 31
    const/16 v1, 0xe4

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzn;->e:Lcom/google/android/gms/internal/cast/zzfk;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->d:Ljava/lang/Runnable;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzn;->i:Z

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->e:Lcom/google/android/gms/internal/cast/zzfk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->d:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Runnable;

    .line 16
    .line 17
    const-wide/32 v2, 0x493e0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "Create a new ApplicationAnalyticsSession based on CastSession"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->b:Lcom/google/android/gms/internal/cast/zzax;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/cast/zzo;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/cast/zzo;-><init>(Lcom/google/android/gms/internal/cast/zzax;)V

    .line 16
    .line 17
    .line 18
    sget-wide v3, Lcom/google/android/gms/internal/cast/zzo;->r:J

    .line 19
    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v5

    .line 23
    sput-wide v3, Lcom/google/android/gms/internal/cast/zzo;->r:J

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/cast/zzo;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/CastSession;->g:Lcom/google/android/gms/internal/cast/zzbx;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzbx;->zzo()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, v1

    .line 48
    :goto_0
    iput-boolean v2, v0, Lcom/google/android/gms/internal/cast/zzo;->o:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/google/android/gms/internal/cast/zzo;

    .line 57
    .line 58
    sget-object v2, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 59
    .line 60
    const-string v2, "Must be called from the main thread."

    .line 61
    .line 62
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 66
    .line 67
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/google/android/gms/cast/framework/CastContext;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v3, v0, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 95
    .line 96
    :goto_1
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzn;->f(Lcom/google/android/gms/cast/CastDevice;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/google/android/gms/internal/cast/zzo;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 110
    .line 111
    if-nez v2, :cond_3

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/Session;->i()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :goto_2
    iput v1, v0, Lcom/google/android/gms/internal/cast/zzo;->p:I

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzn;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "Must be called from the main thread."

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzo;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzn;->f(Lcom/google/android/gms/cast/CastDevice;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v1, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "The analyticsSession should not be null for logging. Create a dummy one."

    .line 51
    .line 52
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzn;->d()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final f(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzo;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 11
    .line 12
    iget v1, v1, Lcom/google/android/gms/cast/internal/zzp;->a:I

    .line 13
    .line 14
    iput v1, v0, Lcom/google/android/gms/internal/cast/zzo;->g:I

    .line 15
    .line 16
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->zzd()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, Lcom/google/android/gms/internal/cast/zzo;->n:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->G()Lcom/google/android/gms/cast/internal/zzaa;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->h:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzo;->i:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->i:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzo;->j:Ljava/lang/String;

    .line 43
    .line 44
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->j:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzo;->k:Ljava/lang/String;

    .line 49
    .line 50
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->k:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzo;->l:Ljava/lang/String;

    .line 55
    .line 56
    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/cast/internal/zzaa;->l:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzo;->m:Ljava/lang/String;

    .line 61
    .line 62
    :cond_5
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-array v1, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "The analytics session is null when matching with application ID."

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 17
    .line 18
    const-string v1, "Must be called from the main thread."

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/google/android/gms/cast/framework/CastContext;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v3, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_2
    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v1, v3, v2

    .line 66
    .line 67
    const-string v1, "The analytics session doesn\'t match the application ID %s"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return v2
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzn;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/cast/zzo;->f:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v0, v1

    .line 34
    .line 35
    const-string p1, "The analytics session doesn\'t match the receiver session ID %s."

    .line 36
    .line 37
    sget-object v2, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 38
    .line 39
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return v1
.end method
