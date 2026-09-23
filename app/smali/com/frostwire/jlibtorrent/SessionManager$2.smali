.class Lcom/frostwire/jlibtorrent/SessionManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/AlertListener;


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/frostwire/jlibtorrent/alerts/DhtImmutableItemAlert;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 4
    .line 5
    check-cast p1, Lcom/frostwire/jlibtorrent/swig/dht_immutable_item_alert;

    .line 6
    .line 7
    iget-wide v0, p1, Lcom/frostwire/jlibtorrent/swig/dht_immutable_item_alert;->A:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_immutable_item_alert_target_get(JLcom/frostwire/jlibtorrent/swig/dht_immutable_item_alert;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {p1, v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/sha1_hash;-><init>(JZ)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public final b()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/SessionManager;->j:[I

    .line 2
    .line 3
    return-object v0
.end method
