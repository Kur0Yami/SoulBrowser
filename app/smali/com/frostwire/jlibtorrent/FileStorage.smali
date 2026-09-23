.class public final Lcom/frostwire/jlibtorrent/FileStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/file_flags_t;


# instance fields
.field public final a:Lcom/frostwire/jlibtorrent/swig/file_storage;

.field public final b:Lcom/frostwire/jlibtorrent/swig/torrent_info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->b:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 2
    .line 3
    sput-object v0, Lcom/frostwire/jlibtorrent/FileStorage;->c:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 4
    .line 5
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->c:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 6
    .line 7
    sput-object v0, Lcom/frostwire/jlibtorrent/FileStorage;->d:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 8
    .line 9
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->d:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 10
    .line 11
    sput-object v0, Lcom/frostwire/jlibtorrent/FileStorage;->e:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 12
    .line 13
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->e:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 14
    .line 15
    sput-object v0, Lcom/frostwire/jlibtorrent/FileStorage;->f:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/file_storage;Lcom/frostwire/jlibtorrent/swig/torrent_info;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/FileStorage;->a:Lcom/frostwire/jlibtorrent/swig/file_storage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/frostwire/jlibtorrent/FileStorage;->b:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 7
    .line 8
    return-void
.end method
