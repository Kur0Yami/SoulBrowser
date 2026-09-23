.class Lcom/mycompany/app/view/MyThumbView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyThumbView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyThumbView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView$7;->c:Lcom/mycompany/app/view/MyThumbView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView$7;->c:Lcom/mycompany/app/view/MyThumbView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

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
    iput-object v1, v0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyThumbView;->x:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const v1, 0x3f4ccccd    # 0.8f

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const v1, 0x3f99999a    # 1.2f

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyThumbView;->a(Lcom/mycompany/app/view/MyThumbView;F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
