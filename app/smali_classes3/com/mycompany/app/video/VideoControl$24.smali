.class Lcom/mycompany/app/video/VideoControl$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$24;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl$24;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/video/VideoControl;->U:I

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyAreaView;->e(II)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyAreaView;->setSkipDraw(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x4

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v2, v3

    .line 48
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
