.class Lcom/mycompany/app/main/MainListView2$9;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$9;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2$9;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 27
    .line 28
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView2;->X0:Ljava/lang/Runnable;

    .line 29
    .line 30
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 31
    .line 32
    if-eqz p3, :cond_4

    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView2;->z:Lcom/mycompany/app/view/MyManagerLinear;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainListView2;->W0:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainListView2;->W0:Z

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_1
    return-void
.end method
