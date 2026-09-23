.class Lcom/mycompany/app/dialog/DialogSetDown$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDown$2;->c:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$2;->c:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/mycompany/app/main/MainAppAdapter;

    .line 13
    .line 14
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetDown$3;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetDown$3;-><init>(Lcom/mycompany/app/dialog/DialogSetDown;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/main/MainAppAdapter;-><init>(Landroid/content/Context;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDown;->h0:Lcom/mycompany/app/main/MainAppAdapter;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/view/MyManagerGrid;

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDown;->h0:Lcom/mycompany/app/main/MainAppAdapter;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDown$4;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDown$4;-><init>(Lcom/mycompany/app/dialog/DialogSetDown;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method
