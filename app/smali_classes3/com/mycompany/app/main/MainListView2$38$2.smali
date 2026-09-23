.class Lcom/mycompany/app/main/MainListView2$38$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2$38;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2$38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$38$2;->c:Lcom/mycompany/app/main/MainListView2$38;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$38$2;->c:Lcom/mycompany/app/main/MainListView2$38;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2$38;->a:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->u0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->v0:Ljava/util/List;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/main/MainListView2;->u0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/main/MainListView2;->v0:Ljava/util/List;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/main/MainListView2;->t0:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView2;->G(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    move v5, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v5, 0x0

    .line 38
    :goto_0
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 41
    .line 42
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
