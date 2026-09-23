.class Lcom/mycompany/app/fragment/FragmentDragView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentDragView$1;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentDragView$1;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/fragment/FragmentDragView;->computeVerticalScrollOffset()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p1, p2, p3, p4}, Lcom/mycompany/app/fragment/FragmentDragView;->u(Lcom/mycompany/app/fragment/FragmentDragView;III)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentDragView$1;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput p2, v0, Lcom/mycompany/app/fragment/FragmentDragView;->o0:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    iput p1, v0, Lcom/mycompany/app/fragment/FragmentDragView;->o0:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x2

    .line 16
    if-ne p2, v1, :cond_2

    .line 17
    .line 18
    iput v1, v0, Lcom/mycompany/app/fragment/FragmentDragView;->o0:I

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr p2, v1

    .line 29
    add-int/2addr p2, p1

    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/fragment/FragmentDragView;->computeVerticalScrollOffset()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v0, p1, p2, v1}, Lcom/mycompany/app/fragment/FragmentDragView;->u(Lcom/mycompany/app/fragment/FragmentDragView;III)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
