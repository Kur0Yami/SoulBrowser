.class public Lcom/frostwire/jlibtorrent/swig/socks5_alert;
.super Lcom/frostwire/jlibtorrent/swig/alert;
.source "SourceFile"


# static fields
.field public static final A:I

.field public static final B:Lcom/frostwire/jlibtorrent/swig/alert_category_t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->socks5_alert_priority_get()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->socks5_alert_alert_type_get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/frostwire/jlibtorrent/swig/socks5_alert;->A:I

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 11
    .line 12
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->socks5_alert_static_category_get()J

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
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/socks5_alert;->B:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/frostwire/jlibtorrent/swig/alert;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->socks5_alert_message(JLcom/frostwire/jlibtorrent/swig/socks5_alert;)Ljava/lang/String;

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
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->socks5_alert_type(JLcom/frostwire/jlibtorrent/swig/socks5_alert;)I

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
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->socks5_alert_what(JLcom/frostwire/jlibtorrent/swig/socks5_alert;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/socks5_alert;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
