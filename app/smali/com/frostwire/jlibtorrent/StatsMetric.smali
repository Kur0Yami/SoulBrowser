.class public final Lcom/frostwire/jlibtorrent/StatsMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "net.sent_payload_bytes"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->a:I

    .line 8
    .line 9
    const-string v0, "net.sent_bytes"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->b:I

    .line 16
    .line 17
    const-string v0, "net.sent_ip_overhead_bytes"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->c:I

    .line 24
    .line 25
    const-string v0, "net.recv_payload_bytes"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->d:I

    .line 32
    .line 33
    const-string v0, "net.recv_bytes"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->e:I

    .line 40
    .line 41
    const-string v0, "net.recv_ip_overhead_bytes"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->f:I

    .line 48
    .line 49
    const-string v0, "dht.dht_nodes"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->find_metric_idx_s(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->g:I

    .line 56
    .line 57
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->c:Lcom/frostwire/jlibtorrent/swig/metric_type_t;

    .line 58
    .line 59
    iget v0, v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->a:I

    .line 60
    .line 61
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->h:I

    .line 62
    .line 63
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->d:Lcom/frostwire/jlibtorrent/swig/metric_type_t;

    .line 64
    .line 65
    iget v0, v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->a:I

    .line 66
    .line 67
    sput v0, Lcom/frostwire/jlibtorrent/StatsMetric;->i:I

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/frostwire/jlibtorrent/StatsMetric;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "counter"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/frostwire/jlibtorrent/StatsMetric;->i:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "gauge"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "unknown"

    .line 16
    .line 17
    :goto_0
    const-string v1, "null:0:"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
