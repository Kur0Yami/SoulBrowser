.class final synthetic Lcom/google/android/gms/internal/cast/zzej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzek;

.field public final synthetic f:Lcom/google/android/gms/internal/cast/zzef;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzek;Lcom/google/android/gms/internal/cast/zzef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzej;->c:Lcom/google/android/gms/internal/cast/zzek;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzej;->f:Lcom/google/android/gms/internal/cast/zzef;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzej;->c:Lcom/google/android/gms/internal/cast/zzek;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzej;->f:Lcom/google/android/gms/internal/cast/zzef;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzek;->h:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzek;->e:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cast/zzek;->i:Z

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzek;->c:Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzef;->zza()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method
