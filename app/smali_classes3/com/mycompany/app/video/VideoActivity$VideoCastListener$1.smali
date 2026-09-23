.class Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field public final synthetic b:Lcom/mycompany/app/video/VideoActivity$VideoCastListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$VideoCastListener;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;->b:Lcom/mycompany/app/video/VideoActivity$VideoCastListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;->b:Lcom/mycompany/app/video/VideoActivity$VideoCastListener;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    const-class v3, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
