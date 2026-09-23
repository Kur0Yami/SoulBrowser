.class Lcom/mycompany/app/view/MyEngineMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEngineMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$5;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu$5;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->f:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->h:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 13
    .line 14
    const v3, -0xd2d2d3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    new-instance v2, Lcom/mycompany/app/view/MyEngineAdapter;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget v5, v0, Lcom/mycompany/app/view/MyEngineMenu;->k:I

    .line 34
    .line 35
    new-instance v6, Lcom/mycompany/app/view/MyEngineMenu$6;

    .line 36
    .line 37
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyEngineMenu$6;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v4, v2, Lcom/mycompany/app/view/MyEngineAdapter;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    iput-boolean v1, v2, Lcom/mycompany/app/view/MyEngineAdapter;->e:Z

    .line 46
    .line 47
    iput v5, v2, Lcom/mycompany/app/view/MyEngineAdapter;->f:I

    .line 48
    .line 49
    iput-object v6, v2, Lcom/mycompany/app/view/MyEngineAdapter;->h:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 50
    .line 51
    const/high16 v1, 0x41c00000    # 24.0f

    .line 52
    .line 53
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    float-to-int v1, v1

    .line 58
    iput v1, v2, Lcom/mycompany/app/view/MyEngineAdapter;->g:I

    .line 59
    .line 60
    iput-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->j:Lcom/mycompany/app/view/MyEngineAdapter;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 63
    .line 64
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->j:Lcom/mycompany/app/view/MyEngineAdapter;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->b:Landroid/os/Handler;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    :goto_1
    return-void

    .line 85
    :cond_2
    new-instance v2, Lcom/mycompany/app/view/MyEngineMenu$7;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyEngineMenu$7;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
