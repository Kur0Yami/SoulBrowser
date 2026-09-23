.class Lcom/mycompany/app/dialog/DialogPreImage$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$10;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage$10;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->q0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->h0:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$13;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$13;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void

    .line 30
    :cond_3
    sget v0, Lcom/mycompany/app/dialog/DialogPreImage;->w0:I

    .line 31
    .line 32
    return-void
.end method
