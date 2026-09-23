.class Lcom/mycompany/app/dialog/DialogSeekWeb$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$24;->a:Lcom/mycompany/app/dialog/DialogSeekWeb;

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
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$24;->a:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->y(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget p1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->w0:I

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->z0:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 30
    .line 31
    add-int/2addr p1, v2

    .line 32
    iput p1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->w0:I

    .line 33
    .line 34
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyScrollBar;->setPadBot(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->A1:Ljava/lang/Runnable;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->z1:Z

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :cond_4
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->z1:Z

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
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
