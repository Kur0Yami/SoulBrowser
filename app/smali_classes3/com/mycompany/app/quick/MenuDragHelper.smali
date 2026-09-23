.class public Lcom/mycompany/app/quick/MenuDragHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/MenuDragHelper;->d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->j(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/MenuDragHelper;->d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;->b(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/MenuDragHelper;->d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;->a(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 0

    .line 1
    return-void
.end method
