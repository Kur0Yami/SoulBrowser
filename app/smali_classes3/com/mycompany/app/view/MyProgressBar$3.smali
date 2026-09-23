.class Lcom/mycompany/app/view/MyProgressBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyProgressBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar$3;->a:Lcom/mycompany/app/view/MyProgressBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar$3;->a:Lcom/mycompany/app/view/MyProgressBar;

    .line 12
    .line 13
    iput p1, v0, Lcom/mycompany/app/view/MyProgressBar;->I:F

    .line 14
    .line 15
    iget-boolean p1, v0, Lcom/mycompany/app/view/MyProgressBar;->J:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Lcom/mycompany/app/view/MyProgressBar;->J:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, v0, Lcom/mycompany/app/view/MyProgressBar;->K:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
