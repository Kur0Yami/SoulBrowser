.class final Lcom/google/android/gms/cast/framework/media/zzal;
.super Lcom/google/android/gms/cast/framework/media/zzbc;
.source "SourceFile"


# instance fields
.field public final synthetic d:[I

.field public final synthetic e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;[I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzal;->d:[I

    .line 2
    .line 3
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzal;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzbc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

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
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzal;->d:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v3, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzq;->b()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    :try_start_0
    const-string v6, "requestId"

    .line 24
    .line 25
    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v6, "type"

    .line 29
    .line 30
    const-string v7, "QUEUE_GET_ITEMS"

    .line 31
    .line 32
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v6, "mediaSessionId"

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzar;->e()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    new-instance v6, Lorg/json/JSONArray;

    .line 45
    .line 46
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .line 48
    .line 49
    array-length v7, v2

    .line 50
    const/4 v8, 0x0

    .line 51
    :goto_0
    if-ge v8, v7, :cond_0

    .line 52
    .line 53
    aget v9, v2, v8

    .line 54
    .line 55
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v2, "itemIds"

    .line 62
    .line 63
    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/cast/internal/zzq;->a(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzar;->u:Lcom/google/android/gms/cast/internal/zzav;

    .line 74
    .line 75
    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/gms/cast/internal/zzav;->a(JLcom/google/android/gms/cast/internal/zzat;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
