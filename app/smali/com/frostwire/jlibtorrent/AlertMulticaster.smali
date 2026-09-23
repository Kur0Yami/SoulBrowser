.class final Lcom/frostwire/jlibtorrent/AlertMulticaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/AlertListener;


# instance fields
.field public final a:Lcom/frostwire/jlibtorrent/AlertListener;

.field public final b:Lcom/frostwire/jlibtorrent/AlertListener;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/AlertListener;Lcom/frostwire/jlibtorrent/AlertListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;->a:Lcom/frostwire/jlibtorrent/AlertListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;->b:Lcom/frostwire/jlibtorrent/AlertListener;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Lcom/frostwire/jlibtorrent/AlertListener;Lcom/frostwire/jlibtorrent/AlertListener;)Lcom/frostwire/jlibtorrent/AlertListener;
    .locals 3

    .line 1
    if-eq p0, p1, :cond_7

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    check-cast p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;->b:Lcom/frostwire/jlibtorrent/AlertListener;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;->a:Lcom/frostwire/jlibtorrent/AlertListener;

    .line 15
    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_2
    invoke-static {v1, p1}, Lcom/frostwire/jlibtorrent/AlertMulticaster;->c(Lcom/frostwire/jlibtorrent/AlertListener;Lcom/frostwire/jlibtorrent/AlertListener;)Lcom/frostwire/jlibtorrent/AlertListener;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, p1}, Lcom/frostwire/jlibtorrent/AlertMulticaster;->c(Lcom/frostwire/jlibtorrent/AlertListener;Lcom/frostwire/jlibtorrent/AlertListener;)Lcom/frostwire/jlibtorrent/AlertListener;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-ne v2, v1, :cond_3

    .line 31
    .line 32
    if-ne p1, v0, :cond_3

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    if-nez v2, :cond_4

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_4
    if-nez p1, :cond_5

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_5
    new-instance p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;

    .line 42
    .line 43
    invoke-direct {p0, v2, p1}, Lcom/frostwire/jlibtorrent/AlertMulticaster;-><init>(Lcom/frostwire/jlibtorrent/AlertListener;Lcom/frostwire/jlibtorrent/AlertListener;)V

    .line 44
    .line 45
    .line 46
    :cond_6
    return-object p0

    .line 47
    :cond_7
    :goto_0
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;->a:Lcom/frostwire/jlibtorrent/AlertListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/frostwire/jlibtorrent/AlertListener;->a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/AlertMulticaster;->b:Lcom/frostwire/jlibtorrent/AlertListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/frostwire/jlibtorrent/AlertListener;->a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()[I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
