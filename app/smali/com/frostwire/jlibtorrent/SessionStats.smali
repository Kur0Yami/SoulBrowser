.class public final Lcom/frostwire/jlibtorrent/SessionStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/SessionStats$Average;
    }
.end annotation


# instance fields
.field public final a:[Lcom/frostwire/jlibtorrent/SessionStats$Average;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [Lcom/frostwire/jlibtorrent/SessionStats$Average;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/frostwire/jlibtorrent/SessionStats;->a:[Lcom/frostwire/jlibtorrent/SessionStats$Average;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/frostwire/jlibtorrent/SessionStats;->a:[Lcom/frostwire/jlibtorrent/SessionStats$Average;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/frostwire/jlibtorrent/SessionStats$Average;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    aput-object v2, v1, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
