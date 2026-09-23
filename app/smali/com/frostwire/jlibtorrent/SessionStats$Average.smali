.class final Lcom/frostwire/jlibtorrent/SessionStats$Average;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/SessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Average"
.end annotation


# instance fields
.field public a:J

.field public b:J


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->b:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->b:J

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 7
    .line 8
    add-long/2addr v0, p1

    .line 9
    iput-wide v0, p0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 10
    .line 11
    return-void
.end method
