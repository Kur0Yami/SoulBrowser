.class Lcom/mycompany/app/view/MyPopupMenu$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu$11;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu$11;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->g()Landroid/view/View;

    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyPopupMenu;->c(Lcom/mycompany/app/view/MyPopupMenu;F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->g()Landroid/view/View;

    move-result-object v0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
