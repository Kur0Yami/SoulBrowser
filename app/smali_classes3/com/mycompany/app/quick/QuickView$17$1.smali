.class Lcom/mycompany/app/quick/QuickView$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Lcom/mycompany/app/quick/QuickView$17;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$17;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$17$1;->f:Lcom/mycompany/app/quick/QuickView$17;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickView$17$1;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$17$1;->f:Lcom/mycompany/app/quick/QuickView$17;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/quick/QuickView;->c0:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/mycompany/app/quick/QuickView$17$1;->c:Ljava/util/List;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/quick/QuickAdapter;->Y(Ljava/util/List;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    iput-boolean v3, v1, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickView;->setQuickEditMode(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->A()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/quick/QuickControl;->c(II)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 59
    .line 60
    iput-boolean v4, v0, Lcom/mycompany/app/quick/QuickView;->g0:Z

    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method
