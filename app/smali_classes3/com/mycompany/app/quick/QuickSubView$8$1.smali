.class Lcom/mycompany/app/quick/QuickSubView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSubView$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSubView$8$1;->c:Lcom/mycompany/app/quick/QuickSubView$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView$8$1;->c:Lcom/mycompany/app/quick/QuickSubView$8;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView$8;->a:Lcom/mycompany/app/quick/QuickSubView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

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
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSubView$8;->a:Lcom/mycompany/app/quick/QuickSubView;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSubView;->G:Z

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
