.class Lcom/mycompany/app/quick/QuickView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$6$1;->c:Lcom/mycompany/app/quick/QuickView$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$6$1;->c:Lcom/mycompany/app/quick/QuickView$6;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->P(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->v()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method
