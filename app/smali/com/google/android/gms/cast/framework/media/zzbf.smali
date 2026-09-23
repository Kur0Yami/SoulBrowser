.class final Lcom/google/android/gms/cast/framework/media/zzbf;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/framework/media/zzbg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/zzbg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbf;->c:Lcom/google/android/gms/cast/framework/media/zzbg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzbf;->c:Lcom/google/android/gms/cast/framework/media/zzbg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->a:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->K(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->b:J

    .line 11
    .line 12
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzfk;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
