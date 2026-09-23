.class Lcom/mycompany/app/web/WebVideoFull$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$27;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$27$1;->c:Lcom/mycompany/app/web/WebVideoFull$27;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$27$1;->c:Lcom/mycompany/app/web/WebVideoFull$27;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$27;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$27;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$27;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 23
    .line 24
    :cond_0
    return-void
.end method
