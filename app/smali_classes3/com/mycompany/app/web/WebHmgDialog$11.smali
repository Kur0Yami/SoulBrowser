.class Lcom/mycompany/app/web/WebHmgDialog$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$11;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$11;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->a0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->b0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iget v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->c0:I

    .line 15
    .line 16
    mul-int/2addr p1, v2

    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lt p1, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->b0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$11;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->R:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$11;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->R:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$11;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->R:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
