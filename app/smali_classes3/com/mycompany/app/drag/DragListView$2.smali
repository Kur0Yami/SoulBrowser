.class Lcom/mycompany/app/drag/DragListView$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$2;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$2;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/drag/DragListView;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$2;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/drag/DragListView;->y:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/drag/DragListView;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
