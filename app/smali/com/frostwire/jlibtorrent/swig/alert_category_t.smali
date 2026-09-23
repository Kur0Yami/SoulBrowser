.class public Lcom/frostwire/jlibtorrent/swig/alert_category_t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->b:Z

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/swig/alert_category_t;)Lcom/frostwire/jlibtorrent/swig/alert_category_t;
    .locals 7

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->a:J

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    :goto_0
    move-object v6, p1

    .line 10
    move-wide v4, v3

    .line 11
    move-object v3, p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-wide v3, p1, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->a:J

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    invoke-static/range {v1 .. v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_category_t_or_(JLcom/frostwire/jlibtorrent/swig/alert_category_t;JLcom/frostwire/jlibtorrent/swig/alert_category_t;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-direct {v0, v1, v2, p1}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final finalize()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->a:J

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
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_alert_category_t(J)V

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
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method
