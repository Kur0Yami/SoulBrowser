.class Lcom/mycompany/app/torrent/TorrentStream$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/torrent/TorrentStream;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/torrent/TorrentStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream$4;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$4;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 12
    .line 13
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_resume(JLcom/frostwire/jlibtorrent/swig/session_handle;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
