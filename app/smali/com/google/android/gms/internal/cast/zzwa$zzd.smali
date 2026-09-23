.class final Lcom/google/android/gms/internal/cast/zzwa$zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/internal/cast/zzwa$zzd;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lcom/google/android/gms/internal/cast/zzwa$zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzwa$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzwa$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzwa$zzd;->d:Lcom/google/android/gms/internal/cast/zzwa$zzd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzwa$zzd;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzwa$zzd;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzwa$zzd;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzwa$zzd;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
