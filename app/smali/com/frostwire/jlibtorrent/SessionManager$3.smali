.class Lcom/frostwire/jlibtorrent/SessionManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/AlertListener;


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/frostwire/jlibtorrent/alerts/DhtMutableItemAlert;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 4
    .line 5
    check-cast v0, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/byte_vector;

    .line 11
    .line 12
    iget-wide v2, v0, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;->A:J

    .line 13
    .line 14
    invoke-static {v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_mutable_item_alert_get_key(JLcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-direct {v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/byte_vector;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/frostwire/jlibtorrent/Vectors;->a(Lcom/frostwire/jlibtorrent/swig/byte_vector;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object p1, p1, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 31
    .line 32
    check-cast p1, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/byte_vector;

    .line 38
    .line 39
    iget-wide v3, p1, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;->A:J

    .line 40
    .line 41
    invoke-static {v3, v4, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_mutable_item_alert_get_salt(JLcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-direct {v2, v3, v4}, Lcom/frostwire/jlibtorrent/swig/byte_vector;-><init>(J)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/frostwire/jlibtorrent/Vectors;->a(Lcom/frostwire/jlibtorrent/swig/byte_vector;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/entry;

    .line 61
    .line 62
    iget-wide v2, p1, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;->A:J

    .line 63
    .line 64
    invoke-static {v2, v3, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_mutable_item_alert_item_get(JLcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    cmp-long v6, v2, v4

    .line 71
    .line 72
    if-nez v6, :cond_0

    .line 73
    .line 74
    move-object v6, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance v6, Lcom/frostwire/jlibtorrent/swig/entry;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    invoke-direct {v6, v2, v3, v7}, Lcom/frostwire/jlibtorrent/swig/entry;-><init>(JZ)V

    .line 80
    .line 81
    .line 82
    :goto_0
    if-nez v6, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-wide v4, v6, Lcom/frostwire/jlibtorrent/swig/entry;->a:J

    .line 86
    .line 87
    :goto_1
    invoke-static {v4, v5, v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_entry__SWIG_6(JLcom/frostwire/jlibtorrent/swig/entry;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    const/4 v4, 0x1

    .line 92
    invoke-direct {v0, v2, v3, v4}, Lcom/frostwire/jlibtorrent/swig/entry;-><init>(JZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/byte_vector;

    .line 99
    .line 100
    iget-wide v2, p1, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;->A:J

    .line 101
    .line 102
    invoke-static {v2, v3, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_mutable_item_alert_get_signature(JLcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    invoke-direct {v0, v2, v3}, Lcom/frostwire/jlibtorrent/swig/byte_vector;-><init>(J)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/Vectors;->a(Lcom/frostwire/jlibtorrent/swig/byte_vector;)[B

    .line 110
    .line 111
    .line 112
    iget-wide v2, p1, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;->A:J

    .line 113
    .line 114
    invoke-static {v2, v3, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->dht_mutable_item_alert_get_seq(JLcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;)J

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :cond_2
    return-void
.end method

.method public final b()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/SessionManager;->k:[I

    .line 2
    .line 3
    return-object v0
.end method
