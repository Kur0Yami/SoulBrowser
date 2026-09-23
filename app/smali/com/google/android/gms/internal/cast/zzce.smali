.class public final Lcom/google/android/gms/internal/cast/zzce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# static fields
.field public static final i:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final b:Ljava/util/Set;

.field public final c:Lcom/google/android/gms/internal/cast/zzfk;

.field public final d:Ljava/lang/Runnable;

.field public e:I

.field public f:Z

.field public g:Lcom/google/android/gms/cast/framework/SessionManager;

.field public h:Lcom/google/android/gms/cast/SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "SessionTransController"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->b:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->a:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/internal/cast/zzfk;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->c:Lcom/google/android/gms/internal/cast/zzfk;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/cast/zzcd;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzcd;-><init>(Lcom/google/android/gms/internal/cast/zzce;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->d:Ljava/lang/Runnable;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/framework/SessionManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->g:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->c:Lcom/google/android/gms/internal/cast/zzfk;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/zzca;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzca;-><init>(Lcom/google/android/gms/internal/cast/zzce;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->c:Lcom/google/android/gms/internal/cast/zzfk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzce;->d:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->h:Lcom/google/android/gms/cast/SessionState;

    .line 25
    .line 26
    return-void
.end method
