.class Lcom/mycompany/app/quick/QuickView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Z

.field public final synthetic g:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$11;->g:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickView$11;->c:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/quick/QuickView$11;->f:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$11;->g:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v3, p0, Lcom/mycompany/app/quick/QuickView$11;->c:Z

    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/mycompany/app/quick/QuickView$11;->f:Z

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v5, v1, -0x1

    .line 26
    .line 27
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 38
    .line 39
    sub-int/2addr v1, v2

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    neg-int v1, v1

    .line 43
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->D:Z

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 48
    .line 49
    invoke-virtual {v0, v5, v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->k0(IIZ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 54
    .line 55
    invoke-virtual {v0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_0
    return-void
.end method
