.class final Lcom/google/android/gms/cast/framework/media/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public d:Z

.field public final synthetic e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbg;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbg;->a:Ljava/util/HashSet;

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/zzbg;->b:J

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzbf;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/zzbf;-><init>(Lcom/google/android/gms/cast/framework/media/zzbg;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbg;->c:Ljava/lang/Runnable;

    .line 21
    .line 22
    return-void
.end method
