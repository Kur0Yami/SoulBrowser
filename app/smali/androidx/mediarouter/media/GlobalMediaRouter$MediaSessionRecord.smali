.class final Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaSessionRecord"
.end annotation


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat;

.field public b:Landroidx/media/VolumeProviderCompat;

.field public final synthetic c:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->n:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 8
    .line 9
    iget v1, v1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->d:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->b:Landroidx/media/VolumeProviderCompat;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
