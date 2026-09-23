.class final Lcom/google/android/gms/cast/internal/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/internal/zzx;

.field public final synthetic f:Lcom/google/android/gms/cast/internal/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/cast/internal/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzu;->c:Lcom/google/android/gms/cast/internal/zzx;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzu;->f:Lcom/google/android/gms/cast/internal/zza;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->f:Lcom/google/android/gms/cast/internal/zza;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zza;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->c:Lcom/google/android/gms/cast/internal/zzx;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/zzx;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iput-object v0, v1, Lcom/google/android/gms/cast/internal/zzx;->l:Ljava/lang/String;

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v4

    .line 22
    :goto_0
    sget-object v2, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-boolean v6, v1, Lcom/google/android/gms/cast/internal/zzx;->n:Z

    .line 29
    .line 30
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x2

    .line 35
    new-array v7, v7, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v5, v7, v4

    .line 38
    .line 39
    aput-object v6, v7, v3

    .line 40
    .line 41
    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 42
    .line 43
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/zzx;->g:Lcom/google/android/gms/cast/Cast$Listener;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-boolean v0, v1, Lcom/google/android/gms/cast/internal/zzx;->n:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/cast/Cast$Listener;->d()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iput-boolean v4, v1, Lcom/google/android/gms/cast/internal/zzx;->n:Z

    .line 60
    .line 61
    return-void
.end method
