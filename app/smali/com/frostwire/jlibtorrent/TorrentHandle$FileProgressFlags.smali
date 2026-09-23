.class public final enum Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/TorrentHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileProgressFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;->b:Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;->a:I

    .line 6
    .line 7
    const-string v1, "PIECE_GRANULARITY"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 15
    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    sput-object v1, Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;->c:[Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 19
    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;->c:[Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/TorrentHandle$FileProgressFlags;

    .line 8
    .line 9
    return-object v0
.end method
