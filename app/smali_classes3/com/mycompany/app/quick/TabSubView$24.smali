.class Lcom/mycompany/app/quick/TabSubView$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$24;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$24;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->g:Lcom/mycompany/app/quick/TabSubView$TabSubListener;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, v0, Lcom/mycompany/app/quick/TabSubView;->m:I

    .line 13
    .line 14
    iget v3, v0, Lcom/mycompany/app/quick/TabSubView;->f0:I

    .line 15
    .line 16
    invoke-interface {v1, v2, v3}, Lcom/mycompany/app/quick/TabSubView$TabSubListener;->e(II)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/mycompany/app/quick/TabSubView$24$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/TabSubView$24$1;-><init>(Lcom/mycompany/app/quick/TabSubView$24;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
