.class final Lcom/google/android/gms/cast/framework/media/zzt;
.super Lcom/google/android/gms/cast/framework/media/zzbc;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzt;->d:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/zzbc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzt;->d:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzbc;->b()Lcom/google/android/gms/cast/internal/zzat;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzq;->b()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    :try_start_0
    const-string v5, "requestId"

    .line 22
    .line 23
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v5, "type"

    .line 27
    .line 28
    const-string v6, "SKIP_AD"

    .line 29
    .line 30
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v5, "mediaSessionId"

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzar;->e()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v5

    .line 44
    iget-object v6, v0, Lcom/google/android/gms/cast/internal/zzq;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 45
    .line 46
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v7, "Error creating SkipAd message: "

    .line 53
    .line 54
    invoke-static {v7, v5}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const/4 v7, 0x0

    .line 59
    new-array v7, v7, [Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v8, v6, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/cast/internal/zzq;->a(JLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzar;->w:Lcom/google/android/gms/cast/internal/zzav;

    .line 78
    .line 79
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/cast/internal/zzav;->a(JLcom/google/android/gms/cast/internal/zzat;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
