.class Lcom/mycompany/app/drag/DragListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/drag/DragListView$AdapterWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper$1;->a:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper$1;->a:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper$1;->a:Lcom/mycompany/app/drag/DragListView$AdapterWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
