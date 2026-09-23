.class Lcom/mycompany/app/main/MainListView2$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$47;->g:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainListView2$47;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainListView2$47;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$47;->g:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainListView2$47;->c:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->V:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    iget v2, v0, Lcom/mycompany/app/main/MainListView2;->W:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    sub-int/2addr v1, v4

    .line 31
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 32
    .line 33
    iget v5, p0, Lcom/mycompany/app/main/MainListView2$47;->f:I

    .line 34
    .line 35
    invoke-virtual {v2, v5, v1}, Lcom/mycompany/app/main/MainListAdapter2;->F(II)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListAdapter2;->L()V

    .line 43
    .line 44
    .line 45
    move v3, v4

    .line 46
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    :goto_3
    return-void

    .line 51
    :cond_4
    new-instance v2, Lcom/mycompany/app/main/MainListView2$47$1;

    .line 52
    .line 53
    invoke-direct {v2, p0, v3, v1}, Lcom/mycompany/app/main/MainListView2$47$1;-><init>(Lcom/mycompany/app/main/MainListView2$47;ZI)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
