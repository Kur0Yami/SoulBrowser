.class Lcom/mycompany/app/main/MainListView2$47$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/main/MainListView2$47;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2$47;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$47$1;->g:Lcom/mycompany/app/main/MainListView2$47;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainListView2$47$1;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainListView2$47$1;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$47$1;->g:Lcom/mycompany/app/main/MainListView2$47;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2$47;->g:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainListView2$47$1;->c:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Lcom/mycompany/app/main/MainListView2$47$1;->f:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainListAdapter2;->I(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 42
    .line 43
    iput v2, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Lcom/mycompany/app/main/MainListAdapter2;->I(I)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Lcom/mycompany/app/main/MainListAdapter2;->A(I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 57
    .line 58
    .line 59
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 60
    .line 61
    :cond_3
    :goto_0
    const-wide/16 v1, 0x0

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainListView2;->H(JZ)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
