.class Lcom/mycompany/app/quick/QuickSearch$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$19$1;->c:Lcom/mycompany/app/quick/QuickSearch$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$19$1;->c:Lcom/mycompany/app/quick/QuickSearch$19;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$19;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Lcom/mycompany/app/quick/QuickSearch;->h(Z)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/mycompany/app/quick/QuickSearch;->n:I

    .line 19
    .line 20
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSearch;->A:Lcom/mycompany/app/view/MyManagerGrid;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 32
    .line 33
    if-eq v3, v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->x1(I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$19$1$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$19$1$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$19$1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
