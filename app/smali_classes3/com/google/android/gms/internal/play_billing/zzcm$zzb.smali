.class final Lcom/google/android/gms/internal/play_billing/zzcm$zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/play_billing/zzcm;

.field public final f:Lcom/google/android/gms/internal/play_billing/zzdc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcm;Lcom/google/android/gms/internal/play_billing/zzdc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcm$zzb;->c:Lcom/google/android/gms/internal/play_billing/zzcm;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcm$zzb;->f:Lcom/google/android/gms/internal/play_billing/zzdc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm$zzb;->c:Lcom/google/android/gms/internal/play_billing/zzcm;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcn;->c:Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm$zzb;->f:Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcm$zzb;->c:Lcom/google/android/gms/internal/play_billing/zzcm;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcm;->g(Lcom/google/android/gms/internal/play_billing/zzdc;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcn;->k:Lcom/google/android/gms/internal/play_billing/zzcn$zza;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcn$zza;->f(Lcom/google/android/gms/internal/play_billing/zzcn;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm$zzb;->c:Lcom/google/android/gms/internal/play_billing/zzcm;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcm;->i(Lcom/google/android/gms/internal/play_billing/zzcm;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
