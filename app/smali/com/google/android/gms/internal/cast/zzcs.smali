.class public final Lcom/google/android/gms/internal/cast/zzcs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:J

.field public final c:Ljava/lang/Boolean;

.field public d:J

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzcr;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzcr;->c:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzcs;->e:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzcr;->a:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzcs;->a:Ljava/lang/Integer;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzcr;->b:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcs;->c:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzcs;->b:J

    .line 25
    .line 26
    return-void
.end method
