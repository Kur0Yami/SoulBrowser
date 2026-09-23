.class public final Lcom/frostwire/jlibtorrent/TorrentStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/TorrentStatus$State;
    }
.end annotation


# instance fields
.field public final c:Lcom/frostwire/jlibtorrent/swig/torrent_status;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/torrent_status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/TorrentStatus;->c:Lcom/frostwire/jlibtorrent/swig/torrent_status;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/TorrentStatus;

    .line 2
    .line 3
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/torrent_status;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/TorrentStatus;->c:Lcom/frostwire/jlibtorrent/swig/torrent_status;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/torrent_status;->a:J

    .line 8
    .line 9
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_torrent_status__SWIG_1(JLcom/frostwire/jlibtorrent/swig/torrent_status;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/torrent_status;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/TorrentStatus;-><init>(Lcom/frostwire/jlibtorrent/swig/torrent_status;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
