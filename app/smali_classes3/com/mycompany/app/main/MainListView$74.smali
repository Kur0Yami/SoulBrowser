.class Lcom/mycompany/app/main/MainListView$74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;ZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$74;->h:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainListView$74;->c:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/main/MainListView$74;->f:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/main/MainListView$74;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$74;->h:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->o(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->z0()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainListView$74;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->C()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainListView$74;->f:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget v1, p0, Lcom/mycompany/app/main/MainListView$74;->g:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListAdapter;->D(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method
