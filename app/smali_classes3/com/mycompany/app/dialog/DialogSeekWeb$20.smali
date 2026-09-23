.class Lcom/mycompany/app/dialog/DialogSeekWeb$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$20;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$20;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->s0:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->d0:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->s0:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$21;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$21;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
