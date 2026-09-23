.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$4;
.super Lcom/mycompany/app/view/MyManagerGrid;
.source "SourceFile"


# instance fields
.field public final synthetic M:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$4;->M:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->e0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$4;->M:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->s:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->s:Z

    .line 12
    .line 13
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->D(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final h0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->h0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$4;->M:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->s:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->s:Z

    .line 12
    .line 13
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->D(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k0(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$4;->M:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->s:Z

    .line 8
    .line 9
    return-void
.end method
