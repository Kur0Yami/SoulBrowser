.class public final Lcom/frostwire/jlibtorrent/TorrentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/TorrentBuilder$Result;,
        Lcom/frostwire/jlibtorrent/TorrentBuilder$Listener;
    }
.end annotation


# static fields
.field public static final a:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final b:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final c:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/create_flags_t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->c:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 2
    .line 3
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentBuilder;->a:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 4
    .line 5
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->d:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 6
    .line 7
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentBuilder;->b:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 8
    .line 9
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->e:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 10
    .line 11
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentBuilder;->c:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 12
    .line 13
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->f:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 14
    .line 15
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentBuilder;->d:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 16
    .line 17
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->g:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 18
    .line 19
    sput-object v0, Lcom/frostwire/jlibtorrent/TorrentBuilder;->e:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 20
    .line 21
    return-void
.end method
