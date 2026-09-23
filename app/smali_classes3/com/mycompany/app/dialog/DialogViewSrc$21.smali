.class Lcom/mycompany/app/dialog/DialogViewSrc$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$21;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$21;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->S:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-lez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 p1, 0x8

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->q0:Ljava/lang/Runnable;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->p0:Z

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    :cond_3
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->p0:Z

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(FFI)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
