.class public final Lcom/google/android/gms/internal/mlkit_common/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-string v2, "A SourcePolicy can only set internal() or external() once."

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->b:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->a()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzf;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->b:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->b:Ljava/lang/Boolean;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzd;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->a:Lcom/google/android/gms/internal/mlkit_common/zzac;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzac;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->a()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzf;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->b:Ljava/lang/Boolean;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    .line 57
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->b:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->a()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method
