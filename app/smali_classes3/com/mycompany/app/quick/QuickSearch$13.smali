.class Lcom/mycompany/app/quick/QuickSearch$13;
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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$13;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$13;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    move v1, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->Q:Z

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-boolean v1, v1, Lcom/mycompany/app/data/book/DataBookRecent;->c:Z

    .line 29
    .line 30
    :goto_0
    if-nez v1, :cond_3

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-boolean v3, v1, Lcom/mycompany/app/data/book/DataBookRecent;->c:Z

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->d()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ge v1, v2, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->t:Landroidx/core/widget/NestedScrollView;

    .line 56
    .line 57
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    const/16 v2, 0x82

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    const/16 v2, 0x21

    .line 65
    .line 66
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->e(I)Z

    .line 67
    .line 68
    .line 69
    :goto_2
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$13$1;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$13$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$13;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method
