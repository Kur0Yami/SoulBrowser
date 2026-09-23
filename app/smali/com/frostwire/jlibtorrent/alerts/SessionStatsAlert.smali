.class public final Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;
.super Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/frostwire/jlibtorrent/alerts/AbstractAlert<",
        "Lcom/frostwire/jlibtorrent/swig/session_stats_alert;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 2
    .line 3
    check-cast v0, Lcom/frostwire/jlibtorrent/swig/session_stats_alert;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/session_stats_alert;->A:J

    .line 6
    .line 7
    invoke-static {v1, v2, v0, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_stats_alert_get_value(JLcom/frostwire/jlibtorrent/swig/session_stats_alert;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
