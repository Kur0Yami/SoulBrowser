.class Lcom/mycompany/app/main/MainListView2$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView2;->B:Z

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainListView2;->B:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    iget p1, v1, Lcom/mycompany/app/main/MainListView2;->C:I

    .line 16
    .line 17
    iget v0, v1, Lcom/mycompany/app/main/MainListView2;->D:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainListView2;->w0:Z

    .line 23
    .line 24
    iget-object p1, v1, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/main/MainListView2$40$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$40$1;-><init>(Lcom/mycompany/app/main/MainListView2$40;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p2, v0, Lcom/mycompany/app/main/MainListView2;->D:I

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/main/MainListAdapter2;->F(II)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->j(II)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public final c(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView2;->B:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView2;->x0:Z

    .line 13
    .line 14
    iget-object v0, v1, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/main/MainListView2$40$2;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/main/MainListView2$40$2;-><init>(Lcom/mycompany/app/main/MainListView2$40;II)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
