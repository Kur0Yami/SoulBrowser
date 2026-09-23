.class Lcom/mycompany/app/main/MainListView2$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$54;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2$54;->a:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v0, v3, v1}, Lcom/mycompany/app/main/MainListView2;->B(IZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$54;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->m0:Z

    .line 5
    .line 6
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->q()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput-object p2, v0, Lcom/mycompany/app/main/MainListView2;->t0:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/mycompany/app/main/MainListView2;->G(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    move v2, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
