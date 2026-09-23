.class Lcom/mycompany/app/drag/DragListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/drag/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterWrapper"
.end annotation


# instance fields
.field public final c:Landroid/widget/ListAdapter;

.field public final synthetic f:Lcom/mycompany/app/drag/DragListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/drag/DragListView;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->f:Lcom/mycompany/app/drag/DragListView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 7
    .line 8
    new-instance p1, Lcom/mycompany/app/drag/DragListView$AdapterWrapper$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/mycompany/app/drag/DragListView$AdapterWrapper$1;-><init>(Lcom/mycompany/app/drag/DragListView$AdapterWrapper;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->f:Lcom/mycompany/app/drag/DragListView;

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    check-cast p2, Lcom/mycompany/app/drag/DragListItem;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {p3, p1, v2, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    if-eq p3, v2, :cond_3

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    invoke-interface {p3, p1, p2, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    instance-of p2, p3, Landroid/widget/Checkable;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    new-instance p2, Lcom/mycompany/app/drag/DragListCheckable;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p2, v1}, Lcom/mycompany/app/drag/DragListItem;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance p2, Lcom/mycompany/app/drag/DragListItem;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {p2, v1}, Lcom/mycompany/app/drag/DragListItem;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    const/4 v3, -0x2

    .line 61
    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->isActivated()Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setActivated(Z)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    add-int/2addr p3, p1

    .line 93
    sget p1, Lcom/mycompany/app/drag/DragListView;->m0:I

    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    invoke-virtual {v0, p3, p2, p1}, Lcom/mycompany/app/drag/DragListView;->b(ILandroid/view/View;Z)V

    .line 97
    .line 98
    .line 99
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$AdapterWrapper;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
