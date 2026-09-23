.class Lcom/mycompany/app/main/MainDownSvc$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$18;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$18;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    return-void

    .line 10
    :cond_1
    iput v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 11
    .line 12
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$18;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    return-void

    .line 10
    :cond_1
    iput v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 11
    .line 12
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$18;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    return-void

    .line 10
    :cond_1
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$18;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$18;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$20;

    .line 20
    .line 21
    invoke-direct {v2, v0, p1}, Lcom/mycompany/app/main/MainDownSvc$20;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, 0xc8

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
