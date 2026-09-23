.class final Lcom/google/android/gms/internal/play_billing/zzcn$zze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/play_billing/zzcn$zze;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lcom/google/android/gms/internal/play_billing/zzcn$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcn$zze;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcn$zze;->c:Lcom/google/android/gms/internal/play_billing/zzcn$zze;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcn;->k:Lcom/google/android/gms/internal/play_billing/zzcn$zza;

    .line 9
    .line 10
    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcn$zza;->d(Lcom/google/android/gms/internal/play_billing/zzcn$zze;Ljava/lang/Thread;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
