.class final synthetic Lcom/google/android/gms/cast/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/zzbl;

.field public final synthetic f:Lcom/google/android/gms/cast/internal/zza;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbl;Lcom/google/android/gms/cast/internal/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbi;->c:Lcom/google/android/gms/cast/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbi;->f:Lcom/google/android/gms/cast/internal/zza;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbi;->c:Lcom/google/android/gms/cast/zzbl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbi;->f:Lcom/google/android/gms/cast/internal/zza;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zza;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/android/gms/cast/zzbm;->k:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput-object v1, v0, Lcom/google/android/gms/cast/zzbm;->k:Ljava/lang/String;

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v4

    .line 27
    :goto_0
    sget-object v2, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-boolean v6, v0, Lcom/google/android/gms/cast/zzbm;->d:Z

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/4 v7, 0x2

    .line 40
    new-array v7, v7, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v5, v7, v4

    .line 43
    .line 44
    aput-object v6, v7, v3

    .line 45
    .line 46
    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lcom/google/android/gms/cast/zzbm;->t:Lcom/google/android/gms/cast/Cast$Listener;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    iget-boolean v1, v0, Lcom/google/android/gms/cast/zzbm;->d:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/cast/Cast$Listener;->d()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iput-boolean v4, v0, Lcom/google/android/gms/cast/zzbm;->d:Z

    .line 65
    .line 66
    return-void
.end method
