.class public abstract Lcom/mycompany/app/torrent/TorAlertDhtListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/AlertListener;


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/frostwire/jlibtorrent/alerts/DhtStatsAlert;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lcom/frostwire/jlibtorrent/alerts/DhtStatsAlert;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 8
    .line 9
    check-cast p1, Lcom/frostwire/jlibtorrent/swig/dht_stats_alert;

    .line 10
    .line 11
    iget-wide v0, p1, Lcom/frostwire/jlibtorrent/swig/dht_stats_alert;->A:J

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_stats_alert_routing_table_get(JLcom/frostwire/jlibtorrent/swig/dht_stats_alert;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket_vector;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-wide v0, p1, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket_vector;->a:J

    .line 31
    .line 32
    :goto_0
    iget-wide v0, p1, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket_vector;->a:J

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_routing_bucket_vector_size(JLcom/frostwire/jlibtorrent/swig/dht_routing_bucket_vector;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    long-to-int v0, v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v2

    .line 46
    :goto_1
    if-ge v3, v0, :cond_1

    .line 47
    .line 48
    new-instance v4, Lcom/frostwire/jlibtorrent/DhtRoutingBucket;

    .line 49
    .line 50
    new-instance v5, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket;

    .line 51
    .line 52
    iget-wide v6, p1, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket_vector;->a:J

    .line 53
    .line 54
    invoke-static {v6, v7, p1, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_routing_bucket_vector_get(JLcom/frostwire/jlibtorrent/swig/dht_routing_bucket_vector;I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-wide v6, v5, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket;->a:J

    .line 62
    .line 63
    invoke-direct {v4, v5}, Lcom/frostwire/jlibtorrent/DhtRoutingBucket;-><init>(Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    :goto_2
    if-ge v2, p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    check-cast v0, Lcom/frostwire/jlibtorrent/DhtRoutingBucket;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/DhtRoutingBucket;->a:Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket;

    .line 87
    .line 88
    iget-wide v3, v0, Lcom/frostwire/jlibtorrent/swig/dht_routing_bucket;->a:J

    .line 89
    .line 90
    invoke-static {v3, v4, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_routing_bucket_num_nodes_get(JLcom/frostwire/jlibtorrent/swig/dht_routing_bucket;)I

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    return-void
.end method

.method public final b()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->t:Lcom/frostwire/jlibtorrent/alerts/AlertType;

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
