.class Lcom/mycompany/app/view/MyPopupMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu$5;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu$5;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->h:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->j:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->g()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_bg

    goto :goto_0

    :cond_bg
    if-eqz v1, :cond_1

    const v3, -0xd2d2d3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget v5, v0, Lcom/mycompany/app/view/MyPopupMenu;->n:I

    .line 34
    .line 35
    iget-boolean v6, v0, Lcom/mycompany/app/view/MyPopupMenu;->o:Z

    .line 36
    .line 37
    iget-boolean v7, v0, Lcom/mycompany/app/view/MyPopupMenu;->p:Z

    .line 38
    .line 39
    new-instance v8, Lcom/mycompany/app/view/MyPopupMenu$6;

    .line 40
    .line 41
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyPopupMenu$6;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v4, v2, Lcom/mycompany/app/view/MyPopupAdapter;->d:Ljava/util/ArrayList;

    .line 48
    .line 49
    iput-boolean v1, v2, Lcom/mycompany/app/view/MyPopupAdapter;->e:Z

    .line 50
    .line 51
    iput v5, v2, Lcom/mycompany/app/view/MyPopupAdapter;->f:I

    .line 52
    .line 53
    iput-boolean v6, v2, Lcom/mycompany/app/view/MyPopupAdapter;->g:Z

    .line 54
    .line 55
    iput-boolean v7, v2, Lcom/mycompany/app/view/MyPopupAdapter;->h:Z

    .line 56
    .line 57
    iput-object v8, v2, Lcom/mycompany/app/view/MyPopupAdapter;->j:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    iget-boolean v4, v0, Lcom/mycompany/app/view/MyPopupMenu;->C:Z

    if-eqz v4, :cond_long_skip

    # Reuse click listener; MyPopupAdapter$2 adds 1000 to the item id on long-press
    iput-object v8, v2, Lcom/mycompany/app/view/MyPopupAdapter;->k:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    :cond_long_skip
    .line 58
    .line 59
    if-nez v6, :cond_2

    .line 60
    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    :cond_2
    const/high16 v1, 0x41c00000    # 24.0f

    .line 64
    .line 65
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    float-to-int v1, v1

    .line 70
    iput v1, v2, Lcom/mycompany/app/view/MyPopupAdapter;->i:I

    .line 71
    .line 72
    :cond_3
    iput-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->l:Lcom/mycompany/app/view/MyPopupAdapter;

    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->k:Lcom/mycompany/app/view/MyPopupList;

    .line 75
    .line 76
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->k:Lcom/mycompany/app/view/MyPopupList;

    .line 86
    .line 87
    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->l:Lcom/mycompany/app/view/MyPopupAdapter;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->b:Landroid/os/Handler;

    .line 93
    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    :goto_1
    return-void

    .line 97
    :cond_4
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu$7;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPopupMenu$7;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method
