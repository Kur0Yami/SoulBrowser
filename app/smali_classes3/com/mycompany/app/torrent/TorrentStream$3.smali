.class Lcom/mycompany/app/torrent/TorrentStream$3;
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
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream$3;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$3;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
