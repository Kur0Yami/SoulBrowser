.class public Landroidx/mediarouter/media/RemotePlaybackClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;,
        Landroidx/mediarouter/media/RemotePlaybackClient$Api33;,
        Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;,
        Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "RemotePlaybackClient"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
