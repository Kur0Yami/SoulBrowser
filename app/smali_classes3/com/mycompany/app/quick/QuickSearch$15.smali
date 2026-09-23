.class Lcom/mycompany/app/quick/QuickSearch$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$15;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$15;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->d0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSearch;->e0:Ljava/util/List;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickSearch;->d0:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickSearch;->e0:Ljava/util/List;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 18
    .line 19
    if-eqz v4, :cond_3

    .line 20
    .line 21
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 22
    .line 23
    iput-boolean v5, v4, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 24
    .line 25
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 26
    .line 27
    iput-boolean v5, v4, Lcom/mycompany/app/quick/QuickAdapter;->i:Z

    .line 28
    .line 29
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    if-ne v5, v6, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v4, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 36
    .line 37
    iget-object v1, v4, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iput-object v3, v1, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v4}, Lcom/mycompany/app/quick/QuickAdapter;->R()V

    .line 44
    .line 45
    .line 46
    iput-object v2, v4, Lcom/mycompany/app/quick/QuickAdapter;->B:Ljava/util/List;

    .line 47
    .line 48
    iput-object v3, v4, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v4, v1, v2}, Lcom/mycompany/app/quick/QuickAdapter;->Y(Ljava/util/List;Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_0
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$17;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/QuickSearch$17;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
