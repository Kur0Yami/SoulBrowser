.class Lcom/mycompany/app/quick/QuickSearch$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$4$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$4$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$4$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$4$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$4$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$4$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$4$1;->c:Lcom/mycompany/app/quick/QuickSearch$4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$4;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->I:Lcom/mycompany/app/view/MyManagerLinear;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->I:Lcom/mycompany/app/view/MyManagerLinear;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/quick/QuickSearch$8;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSearch$8;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
