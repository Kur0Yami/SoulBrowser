.class Lcom/mycompany/app/main/MainListView2$42$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2$42;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2$42;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$42$1;->c:Lcom/mycompany/app/main/MainListView2$42;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$42$1;->c:Lcom/mycompany/app/main/MainListView2$42;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2$42;->j:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView2$42;->g:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v0, v1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->J()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView2$42;->h:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v0, v0, Lcom/mycompany/app/main/MainListView2$42;->i:I

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListAdapter2;->K(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
