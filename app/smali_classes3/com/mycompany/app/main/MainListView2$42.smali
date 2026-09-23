.class Lcom/mycompany/app/main/MainListView2$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:I

.field public final synthetic j:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;IIZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$42;->j:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainListView2$42;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainListView2$42;->f:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/main/MainListView2$42;->g:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/main/MainListView2$42;->h:Z

    .line 13
    .line 14
    iput p6, p0, Lcom/mycompany/app/main/MainListView2$42;->i:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$42;->j:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->z:Lcom/mycompany/app/view/MyManagerLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    iget v2, p0, Lcom/mycompany/app/main/MainListView2$42;->c:I

    .line 19
    .line 20
    if-le v2, v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->z:Lcom/mycompany/app/view/MyManagerLinear;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lt v2, v1, :cond_2

    .line 29
    .line 30
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->z:Lcom/mycompany/app/view/MyManagerLinear;

    .line 31
    .line 32
    iget v3, p0, Lcom/mycompany/app/main/MainListView2$42;->f:I

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/main/MainListView2$42$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView2$42$1;-><init>(Lcom/mycompany/app/main/MainListView2$42;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method
