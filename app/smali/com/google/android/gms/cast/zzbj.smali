.class final synthetic Lcom/google/android/gms/cast/zzbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/zzbl;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbj;->c:Lcom/google/android/gms/cast/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbj;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzbj;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbj;->c:Lcom/google/android/gms/cast/zzbl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/gms/cast/zzbm;->s:Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbj;->f:Ljava/lang/String;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbj;->g:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbm;->q:Lcom/google/android/gms/cast/CastDevice;

    .line 24
    .line 25
    invoke-interface {v3, v1}, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    sget-object v1, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 36
    .line 37
    const-string v2, "Discarded message for unknown namespace \'%s\'"

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method
