.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$8;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$8;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_2

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
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->A:Ljava/lang/Runnable;

    .line 26
    .line 27
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 28
    .line 29
    iget-object v0, p3, Lcom/mycompany/app/dialog/DialogTabMini;->y0:Lcom/mycompany/app/view/MyScrollBar;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    iget v2, p3, Lcom/mycompany/app/dialog/DialogTabMini;->D0:I

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    iget v2, p3, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-boolean v2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->z:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->z:Z

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    iget-object p3, p3, Lcom/mycompany/app/dialog/DialogTabMini;->y0:Lcom/mycompany/app/view/MyScrollBar;

    .line 58
    .line 59
    invoke-virtual {p3, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_1
    sget p2, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 63
    .line 64
    if-nez p2, :cond_5

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    const/4 p3, 0x2

    .line 74
    if-ne p2, p3, :cond_6

    .line 75
    .line 76
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 77
    .line 78
    const/4 p3, -0x1

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 84
    .line 85
    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eq p2, p3, :cond_6

    .line 90
    .line 91
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_2
    return-void
.end method
