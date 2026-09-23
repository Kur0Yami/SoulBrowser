.class Lcom/mycompany/app/view/MyButtonImage$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyButtonImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyButtonImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage$12;->c:Lcom/mycompany/app/view/MyButtonImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage$12;->c:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

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
    iput-object v1, v0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v1, v0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->c(Lcom/mycompany/app/view/MyButtonImage;F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
