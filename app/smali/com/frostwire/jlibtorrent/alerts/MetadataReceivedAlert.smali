.class public final Lcom/frostwire/jlibtorrent/alerts/MetadataReceivedAlert;
.super Lcom/frostwire/jlibtorrent/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/frostwire/jlibtorrent/alerts/TorrentAlert<",
        "Lcom/frostwire/jlibtorrent/swig/metadata_received_alert;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public d:I

.field public e:[B

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/metadata_received_alert;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;-><init>(Lcom/frostwire/jlibtorrent/swig/alert;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/alerts/MetadataReceivedAlert;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    return-void
.end method
