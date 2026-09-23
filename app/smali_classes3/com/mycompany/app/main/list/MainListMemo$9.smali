.class Lcom/mycompany/app/main/list/MainListMemo$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo$9;->a:Lcom/mycompany/app/main/list/MainListMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/list/MainListMemo$9;->a:Lcom/mycompany/app/main/list/MainListMemo;

    .line 2
    .line 3
    iget-object p4, p3, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance p4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p3, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2, p2, p4}, Lcom/mycompany/app/main/MainListView2;->K(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
