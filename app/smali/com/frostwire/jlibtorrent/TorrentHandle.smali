.class public final Lcom/frostwire/jlibtorrent/TorrentHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;
    }
.end annotation


# static fields
.field public static final d:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final j:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final k:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final l:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final m:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final n:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

.field public static final o:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

.field public static final p:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

.field public static final q:Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;

.field public static final r:Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;


# instance fields
.field public final a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

.field public b:J

.field public c:Lcom/frostwire/jlibtorrent/TorrentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_status_flags_t()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->d:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 12
    .line 13
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->c:Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

    .line 14
    .line 15
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->e:Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

    .line 16
    .line 17
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->d:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 18
    .line 19
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->f:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 20
    .line 21
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->e:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 22
    .line 23
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->g:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 24
    .line 25
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->f:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 26
    .line 27
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->h:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 28
    .line 29
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->g:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 30
    .line 31
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->i:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 32
    .line 33
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->h:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 34
    .line 35
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->j:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 36
    .line 37
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->i:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 38
    .line 39
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->k:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 40
    .line 41
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->j:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 42
    .line 43
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->l:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 44
    .line 45
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->k:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 46
    .line 47
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->m:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 48
    .line 49
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->o:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 50
    .line 51
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->n:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 52
    .line 53
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->p:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 54
    .line 55
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->o:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 56
    .line 57
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->q:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 58
    .line 59
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->p:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 60
    .line 61
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->r:Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;

    .line 62
    .line 63
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->q:Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;

    .line 64
    .line 65
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->l:Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;

    .line 66
    .line 67
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->r:Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/torrent_handle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 5
    .line 6
    return-void
.end method
