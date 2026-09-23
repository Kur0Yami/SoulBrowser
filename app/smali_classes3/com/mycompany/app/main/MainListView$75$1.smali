.class Lcom/mycompany/app/main/MainListView$75$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView$75;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView$75;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$75$1;->c:Lcom/mycompany/app/main/MainListView$75;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$75$1;->c:Lcom/mycompany/app/main/MainListView$75;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$75;->j:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListView;->o(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->z0()V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView$75;->g:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v0, v1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->C()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView$75;->h:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget v0, v0, Lcom/mycompany/app/main/MainListView$75;->i:I

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListAdapter;->D(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method
