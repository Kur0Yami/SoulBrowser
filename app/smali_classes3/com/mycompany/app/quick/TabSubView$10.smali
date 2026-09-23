.class Lcom/mycompany/app/quick/TabSubView$10;
.super Lcom/mycompany/app/view/MyManagerLinear;
.source "SourceFile"


# instance fields
.field public final synthetic E:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$10;->E:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$10;->E:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/quick/TabSubView;->I:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/mycompany/app/quick/TabSubView;->I:Z

    .line 9
    .line 10
    iget-object p1, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->D(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final h0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$10;->E:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/quick/TabSubView;->I:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/mycompany/app/quick/TabSubView;->I:Z

    .line 9
    .line 10
    iget-object p1, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->D(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k0(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$10;->E:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/mycompany/app/quick/TabSubView;->I:Z

    .line 8
    .line 9
    return-void
.end method
