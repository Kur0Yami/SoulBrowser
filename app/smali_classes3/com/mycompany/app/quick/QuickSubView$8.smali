.class Lcom/mycompany/app/quick/QuickSubView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSubView$8;->a:Lcom/mycompany/app/quick/QuickSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickSubView$8;->a:Lcom/mycompany/app/quick/QuickSubView;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/quick/QuickSubView;->C:Z

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v1, Lcom/mycompany/app/quick/QuickSubView;->C:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    iget-object p1, v1, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p1, v1, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Lcom/mycompany/app/quick/QuickSubView$8$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickSubView$8$1;-><init>(Lcom/mycompany/app/quick/QuickSubView$8;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView$8;->a:Lcom/mycompany/app/quick/QuickSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSubView;->F:Lcom/mycompany/app/view/MyCoverView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/quick/QuickAdapter;->N(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final c(II)V
    .locals 0

    .line 1
    return-void
.end method
