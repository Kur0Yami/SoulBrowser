.class Lcom/mycompany/app/quick/QuickView$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/quick/QuickView$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$16;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$16$1;->f:Lcom/mycompany/app/quick/QuickView$16;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickView$16$1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$16$1;->f:Lcom/mycompany/app/quick/QuickView$16;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$16;->c:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickView$16$1;->c:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 23
    .line 24
    sget v3, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 25
    .line 26
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/mycompany/app/quick/QuickView;->c(Lcom/mycompany/app/quick/QuickView;Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->v()V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->j0:Z

    .line 58
    .line 59
    return-void
.end method
