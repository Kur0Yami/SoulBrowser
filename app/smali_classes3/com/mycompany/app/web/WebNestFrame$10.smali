.class Lcom/mycompany/app/web/WebNestFrame$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebNestFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$10;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$10;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput p1, v0, Lcom/mycompany/app/web/WebNestFrame;->b0:F

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebNestFrame;->c0:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_3
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebNestFrame;->c0:Z

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestFrame;->d0:Ljava/lang/Runnable;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
