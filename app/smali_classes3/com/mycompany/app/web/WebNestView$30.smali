.class Lcom/mycompany/app/web/WebNestView$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$30;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$30;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->F0:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->F0:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->E0:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    iput v1, v0, Lcom/mycompany/app/web/WebNestView;->D0:F

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->Q()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->x2:I

    .line 23
    .line 24
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebNestView;->y2:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->l(IZ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
