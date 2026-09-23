.class Lcom/mycompany/app/view/MyRoundImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyRoundImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyRoundImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage$2;->a:Lcom/mycompany/app/view/MyRoundImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage$2;->a:Lcom/mycompany/app/view/MyRoundImage;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x4

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
