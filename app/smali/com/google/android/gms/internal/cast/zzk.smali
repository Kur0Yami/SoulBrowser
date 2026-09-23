.class final synthetic Lcom/google/android/gms/internal/cast/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzk;->c:Lcom/google/android/gms/internal/cast/zzn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzk;->c:Lcom/google/android/gms/internal/cast/zzn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzp;->b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 20
    .line 21
    const/16 v2, 0xdf

    .line 22
    .line 23
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->c()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
