.class Lcom/frostwire/jlibtorrent/alerts/Alerts$92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;
    .locals 6

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/DhtLiveNodesAlert;

    .line 2
    .line 3
    iget-wide v1, p1, Lcom/frostwire/jlibtorrent/swig/alert;->a:J

    .line 4
    .line 5
    invoke-static {v1, v2, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_cast_to_dht_live_nodes_alert(JLcom/frostwire/jlibtorrent/swig/alert;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long p1, v1, v3

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lcom/frostwire/jlibtorrent/swig/dht_live_nodes_alert;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_live_nodes_alert_SWIGUpcast(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {p1, v4, v5, v3}, Lcom/frostwire/jlibtorrent/swig/alert;-><init>(JZ)V

    .line 25
    .line 26
    .line 27
    iput-wide v1, p1, Lcom/frostwire/jlibtorrent/swig/dht_live_nodes_alert;->A:J

    .line 28
    .line 29
    :goto_0
    invoke-direct {v0, p1}, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;-><init>(Lcom/frostwire/jlibtorrent/swig/alert;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
