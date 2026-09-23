.class Lcom/mycompany/app/quick/QuickView$6$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView$6$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$6$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$6$2$1;->c:Lcom/mycompany/app/quick/QuickView$6$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$6$2$1;->c:Lcom/mycompany/app/quick/QuickView$6$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$6$2;->c:Lcom/mycompany/app/quick/QuickView$6;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/quick/QuickView;->L:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->v()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 41
    .line 42
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 57
    .line 58
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->i0:Z

    .line 62
    .line 63
    return-void
.end method
