.class Lcom/mycompany/app/web/WebNestFrame$27;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$27;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$27;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

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
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput p1, v0, Lcom/mycompany/app/web/WebNestFrame;->s0:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebNestFrame;->t0:Z

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_3
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebNestFrame;->t0:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestFrame;->u0:Ljava/lang/Runnable;

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
