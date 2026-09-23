.class Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$MediaBrowserServiceApi21;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserServiceApi21"
.end annotation


# instance fields
.field public final synthetic c:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$MediaBrowserServiceApi21;->c:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 7

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$MediaBrowserServiceApi21;->c:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 p3, -0x1

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const-string v5, "extra_client_version"

    .line 23
    .line 24
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroid/os/Messenger;

    .line 34
    .line 35
    invoke-direct {v4, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    iput-object v4, v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->c:Landroid/os/Messenger;

    .line 39
    .line 40
    new-instance v4, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "extra_service_version"

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->c:Landroid/os/Messenger;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "extra_messenger"

    .line 58
    .line 59
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    .line 61
    .line 62
    iget-object v5, v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    const-string v4, "extra_calling_pid"

    .line 68
    .line 69
    invoke-virtual {v3, v4, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 77
    .line 78
    invoke-direct {v3, v1, p1, p3, p2}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/media/MediaBrowserServiceCompat;->a()Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_2
    iget-object p1, v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->c:Landroid/os/Messenger;

    .line 89
    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    throw v2

    .line 93
    :cond_3
    throw v2
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$MediaBrowserServiceApi21;->c:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
