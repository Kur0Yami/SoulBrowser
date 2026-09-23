.class Lcom/mycompany/app/main/MainDownSvc$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/torrent/Torrent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 14
    .line 15
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b(Lcom/mycompany/app/torrent/Torrent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput v2, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 16
    .line 17
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$22$1;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/main/MainDownSvc$22$1;-><init>(Lcom/mycompany/app/main/MainDownSvc$22;Lcom/mycompany/app/torrent/Torrent;)V

    .line 20
    .line 21
    .line 22
    sget p1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput v2, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 16
    .line 17
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$22$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$22$2;-><init>(Lcom/mycompany/app/main/MainDownSvc$22;)V

    .line 20
    .line 21
    .line 22
    sget v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lcom/mycompany/app/torrent/Torrent;F)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    long-to-float v2, v0

    .line 18
    mul-float/2addr v2, p2

    .line 19
    float-to-long v2, v2

    .line 20
    iput-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 21
    .line 22
    cmp-long p2, v0, v2

    .line 23
    .line 24
    if-gez p2, :cond_1

    .line 25
    .line 26
    iput-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 27
    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 33
    .line 34
    sub-long v2, v0, v2

    .line 35
    .line 36
    const-wide/16 v4, 0x320

    .line 37
    .line 38
    cmp-long p2, v2, v4

    .line 39
    .line 40
    if-lez p2, :cond_2

    .line 41
    .line 42
    iput-wide v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 43
    .line 44
    sget p2, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 45
    .line 46
    iget-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v2, "net.kaki87.soul2.testing.ACTION_DOWN_DELETE"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "EXTRA_PATH"

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
