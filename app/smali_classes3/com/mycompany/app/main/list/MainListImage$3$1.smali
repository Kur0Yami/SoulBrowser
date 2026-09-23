.class Lcom/mycompany/app/main/list/MainListImage$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListImage$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListImage$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListImage$3$1;->c:Lcom/mycompany/app/main/list/MainListImage$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage$3$1;->c:Lcom/mycompany/app/main/list/MainListImage$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListImage$3;->c:Lcom/mycompany/app/main/list/MainListImage;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListImage;->E1:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v0, v2, v2}, Lcom/mycompany/app/list/ListTask;->l(Ljava/lang/String;ZZ)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
