.class Lcom/mycompany/app/dialog/DialogNewsMenu$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogNewsMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$6;->a:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$6;->a:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 2
    .line 3
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-lez p3, :cond_1

    .line 13
    .line 14
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 p3, 0x2

    .line 30
    if-ne p2, p3, :cond_2

    .line 31
    .line 32
    const/4 p2, -0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 p3, 0x1

    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eq p2, p3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    return-void
.end method
