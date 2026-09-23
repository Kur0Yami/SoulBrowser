.class public Lcom/mycompany/app/torrent/TorrentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;
    }
.end annotation


# static fields
.field public static b:Lcom/mycompany/app/torrent/TorrentUtil;


# instance fields
.field public a:Ljava/util/HashMap;


# direct methods
.method public static b()Lcom/mycompany/app/torrent/TorrentUtil;
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/torrent/TorrentUtil;->b:Lcom/mycompany/app/torrent/TorrentUtil;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/torrent/TorrentUtil;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/torrent/TorrentUtil;->b:Lcom/mycompany/app/torrent/TorrentUtil;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/torrent/TorrentUtil;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/mycompany/app/torrent/TorrentUtil;->b:Lcom/mycompany/app/torrent/TorrentUtil;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/mycompany/app/torrent/TorrentUtil;->b:Lcom/mycompany/app/torrent/TorrentUtil;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/TorrentInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentUtil;->a:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/frostwire/jlibtorrent/TorrentInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentUtil;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :catch_1
    return-object v0
.end method
