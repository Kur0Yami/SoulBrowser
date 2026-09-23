.class Lcom/mycompany/app/quick/QuickSubView$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/quick/QuickSubView$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView$15;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSubView$15$1;->f:Lcom/mycompany/app/quick/QuickSubView$15;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickSubView$15$1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView$15$1;->f:Lcom/mycompany/app/quick/QuickSubView$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSubView$15;->c:Lcom/mycompany/app/quick/QuickSubView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickSubView$15$1;->c:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickSubView;->G:Z

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 25
    .line 26
    sget v3, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSubView;->h()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickSubView;->G:Z

    .line 60
    .line 61
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->q()V

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_0
    return-void
.end method
