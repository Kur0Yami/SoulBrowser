.class Lcom/mycompany/app/quick/QuickView$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Lcom/mycompany/app/quick/QuickView$18;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$18;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$18$1;->f:Lcom/mycompany/app/quick/QuickView$18;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickView$18$1;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$18$1;->f:Lcom/mycompany/app/quick/QuickView$18;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$18;->c:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView$18$1;->c:Ljava/util/List;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/quick/QuickAdapter;->Y(Ljava/util/List;Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean v3, v0, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 22
    .line 23
    invoke-static {v0, v3}, Lcom/mycompany/app/quick/QuickView;->c(Lcom/mycompany/app/quick/QuickView;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->v()V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->h0:Z

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 42
    .line 43
    new-instance v1, Lcom/mycompany/app/quick/QuickView$18$1$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$18$1$1;-><init>(Lcom/mycompany/app/quick/QuickView$18$1;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v2, 0xc8

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
