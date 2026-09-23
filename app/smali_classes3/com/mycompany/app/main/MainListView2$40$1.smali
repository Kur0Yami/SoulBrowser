.class Lcom/mycompany/app/main/MainListView2$40$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2$40;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2$40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$40$1;->c:Lcom/mycompany/app/main/MainListView2$40;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$40$1;->c:Lcom/mycompany/app/main/MainListView2$40;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v3, v1, Lcom/mycompany/app/main/MainListView2;->C:I

    .line 11
    .line 12
    iget v1, v1, Lcom/mycompany/app/main/MainListView2;->D:I

    .line 13
    .line 14
    if-eq v3, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListAdapter2;->L()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->w0:Z

    .line 23
    .line 24
    return-void
.end method
