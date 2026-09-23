.class public abstract Lcom/mycompany/app/torrent/TorAlertAddListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/AlertListener;


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/frostwire/jlibtorrent/alerts/Alert;->type()Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    check-cast p1, Lcom/frostwire/jlibtorrent/alerts/AddTorrentAlert;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/mycompany/app/torrent/TorAlertAddListener;->c(Lcom/frostwire/jlibtorrent/alerts/AddTorrentAlert;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->g:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    iget v0, v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 4
    .line 5
    filled-new-array {v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract c(Lcom/frostwire/jlibtorrent/alerts/AddTorrentAlert;)V
.end method
