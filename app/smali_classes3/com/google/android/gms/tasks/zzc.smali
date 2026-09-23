.class final Lcom/google/android/gms/tasks/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/tasks/Task;

.field public final synthetic f:Lcom/google/android/gms/tasks/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzd;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzc;->c:Lcom/google/android/gms/tasks/Task;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzc;->f:Lcom/google/android/gms/tasks/zzd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzc;->c:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzc;->f:Lcom/google/android/gms/tasks/zzd;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v2, Lcom/google/android/gms/tasks/zzd;->g:Lcom/google/android/gms/tasks/zzw;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->u()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, v2, Lcom/google/android/gms/tasks/zzd;->f:Lcom/google/android/gms/tasks/Continuation;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    iget-object v1, v2, Lcom/google/android/gms/tasks/zzd;->g:Lcom/google/android/gms/tasks/zzw;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->r(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/tasks/zzd;->g:Lcom/google/android/gms/tasks/zzw;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->t(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    instance-of v1, v1, Ljava/lang/Exception;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Exception;

    .line 52
    .line 53
    iget-object v1, v2, Lcom/google/android/gms/tasks/zzd;->g:Lcom/google/android/gms/tasks/zzw;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->t(Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v1, v2, Lcom/google/android/gms/tasks/zzd;->g:Lcom/google/android/gms/tasks/zzw;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->t(Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
