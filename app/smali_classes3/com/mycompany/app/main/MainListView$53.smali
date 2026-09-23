.class Lcom/mycompany/app/main/MainListView$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$53;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$53;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->t:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Float;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->t:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput p1, v0, Lcom/mycompany/app/main/MainListView;->v1:F

    .line 28
    .line 29
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView;->w1:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, v0, Lcom/mycompany/app/main/MainListView;->w1:Z

    .line 36
    .line 37
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->x1:Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method
