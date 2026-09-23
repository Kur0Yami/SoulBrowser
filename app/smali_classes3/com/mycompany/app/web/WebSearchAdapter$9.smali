.class Lcom/mycompany/app/web/WebSearchAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter$9;->c:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter$9;->c:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->z:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v3, v2

    .line 19
    :goto_0
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    add-int/lit8 v4, v3, -0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 v4, -0x1

    .line 27
    :goto_1
    iget v5, v0, Lcom/mycompany/app/web/WebSearchAdapter;->A:I

    .line 28
    .line 29
    if-eq v5, v3, :cond_3

    .line 30
    .line 31
    iput v3, v0, Lcom/mycompany/app/web/WebSearchAdapter;->A:I

    .line 32
    .line 33
    iget-object v5, v0, Lcom/mycompany/app/web/WebSearchAdapter;->w:Lcom/mycompany/app/view/MyRecyclerView;

    .line 34
    .line 35
    if-eqz v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iput-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->m:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    move v3, v2

    .line 52
    :goto_2
    check-cast v1, Lcom/mycompany/app/web/WebViewActivity$250;

    .line 53
    .line 54
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/web/WebViewActivity$250;->a(IZ)V

    .line 55
    .line 56
    .line 57
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->s:Z

    .line 58
    .line 59
    return-void
.end method
