.class Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 12
    .line 13
    sget v2, Lcom/mycompany/app/quick/QuickSearch;->f0:I

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Lcom/mycompany/app/quick/QuickSearch;->h(Z)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, v1, Lcom/mycompany/app/quick/QuickSearch;->n:I

    .line 24
    .line 25
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch;->A:Lcom/mycompany/app/view/MyManagerGrid;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v3, v1, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 37
    .line 38
    if-eq v3, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->x1(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 50
    .line 51
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1$1;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
