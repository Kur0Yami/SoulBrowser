.class Lcom/mycompany/app/main/MainListView$83$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView$83;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView$83;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$83$2;->c:Lcom/mycompany/app/main/MainListView$83;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$83$2;->c:Lcom/mycompany/app/main/MainListView$83;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView$83;->c:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->B1:I

    .line 11
    .line 12
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->C1:Z

    .line 13
    .line 14
    iget-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_0
    if-ge v6, v4, :cond_6

    .line 26
    .line 27
    iget-object v7, v1, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 28
    .line 29
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    if-nez v7, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    instance-of v8, v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 44
    .line 45
    if-eqz v8, :cond_5

    .line 46
    .line 47
    check-cast v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 48
    .line 49
    iget v8, v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 50
    .line 51
    if-ne v8, v2, :cond_5

    .line 52
    .line 53
    iget-object v7, v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 54
    .line 55
    if-nez v7, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {v7, v3, v5}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 65
    .line 66
    if-nez v0, :cond_7

    .line 67
    .line 68
    :goto_3
    return-void

    .line 69
    :cond_7
    new-instance v1, Lcom/mycompany/app/main/MainListView$83$2$1;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView$83$2$1;-><init>(Lcom/mycompany/app/main/MainListView$83$2;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method
