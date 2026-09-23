.class Lcom/mycompany/app/cast/CastUtil$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/cast/CastUtil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/cast/CastUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$7;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastUtil$7;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/cast/CastUtil;->p:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 4
    .line 5
    iget-wide v5, v0, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 6
    .line 7
    :try_start_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->r([Lcom/google/android/gms/cast/MediaQueueItem;IIJ)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 24
    .line 25
    new-instance v2, Lcom/mycompany/app/cast/CastUtil$8;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/mycompany/app/cast/CastUtil$8;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
