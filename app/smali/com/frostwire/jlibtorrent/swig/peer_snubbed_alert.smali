.class public Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;
.super Lcom/frostwire/jlibtorrent/swig/peer_alert;
.source "SourceFile"


# static fields
.field public static final D:I

.field public static final E:Lcom/frostwire/jlibtorrent/swig/alert_category_t;


# instance fields
.field public transient C:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_snubbed_alert_priority_get()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_snubbed_alert_alert_type_get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->D:I

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 11
    .line 12
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_snubbed_alert_static_category_get()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->E:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->C:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_1

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_peer_snubbed_alert(J)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->C:J

    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lcom/frostwire/jlibtorrent/swig/peer_alert;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_snubbed_alert_message(JLcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_snubbed_alert_type(JLcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_snubbed_alert_what(JLcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
