.class Lcom/mycompany/app/main/MainListView2$58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$58;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2$58;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-boolean p4, p3, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/mycompany/app/main/MainListView2;->q()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const/4 p4, 0x1

    .line 15
    iput-boolean p4, p3, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 16
    .line 17
    iput-boolean p4, p3, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p4, p2, p2, v0}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
