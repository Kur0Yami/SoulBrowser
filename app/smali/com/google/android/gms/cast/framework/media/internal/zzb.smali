.class public final Lcom/google/android/gms/cast/framework/media/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public c:Landroid/net/Uri;

.field public d:Lcom/google/android/gms/cast/framework/media/internal/zzd;

.field public e:Lcom/google/android/gms/cast/framework/media/internal/zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 21
    .line 22
    iget v0, p1, Lcom/google/android/gms/cast/framework/media/ImageHints;->f:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a:Landroid/content/Context;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget p1, p1, Lcom/google/android/gms/cast/framework/media/ImageHints;->g:I

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v3, Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 35
    .line 36
    invoke-direct {v3, v2, v0, p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzd;-><init>(Landroid/content/Context;IILcom/google/android/gms/cast/framework/media/internal/zzb;)V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 43
    .line 44
    invoke-direct {p1, v2, v1, v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzd;-><init>(Landroid/content/Context;IILcom/google/android/gms/cast/framework/media/internal/zzb;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 48
    .line 49
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/net/Uri;

    .line 64
    .line 65
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    new-array v3, v3, [Landroid/net/Uri;

    .line 69
    .line 70
    aput-object v0, v3, v1

    .line 71
    .line 72
    invoke-virtual {p1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzd;

    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 13
    .line 14
    return-void
.end method
