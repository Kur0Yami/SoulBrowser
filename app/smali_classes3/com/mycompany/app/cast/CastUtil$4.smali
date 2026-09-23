.class Lcom/mycompany/app/cast/CastUtil$4;
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
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$4;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastUtil$4;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->o:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->q(Lcom/google/android/gms/cast/MediaLoadRequestData;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/cast/CastUtil$5;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/cast/CastUtil$5;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
