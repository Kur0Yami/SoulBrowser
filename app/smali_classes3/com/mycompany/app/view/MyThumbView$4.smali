.class Lcom/mycompany/app/view/MyThumbView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyThumbView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyThumbView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView$4;->a:Lcom/mycompany/app/view/MyThumbView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView$4;->a:Lcom/mycompany/app/view/MyThumbView;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput p1, v0, Lcom/mycompany/app/view/MyThumbView;->c0:F

    .line 19
    .line 20
    iget-boolean p1, v0, Lcom/mycompany/app/view/MyThumbView;->d0:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, Lcom/mycompany/app/view/MyThumbView;->d0:Z

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, v0, Lcom/mycompany/app/view/MyThumbView;->e0:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
