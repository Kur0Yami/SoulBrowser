.class Lcom/mycompany/app/main/MainListView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$9;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$9;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->o()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-gtz v1, :cond_1

    .line 14
    .line 15
    move-object v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v1, v0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 18
    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v1

    .line 40
    :goto_0
    const/4 v1, 0x1

    .line 41
    invoke-static {p1, v0, v2, v1}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
