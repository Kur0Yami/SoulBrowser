.class Lcom/mycompany/app/dialog/DialogAdNative$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogAdNative;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAdNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative$8;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative$8;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->f0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 9
    .line 10
    .line 11
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogAdNative;->f0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdFrame;->f:Lcom/mycompany/app/image/ImageSizeListener;

    .line 18
    .line 19
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainApp;->f(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogAdNative$8$1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogAdNative$8$1;-><init>(Lcom/mycompany/app/dialog/DialogAdNative$8;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
