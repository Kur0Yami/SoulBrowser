.class Lcom/mycompany/app/main/MainDownSvc$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$30;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$30;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$30;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-wide v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 33
    .line 34
    sget v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$30;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
