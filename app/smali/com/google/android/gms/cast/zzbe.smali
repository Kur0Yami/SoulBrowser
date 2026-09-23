.class final synthetic Lcom/google/android/gms/cast/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/zzbl;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbe;->c:Lcom/google/android/gms/cast/zzbl;

    iput p2, p0, Lcom/google/android/gms/cast/zzbe;->f:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/cast/zzbe;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbe;->c:Lcom/google/android/gms/cast/zzbl;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    iput v1, v0, Lcom/google/android/gms/cast/zzbm;->v:I

    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/google/android/gms/cast/zzbm;->d:Z

    .line 16
    .line 17
    iget-object v3, v0, Lcom/google/android/gms/cast/zzbm;->u:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbm;->u:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/cast/zzp;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/cast/zzp;->a()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    monitor-exit v3

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v0

    .line 48
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 49
    .line 50
    iput v2, v3, Lcom/google/android/gms/cast/zzbm;->v:I

    .line 51
    .line 52
    iget-object v2, v3, Lcom/google/android/gms/cast/zzbm;->u:Ljava/util/List;

    .line 53
    .line 54
    monitor-enter v2

    .line 55
    :try_start_1
    iget-object v3, v3, Lcom/google/android/gms/cast/zzbm;->u:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/google/android/gms/cast/zzp;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Lcom/google/android/gms/cast/zzp;->b(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    iget-object v0, v1, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->j()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    throw v0
.end method
