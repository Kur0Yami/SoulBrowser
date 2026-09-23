.class public final Lcom/google/android/gms/internal/cast/zzx;
.super Lcom/google/android/gms/cast/framework/SessionTransferCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzcr;

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzcr;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzcr;->a:Ljava/lang/Integer;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzx;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 15
    .line 16
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/zzy;->b:Lcom/google/android/gms/internal/cast/zzax;

    .line 17
    .line 18
    iget v0, v0, Lcom/google/android/gms/internal/cast/zzax;->f:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzcr;->b:Ljava/lang/Boolean;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/cast/zzcs;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzcs;-><init>(Lcom/google/android/gms/internal/cast/zzcr;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/cast/zzy;->a(Lcom/google/android/gms/internal/cast/zzcs;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    return-void
.end method
