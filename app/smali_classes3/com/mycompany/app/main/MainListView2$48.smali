.class Lcom/mycompany/app/main/MainListView2$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$48;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$48;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v1, v3, v2}, Lcom/mycompany/app/list/ListTask;->l(Ljava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method
