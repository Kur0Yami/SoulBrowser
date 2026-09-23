.class final Lcom/google/android/gms/common/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzw;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/common/zzw;->zzb:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/zzw;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzw;->zzc:Z

    return v0
.end method

.method public final zzb(Landroid/content/Context;)Lcom/google/android/gms/common/zzp;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzp;

    .line 2
    .line 3
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 4
    .line 5
    invoke-direct {v4, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/zzw;->zza:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/google/android/gms/common/zzw;->zzb:Z

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/zzp;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZZ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
