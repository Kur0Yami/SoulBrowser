.class Lcom/mycompany/app/cast/CastUtil$10;
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
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$10;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastUtil$10;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/cast/CastUtil;->p:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 4
    .line 5
    iget v3, v0, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 8
    .line 9
    :try_start_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->r([Lcom/google/android/gms/cast/MediaQueueItem;IIJ)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
